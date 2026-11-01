package androidx.media3.common.util;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class x {
    public static void a(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void b(MediaFormat mediaFormat, androidx.media3.common.i iVar) {
        if (iVar != null) {
            d(mediaFormat, "color-transfer", iVar.f10073c);
            d(mediaFormat, "color-standard", iVar.f10071a);
            d(mediaFormat, "color-range", iVar.f10072b);
            a(mediaFormat, "hdr-static-info", iVar.f10074d);
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
