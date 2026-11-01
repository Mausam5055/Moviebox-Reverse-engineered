package v0;

import androidx.constraintlayout.core.motion.utils.j;
import androidx.constraintlayout.core.motion.utils.l;
import androidx.constraintlayout.core.motion.utils.m;
import androidx.constraintlayout.motion.widget.n;

/* JADX INFO: loaded from: classes2.dex */
public class b extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f76968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f76969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private l f76970c;

    public b() {
        m mVar = new m();
        this.f76968a = mVar;
        this.f76970c = mVar;
    }

    @Override // androidx.constraintlayout.motion.widget.n
    public float a() {
        return this.f76970c.a();
    }

    public void b(float f11, float f12, float f13, float f14, float f15, float f16) {
        m mVar = this.f76968a;
        this.f76970c = mVar;
        mVar.c(f11, f12, f13, f14, f15, f16);
    }

    public boolean c() {
        return this.f76970c.isStopped();
    }

    public void d(float f11, float f12, float f13, float f14, float f15, float f16, float f17, int i11) {
        if (this.f76969b == null) {
            this.f76969b = new j();
        }
        j jVar = this.f76969b;
        this.f76970c = jVar;
        jVar.c(f11, f12, f13, f14, f15, f16, f17, i11);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f11) {
        return this.f76970c.getInterpolation(f11);
    }
}
