package v2;

import androidx.media3.common.util.i0;
import androidx.media3.common.x;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import u2.c;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends c {
    private static x c(i0 i0Var) {
        i0Var.r(12);
        int iD = (i0Var.d() + i0Var.h(12)) - 4;
        i0Var.r(44);
        i0Var.s(i0Var.h(12));
        i0Var.r(16);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strL = null;
            if (i0Var.d() >= iD) {
                break;
            }
            i0Var.r(48);
            int iH = i0Var.h(8);
            i0Var.r(4);
            int iD2 = i0Var.d() + i0Var.h(12);
            String strL2 = null;
            while (i0Var.d() < iD2) {
                int iH2 = i0Var.h(8);
                int iH3 = i0Var.h(8);
                int iD3 = i0Var.d() + iH3;
                if (iH2 == 2) {
                    int iH4 = i0Var.h(16);
                    i0Var.r(8);
                    if (iH4 == 3) {
                        while (i0Var.d() < iD3) {
                            strL = i0Var.l(i0Var.h(8), StandardCharsets.US_ASCII);
                            int iH5 = i0Var.h(8);
                            for (int i11 = 0; i11 < iH5; i11++) {
                                i0Var.s(i0Var.h(8));
                            }
                        }
                    }
                } else if (iH2 == 21) {
                    strL2 = i0Var.l(iH3, StandardCharsets.US_ASCII);
                }
                i0Var.p(iD3 * 8);
            }
            i0Var.p(iD2 * 8);
            if (strL != null && strL2 != null) {
                arrayList.add(new a(iH, strL + strL2));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new x(arrayList);
    }

    @Override // u2.c
    protected x b(u2.b bVar, ByteBuffer byteBuffer) {
        if (byteBuffer.get() == 116) {
            return c(new i0(byteBuffer.array(), byteBuffer.limit()));
        }
        return null;
    }
}
