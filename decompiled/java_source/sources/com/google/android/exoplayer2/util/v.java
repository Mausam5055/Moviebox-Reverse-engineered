package com.google.android.exoplayer2.util;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class v {
    public static void a(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void b(MediaFormat mediaFormat, com.google.android.exoplayer2.video.c cVar) {
        if (cVar != null) {
            d(mediaFormat, "color-transfer", cVar.f27828c);
            d(mediaFormat, "color-standard", cVar.f27826a);
            d(mediaFormat, "color-range", cVar.f27827b);
            a(mediaFormat, "hdr-static-info", cVar.f27829d);
        }
    }

    public static void c(MediaFormat mediaFormat, String str, float f11) {
        if (f11 != -1.0f) {
            mediaFormat.setFloat(str, f11);
        }
    }

    public static void d(MediaFormat mediaFormat, String str, int i11) {
        if (i11 != -1) {
            mediaFormat.setInteger(str, i11);
        }
    }

    public static void e(MediaFormat mediaFormat, List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            mediaFormat.setByteBuffer("csd-" + i11, ByteBuffer.wrap((byte[]) list.get(i11)));
        }
    }
}
