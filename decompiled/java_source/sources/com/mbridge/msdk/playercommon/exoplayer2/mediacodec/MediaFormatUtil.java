package com.mbridge.msdk.playercommon.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaFormat;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.video.ColorInfo;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(16)
public final class MediaFormatUtil {
    private MediaFormatUtil() {
    }

    public static void maybeSetByteBuffer(MediaFormat mediaFormat, String str, @Nullable byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void maybeSetColorInfo(MediaFormat mediaFormat, @Nullable ColorInfo colorInfo) {
        if (colorInfo != null) {
            maybeSetInteger(mediaFormat, "color-transfer", colorInfo.colorTransfer);
            maybeSetInteger(mediaFormat, "color-standard", colorInfo.colorSpace);
            maybeSetInteger(mediaFormat, "color-range", colorInfo.colorRange);
            maybeSetByteBuffer(mediaFormat, "hdr-static-info", colorInfo.hdrStaticInfo);
        }
    }

    public static void maybeSetFloat(MediaFormat mediaFormat, String str, float f11) {
        if (f11 != -1.0f) {
            mediaFormat.setFloat(str, f11);
        }
    }

    public static void maybeSetInteger(MediaFormat mediaFormat, String str, int i11) {
        if (i11 != -1) {
            mediaFormat.setInteger(str, i11);
        }
    }

    public static void setCsdBuffers(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            mediaFormat.setByteBuffer("csd-" + i11, ByteBuffer.wrap(list.get(i11)));
        }
    }

    public static void setString(MediaFormat mediaFormat, String str, String str2) {
        mediaFormat.setString(str, str2);
    }
}
