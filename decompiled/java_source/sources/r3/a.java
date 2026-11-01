package r3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i3.k;
import i3.r;
import i3.s;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j0 f74035a = new j0();

    private static u1.a d(j0 j0Var, int i11) {
        CharSequence charSequenceR = null;
        u1.a.b bVarP = null;
        while (i11 > 0) {
            androidx.media3.common.util.a.b(i11 >= 8, "Incomplete vtt cue box header found.");
            int iQ = j0Var.q();
            int iQ2 = j0Var.q();
            int i12 = iQ - 8;
            String strI = a1.I(j0Var.e(), j0Var.f(), i12);
            j0Var.X(i12);
            i11 = (i11 - 8) - i12;
            if (iQ2 == 1937011815) {
                bVarP = e.p(strI);
            } else if (iQ2 == 1885436268) {
                charSequenceR = e.r(null, strI.trim(), Collections.emptyList());
            }
        }
        if (charSequenceR == null) {
            charSequenceR = "";
        }
        return bVarP != null ? bVarP.o(charSequenceR).a() : e.m(charSequenceR);
    }

    @Override // i3.s
    public void a(byte[] bArr, int i11, int i12, s.b bVar, m mVar) {
        this.f74035a.U(bArr, i12 + i11);
        this.f74035a.W(i11);
        ArrayList arrayList = new ArrayList();
        while (this.f74035a.a() > 0) {
            androidx.media3.common.util.a.b(this.f74035a.a() >= 8, "Incomplete Mp4Webvtt Top Level box header found.");
            int iQ = this.f74035a.q();
            if (this.f74035a.q() == 1987343459) {
                arrayList.add(d(this.f74035a, iQ - 8));
            } else {
                this.f74035a.X(iQ - 8);
            }
        }
        mVar.accept(new i3.e(arrayList, C.TIME_UNSET, C.TIME_UNSET));
    }

    @Override // i3.s
    public /* synthetic */ k b(byte[] bArr, int i11, int i12) {
        return r.a(this, bArr, i11, i12);
    }

    @Override // i3.s
    public int c() {
        return 2;
    }

    @Override // i3.s
    public /* synthetic */ void reset() {
        r.b(this);
    }
}
