package androidx.compose.ui.platform;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.graphics.z4;

/* JADX INFO: loaded from: classes.dex */
public final class w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Parcel f5869a = Parcel.obtain();

    public final void a(byte b11) {
        this.f5869a.writeByte(b11);
    }

    public final void b(float f11) {
        this.f5869a.writeFloat(f11);
    }

    public final void c(int i11) {
        this.f5869a.writeInt(i11);
    }

    public final void d(z4 z4Var) {
        m(z4Var.c());
        b(y.g.m(z4Var.d()));
        b(y.g.n(z4Var.d()));
        b(z4Var.b());
    }

    public final void e(androidx.compose.ui.text.x xVar) {
        long jG = xVar.g();
        androidx.compose.ui.graphics.u1.a aVar = androidx.compose.ui.graphics.u1.f4658b;
        if (!androidx.compose.ui.graphics.u1.m(jG, aVar.e())) {
            a((byte) 1);
            m(xVar.g());
        }
        long jK = xVar.k();
        o0.w.a aVar2 = o0.w.f70628b;
        if (!o0.w.e(jK, aVar2.a())) {
            a((byte) 2);
            j(xVar.k());
        }
        androidx.compose.ui.text.font.p pVarN = xVar.n();
        if (pVarN != null) {
            a((byte) 3);
            f(pVarN);
        }
        androidx.compose.ui.text.font.n nVarL = xVar.l();
        if (nVarL != null) {
            int i11 = nVarL.i();
            a((byte) 4);
            o(i11);
        }
        androidx.compose.ui.text.font.o oVarM = xVar.m();
        if (oVarM != null) {
            int iK = oVarM.k();
            a((byte) 5);
            l(iK);
        }
        String strJ = xVar.j();
        if (strJ != null) {
            a((byte) 6);
            i(strJ);
        }
        if (!o0.w.e(xVar.o(), aVar2.a())) {
            a((byte) 7);
            j(xVar.o());
        }
        androidx.compose.ui.text.style.a aVarE = xVar.e();
        if (aVarE != null) {
            float fH = aVarE.h();
            a((byte) 8);
            k(fH);
        }
        androidx.compose.ui.text.style.m mVarU = xVar.u();
        if (mVarU != null) {
            a((byte) 9);
            h(mVarU);
        }
        if (!androidx.compose.ui.graphics.u1.m(xVar.d(), aVar.e())) {
            a((byte) 10);
            m(xVar.d());
        }
        androidx.compose.ui.text.style.i iVarS = xVar.s();
        if (iVarS != null) {
            a((byte) 11);
            g(iVarS);
        }
        z4 z4VarR = xVar.r();
        if (z4VarR != null) {
            a((byte) 12);
            d(z4VarR);
        }
    }

    public final void f(androidx.compose.ui.text.font.p pVar) {
        c(pVar.h());
    }

    public final void g(androidx.compose.ui.text.style.i iVar) {
        c(iVar.e());
    }

    public final void h(androidx.compose.ui.text.style.m mVar) {
        b(mVar.b());
        b(mVar.c());
    }

    public final void i(String str) {
        this.f5869a.writeString(str);
    }

    public final void j(long j11) {
        long jG = o0.w.g(j11);
        o0.y.a aVar = o0.y.f70632b;
        byte b11 = 0;
        if (!o0.y.g(jG, aVar.c())) {
            if (o0.y.g(jG, aVar.b())) {
                b11 = 1;
            } else if (o0.y.g(jG, aVar.a())) {
                b11 = 2;
            }
        }
        a(b11);
        if (o0.y.g(o0.w.g(j11), aVar.c())) {
            return;
        }
        b(o0.w.h(j11));
    }

    public final void k(float f11) {
        b(f11);
    }

    public final void l(int i11) {
        androidx.compose.ui.text.font.o.a aVar = androidx.compose.ui.text.font.o.f6143b;
        byte b11 = 0;
        if (!androidx.compose.ui.text.font.o.h(i11, aVar.b())) {
            if (androidx.compose.ui.text.font.o.h(i11, aVar.a())) {
                b11 = 1;
            } else if (androidx.compose.ui.text.font.o.h(i11, aVar.d())) {
                b11 = 2;
            } else if (androidx.compose.ui.text.font.o.h(i11, aVar.c())) {
                b11 = 3;
            }
        }
        a(b11);
    }

    public final void m(long j11) {
        n(j11);
    }

    public final void n(long j11) {
        this.f5869a.writeLong(j11);
    }

    public final void o(int i11) {
        androidx.compose.ui.text.font.n.a aVar = androidx.compose.ui.text.font.n.f6139b;
        byte b11 = 0;
        if (!androidx.compose.ui.text.font.n.f(i11, aVar.b()) && androidx.compose.ui.text.font.n.f(i11, aVar.a())) {
            b11 = 1;
        }
        a(b11);
    }

    public final String p() {
        return Base64.encodeToString(this.f5869a.marshall(), 0);
    }

    public final void q() {
        this.f5869a.recycle();
        this.f5869a = Parcel.obtain();
    }
}
