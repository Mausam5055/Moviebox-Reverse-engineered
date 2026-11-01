package r3;

import android.text.TextUtils;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import i3.k;
import i3.r;
import i3.s;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f74084a = new j0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f74085b = new b();

    private static int d(j0 j0Var) {
        int i11 = -1;
        int iF = 0;
        while (i11 == -1) {
            iF = j0Var.f();
            String strS = j0Var.s();
            if (strS == null) {
                i11 = 0;
            } else if ("STYLE".equals(strS)) {
                i11 = 2;
            } else {
                i11 = strS.startsWith("NOTE") ? 1 : 3;
            }
        }
        j0Var.W(iF);
        return i11;
    }

    private static void e(j0 j0Var) {
        while (!TextUtils.isEmpty(j0Var.s())) {
        }
    }

    @Override // i3.s
    public void a(byte[] bArr, int i11, int i12, s.b bVar, m mVar) {
        d dVarN;
        this.f74084a.U(bArr, i12 + i11);
        this.f74084a.W(i11);
        ArrayList arrayList = new ArrayList();
        try {
            h.e(this.f74084a);
            while (!TextUtils.isEmpty(this.f74084a.s())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int iD = d(this.f74084a);
                if (iD == 0) {
                    i3.i.c(new j(arrayList2), bVar, mVar);
                    return;
                }
                if (iD == 1) {
                    e(this.f74084a);
                } else if (iD == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new IllegalArgumentException("A style block was found after the first cue.");
                    }
                    this.f74084a.s();
                    arrayList.addAll(this.f74085b.d(this.f74084a));
                } else if (iD == 3 && (dVarN = e.n(this.f74084a, arrayList)) != null) {
                    arrayList2.add(dVarN);
                }
            }
        } catch (ParserException e11) {
            throw new IllegalArgumentException(e11);
        }
    }

    @Override // i3.s
    public /* synthetic */ k b(byte[] bArr, int i11, int i12) {
        return r.a(this, bArr, i11, i12);
    }

    @Override // i3.s
    public int c() {
        return 1;
    }

    @Override // i3.s
    public /* synthetic */ void reset() {
        r.b(this);
    }
}
