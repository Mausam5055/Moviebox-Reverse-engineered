package com.mbridge.msdk.playercommon.exoplayer2.extractor;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes5.dex */
public final class MpegAudioHeader {
    public static final int MAX_FRAME_SIZE_BYTES = 4096;
    public int bitrate;
    public int channels;
    public int frameSize;
    public String mimeType;
    public int sampleRate;
    public int samplesPerFrame;
    public int version;
    private static final String[] MIME_TYPE_BY_LAYER = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};
    private static final int[] SAMPLING_RATE_V1 = {RecorderConstants.RECORD_SAMPLE_RATE_44100, 48000, 32000};
    private static final int[] BITRATE_V1_L1 = {32, 64, 96, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, 288, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 352, 384, TTAdConstant.PACKAGE_NAME_CODE, 448};
    private static final int[] BITRATE_V2_L1 = {32, 48, 56, 64, 80, 96, 112, 128, 144, 160, 176, PsExtractor.AUDIO_STREAM, 224, 256};
    private static final int[] BITRATE_V1_L2 = {32, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 384};
    private static final int[] BITRATE_V1_L3 = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE};
    private static final int[] BITRATE_V2 = {8, 16, 24, 32, 40, 48, 56, 64, 80, 96, 112, 128, 144, 160};

    public static int getFrameSize(int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        if ((i11 & (-2097152)) != -2097152 || (i12 = (i11 >>> 19) & 3) == 1 || (i13 = (i11 >>> 17) & 3) == 0 || (i14 = (i11 >>> 12) & 15) == 0 || i14 == 15 || (i15 = (i11 >>> 10) & 3) == 3) {
            return -1;
        }
        int i17 = SAMPLING_RATE_V1[i15];
        if (i12 == 2) {
            i17 /= 2;
        } else if (i12 == 0) {
            i17 /= 4;
        }
        int i18 = (i11 >>> 9) & 1;
        if (i13 == 3) {
            return ((((i12 == 3 ? BITRATE_V1_L1[i14 - 1] : BITRATE_V2_L1[i14 - 1]) * 12000) / i17) + i18) * 4;
        }
        if (i12 == 3) {
            i16 = i13 == 2 ? BITRATE_V1_L2[i14 - 1] : BITRATE_V1_L3[i14 - 1];
        } else {
            i16 = BITRATE_V2[i14 - 1];
        }
        if (i12 == 3) {
            return ((i16 * 144000) / i17) + i18;
        }
        return (((i13 == 1 ? DefaultOggSeeker.MATCH_RANGE : 144000) * i16) / i17) + i18;
    }

    public static boolean populateHeader(int i11, MpegAudioHeader mpegAudioHeader) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        if ((i11 & (-2097152)) != -2097152 || (i12 = (i11 >>> 19) & 3) == 1 || (i13 = (i11 >>> 17) & 3) == 0 || (i14 = (i11 >>> 12) & 15) == 0 || i14 == 15 || (i15 = (i11 >>> 10) & 3) == 3) {
            return false;
        }
        int i20 = SAMPLING_RATE_V1[i15];
        if (i12 == 2) {
            i20 /= 2;
        } else if (i12 == 0) {
            i20 /= 4;
        }
        int i21 = i20;
        int i22 = (i11 >>> 9) & 1;
        if (i13 == 3) {
            i16 = i12 == 3 ? BITRATE_V1_L1[i14 - 1] : BITRATE_V2_L1[i14 - 1];
            i18 = (((i16 * 12000) / i21) + i22) * 4;
            i19 = 384;
        } else {
            int i23 = 1152;
            if (i12 == 3) {
                i16 = i13 == 2 ? BITRATE_V1_L2[i14 - 1] : BITRATE_V1_L3[i14 - 1];
                i17 = (144000 * i16) / i21;
            } else {
                i16 = BITRATE_V2[i14 - 1];
                i23 = i13 == 1 ? 576 : 1152;
                i17 = ((i13 == 1 ? DefaultOggSeeker.MATCH_RANGE : 144000) * i16) / i21;
            }
            i18 = i17 + i22;
            i19 = i23;
        }
        mpegAudioHeader.setValues(i12, MIME_TYPE_BY_LAYER[3 - i13], i18, i21, ((i11 >> 6) & 3) == 3 ? 1 : 2, i16 * 1000, i19);
        return true;
    }

    private void setValues(int i11, String str, int i12, int i13, int i14, int i15, int i16) {
        this.version = i11;
        this.mimeType = str;
        this.frameSize = i12;
        this.sampleRate = i13;
        this.channels = i14;
        this.bitrate = i15;
        this.samplesPerFrame = i16;
    }
}
