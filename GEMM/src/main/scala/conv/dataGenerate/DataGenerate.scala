package conv.dataGenerate

import conv.compute.CONV_STATE
import spinal.core._
import spinal.lib.{master, slave}


case class DataGenerateConfig(DATA_WIDTH: Int, CHANNEL_WIDTH: Int, COMPUTE_CHANNEL_NUM: Int, FEATURE_WIDTH: Int, KERNEL_NUM: Int, FEATURE_RAM_DEPTH: Int, ZERO_NUM: Int) {
    val STREAM_DATA_WIDTH = DATA_WIDTH * COMPUTE_CHANNEL_NUM
    val paddingConfig = PaddingConfig(DATA_WIDTH, CHANNEL_WIDTH, COMPUTE_CHANNEL_NUM, FEATURE_WIDTH, ZERO_NUM)
    val featureGenerateConfig = FeatureGenerateConfig(DATA_WIDTH, CHANNEL_WIDTH, COMPUTE_CHANNEL_NUM, FEATURE_WIDTH, KERNEL_NUM, FEATURE_RAM_DEPTH)
}

class DataGenerate(dataGenerateConfig: DataGenerateConfig) extends Component {
    val io = new Bundle {
        val sData = slave Stream (UInt(dataGenerateConfig.STREAM_DATA_WIDTH bits))
        val start = in Bool()
        val enPadding = in Bool()
        val channelIn = in UInt (dataGenerateConfig.CHANNEL_WIDTH bits)
        val rowNumIn = in UInt (dataGenerateConfig.FEATURE_WIDTH bits)
        val colNumIn = in UInt (dataGenerateConfig.FEATURE_WIDTH bits)
        val zeroDara = in Bits (dataGenerateConfig.DATA_WIDTH bits)
        val zeroNum = in UInt (dataGenerateConfig.paddingConfig.ZERO_NUM_WIDTH bits)
        //        val mData = master(FeaturePort(dataGenerateConfig.STREAM_DATA_WIDTH, dataGenerateConfig.KERNEL_NUM))
        val mData = GenerateMatrixPort(dataGenerateConfig.featureGenerateConfig.STREAM_DATA_WIDTH, dataGenerateConfig.featureGenerateConfig.KERNEL_NUM)
        val convType = in Bits (2 bits)
        //        val last = out Bool()
    }
    noIoPrefix()
    val padding = new Padding(dataGenerateConfig.paddingConfig)
    padding.io.enPadding <> io.enPadding
    padding.io.channelIn <> io.channelIn
    padding.io.rowNumIn <> io.rowNumIn
    padding.io.colNumIn <> io.colNumIn
    padding.io.zeroNum <> io.zeroNum
    padding.io.zeroDara <> io.zeroDara
    val featureGenerate = new FeatureGenerate(dataGenerateConfig.featureGenerateConfig)



    switch(io.convType) {
        is(CONV_STATE.CONV33) {
            padding.io.sData <> io.sData
            padding.io.start <> io.start
            featureGenerate.io.mData <> io.mData
        }
        default {
            padding.io.start <> False
            padding.io.sData.valid := False
            padding.io.sData.payload := 0
            featureGenerate.io.mData.ready := False

            io.mData.mData.foreach(i => {
                i.valid := False
                i.payload := 0
            })
            io.sData.ready := False
        }
    }

    padding >> featureGenerate
    //    featureGenerate.io.last <> io.last
}

object DataGenerate {
    def main(args: Array[String]): Unit = {
        SpinalConfig(
        ).generateVerilog(new DataGenerate(DataGenerateConfig(8, 12, 8, 10, 9, 11, 1)))
    }
}
