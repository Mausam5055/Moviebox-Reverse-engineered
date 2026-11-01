package com.cicada.player.utils.media;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.util.Range;
import com.cicada.player.utils.Logger;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MediaCodecUtils {
    private static final String TAG = "MediaCodecUtils";
    private static List<MediaCodecInfo> allDecoders;

    public static synchronized List<MediaCodecInfo> getCodecInfos(String str, boolean z10, MediaFormat mediaFormat) {
        ArrayList arrayList;
        String codecMimeType;
        boolean z11;
        try {
            if (allDecoders == null) {
                allDecoders = getDeviceDecodecs();
            }
            arrayList = new ArrayList();
            for (MediaCodecInfo mediaCodecInfo : allDecoders) {
                if (str.equals(MimeTypes.AUDIO_E_AC3)) {
                    codecMimeType = getCodecMimeType(mediaCodecInfo, MimeTypes.AUDIO_E_AC3_JOC);
                    z11 = true;
                } else {
                    codecMimeType = null;
                    z11 = false;
                }
                if (codecMimeType == null) {
                    codecMimeType = getCodecMimeType(mediaCodecInfo, str);
                    z11 = false;
                }
                if (codecMimeType != null) {
                    MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(codecMimeType);
                    if (isSecureSupport(z10, capabilitiesForType, codecMimeType) && isFormatSupport(mediaFormat, capabilitiesForType, codecMimeType)) {
                        if (z11) {
                            arrayList.add(0, mediaCodecInfo);
                        } else {
                            arrayList.add(mediaCodecInfo);
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return arrayList;
    }

    private static String getCodecMimeType(MediaCodecInfo mediaCodecInfo, String str) {
        for (String str2 : mediaCodecInfo.getSupportedTypes()) {
            if (str2.equalsIgnoreCase(str)) {
                return str2;
            }
        }
        return null;
    }

    private static List<MediaCodecInfo> getDeviceDecodecs() {
        ArrayList arrayList = new ArrayList();
        for (MediaCodecInfo mediaCodecInfo : new MediaCodecList(1).getCodecInfos()) {
            if (!mediaCodecInfo.isEncoder()) {
                arrayList.add(mediaCodecInfo);
            }
        }
        return arrayList;
    }

    private static int getFormatInteger(MediaFormat mediaFormat, String str, int i11) {
        return mediaFormat.containsKey(str) ? mediaFormat.getInteger(str) : i11;
    }

    public static synchronized boolean isDolbyAudioSupport() {
        boolean z10;
        boolean z11;
        try {
            if (allDecoders == null) {
                allDecoders = getDeviceDecodecs();
            }
            Iterator<MediaCodecInfo> it = allDecoders.iterator();
            z10 = false;
            z11 = false;
            while (it.hasNext()) {
                for (String str : it.next().getSupportedTypes()) {
                    if (str.equals("audio/ac4")) {
                        z11 = true;
                    } else if (str.equals(MimeTypes.AUDIO_E_AC3)) {
                        z10 = true;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return z10 || z11;
    }

    private static boolean isFormatSupport(MediaFormat mediaFormat, MediaCodecInfo.CodecCapabilities codecCapabilities, String str) {
        boolean z10;
        boolean zStartsWith = str.startsWith("video");
        boolean zStartsWith2 = str.startsWith(MimeTypes.BASE_TYPE_AUDIO);
        if (!zStartsWith) {
            if (!zStartsWith2) {
                return false;
            }
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                Logger.e(TAG, "audio format not support! audioCapabilities == null");
                return false;
            }
            int formatInteger = getFormatInteger(mediaFormat, "sample-rate", -1);
            int formatInteger2 = getFormatInteger(mediaFormat, "channel-count", -1);
            boolean z11 = formatInteger == -1 || audioCapabilities.isSampleRateSupported(formatInteger);
            int maxInputChannelCount = audioCapabilities.getMaxInputChannelCount();
            z10 = z11 && (formatInteger2 == -1 || maxInputChannelCount >= formatInteger2);
            if (!z10) {
                Logger.e(TAG, "audio format not support! sampleRate=" + formatInteger + ", supportedSampleRates=" + Arrays.toString(audioCapabilities.getSupportedSampleRates()) + ", channelCount=" + formatInteger2 + ", maxInputChannelCount=" + maxInputChannelCount);
            }
            return z10;
        }
        int formatInteger3 = getFormatInteger(mediaFormat, "width", -1);
        int formatInteger4 = getFormatInteger(mediaFormat, "height", -1);
        if (formatInteger3 <= 0 || formatInteger4 <= 0) {
            return true;
        }
        int iMax = Math.max(formatInteger3, formatInteger4);
        int iMin = Math.min(formatInteger3, formatInteger4);
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            Logger.e(TAG, "video format not support! videoCapabilities == null");
            return false;
        }
        Range<Integer> supportedWidths = videoCapabilities.getSupportedWidths();
        Range<Integer> supportedHeights = videoCapabilities.getSupportedHeights();
        z10 = supportedWidths.contains(Integer.valueOf(iMax)) && supportedHeights.contains(Integer.valueOf(iMin));
        if (!z10) {
            Logger.e(TAG, "video format not support! width[" + iMax + "] not in widthRange [" + supportedWidths.getLower() + ", " + supportedWidths.getUpper() + "] or height[" + iMin + "] not in heightRange[" + supportedHeights.getLower() + ", " + supportedHeights.getUpper() + "]");
        }
        return z10;
    }

    private static boolean isSecureSupport(boolean z10, MediaCodecInfo.CodecCapabilities codecCapabilities, String str) {
        boolean zIsFeatureSupported = codecCapabilities.isFeatureSupported("secure-playback");
        boolean zIsFeatureRequired = codecCapabilities.isFeatureRequired("secure-playback");
        if (z10 || !zIsFeatureRequired) {
            return !z10 || zIsFeatureSupported;
        }
        return false;
    }
}
