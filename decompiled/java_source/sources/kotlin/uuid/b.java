package kotlin.uuid;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.HexExtensionsKt;

/* JADX INFO: loaded from: classes7.dex */
class b extends a {
    public static final void d(long j11, byte[] dst, int i11, int i12, int i13) {
        Intrinsics.h(dst, "dst");
        int i14 = 7 - i12;
        int i15 = 8 - i13;
        if (i15 > i14) {
            return;
        }
        while (true) {
            int i16 = HexExtensionsKt.a()[(int) ((j11 >> (i14 << 3)) & 255)];
            int i17 = i11 + 1;
            dst[i11] = (byte) (i16 >> 8);
            i11 += 2;
            dst[i17] = (byte) i16;
            if (i14 == i15) {
                return;
            } else {
                i14--;
            }
        }
    }

    public static final void e(byte[] bArr, int i11, long j11) {
        Intrinsics.h(bArr, "<this>");
        int i12 = 7;
        while (-1 < i12) {
            bArr[i11] = (byte) (j11 >> (i12 << 3));
            i12--;
            i11++;
        }
    }
}
