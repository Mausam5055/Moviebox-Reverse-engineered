package ab;

import android.graphics.Outline;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes4.dex */
class s extends r {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f602f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f603g = 0.0f;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            s sVar = s.this;
            if (sVar.f599c == null || sVar.f600d.isEmpty()) {
                return;
            }
            s sVar2 = s.this;
            RectF rectF = sVar2.f600d;
            outline.setRoundRect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom, sVar2.f603g);
        }
    }

    s(View view) {
        n(view);
    }

    private float m() {
        RectF rectF;
        n nVar = this.f599c;
        if (nVar == null || (rectF = this.f600d) == null) {
            return 0.0f;
        }
        return nVar.f532f.a(rectF);
    }

    private void n(View view) {
        view.setOutlineProvider(new a());
    }

    private boolean o() {
        n nVar;
        if (this.f600d.isEmpty() || (nVar = this.f599c) == null) {
            return false;
        }
        return nVar.u(this.f600d);
    }

    private boolean p() {
        n nVar;
        if (!this.f600d.isEmpty() && (nVar = this.f599c) != null && this.f598b && !nVar.u(this.f600d) && q(this.f599c)) {
            float fA = this.f599c.r().a(this.f600d);
            float fA2 = this.f599c.t().a(this.f600d);
            float fA3 = this.f599c.j().a(this.f600d);
            float fA4 = this.f599c.l().a(this.f600d);
            if (fA == 0.0f && fA3 == 0.0f && fA2 == fA4) {
                RectF rectF = this.f600d;
                rectF.set(rectF.left - fA2, rectF.top, rectF.right, rectF.bottom);
                this.f603g = fA2;
                return true;
            }
            if (fA == 0.0f && fA2 == 0.0f && fA3 == fA4) {
                RectF rectF2 = this.f600d;
                rectF2.set(rectF2.left, rectF2.top - fA3, rectF2.right, rectF2.bottom);
                this.f603g = fA3;
                return true;
            }
            if (fA2 == 0.0f && fA4 == 0.0f && fA == fA3) {
                RectF rectF3 = this.f600d;
                rectF3.set(rectF3.left, rectF3.top, rectF3.right + fA, rectF3.bottom);
                this.f603g = fA;
                return true;
            }
            if (fA3 == 0.0f && fA4 == 0.0f && fA == fA2) {
                RectF rectF4 = this.f600d;
                rectF4.set(rectF4.left, rectF4.top, rectF4.right, rectF4.bottom + fA);
                this.f603g = fA;
                return true;
            }
        }
        return false;
    }

    private static boolean q(n nVar) {
        return (nVar.q() instanceof m) && (nVar.s() instanceof m) && (nVar.i() instanceof m) && (nVar.k() instanceof m);
    }

    @Override // ab.r
    void b(View view) {
        this.f603g = m();
        this.f602f = o() || p();
        view.setClipToOutline(!j());
        if (j()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override // ab.r
    boolean j() {
        return !this.f602f || this.f597a;
    }
}
