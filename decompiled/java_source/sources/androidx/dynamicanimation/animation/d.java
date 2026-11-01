package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;

/* JADX INFO: loaded from: classes.dex */
public final class d extends b {
    private e A;
    private float B;
    private boolean C;

    public d(Object obj, c cVar) {
        super(obj, cVar);
        this.A = null;
        this.B = Float.MAX_VALUE;
        this.C = false;
    }

    public d(Object obj, c cVar, float f11) {
        super(obj, cVar);
        this.A = null;
        this.B = Float.MAX_VALUE;
        this.C = false;
        this.A = new e(f11);
    }

    private void p() {
        e eVar = this.A;
        if (eVar == null) {
            throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
        double dA = eVar.a();
        if (dA > this.f9013g) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (dA < this.f9014h) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
    }

    @Override // androidx.dynamicanimation.animation.b
    public void i() {
        p();
        this.A.g(d());
        super.i();
    }

    @Override // androidx.dynamicanimation.animation.b
    boolean k(long j11) {
        if (this.C) {
            float f11 = this.B;
            if (f11 != Float.MAX_VALUE) {
                this.A.e(f11);
                this.B = Float.MAX_VALUE;
            }
            this.f9008b = this.A.a();
            this.f9007a = 0.0f;
            this.C = false;
            return true;
        }
        if (this.B != Float.MAX_VALUE) {
            this.A.a();
            long j12 = j11 / 2;
            b.o oVarH = this.A.h(this.f9008b, this.f9007a, j12);
            this.A.e(this.B);
            this.B = Float.MAX_VALUE;
            b.o oVarH2 = this.A.h(oVarH.f9019a, oVarH.f9020b, j12);
            this.f9008b = oVarH2.f9019a;
            this.f9007a = oVarH2.f9020b;
        } else {
            b.o oVarH3 = this.A.h(this.f9008b, this.f9007a, j11);
            this.f9008b = oVarH3.f9019a;
            this.f9007a = oVarH3.f9020b;
        }
        float fMax = Math.max(this.f9008b, this.f9014h);
        this.f9008b = fMax;
        float fMin = Math.min(fMax, this.f9013g);
        this.f9008b = fMin;
        if (!o(fMin, this.f9007a)) {
            return false;
        }
        this.f9008b = this.A.a();
        this.f9007a = 0.0f;
        return true;
    }

    public void l(float f11) {
        if (e()) {
            this.B = f11;
            return;
        }
        if (this.A == null) {
            this.A = new e(f11);
        }
        this.A.e(f11);
        i();
    }

    public boolean m() {
        return this.A.f9023b > 0.0d;
    }

    public e n() {
        return this.A;
    }

    boolean o(float f11, float f12) {
        return this.A.c(f11, f12);
    }

    public d q(e eVar) {
        this.A = eVar;
        return this;
    }

    public void r() {
        if (!m()) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.f9012f) {
            this.C = true;
        }
    }
}
