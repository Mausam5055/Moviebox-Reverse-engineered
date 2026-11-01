package p4;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PointF f72282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PointF f72283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PointF f72284c;

    public a() {
        this.f72282a = new PointF();
        this.f72283b = new PointF();
        this.f72284c = new PointF();
    }

    public a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f72282a = pointF;
        this.f72283b = pointF2;
        this.f72284c = pointF3;
    }

    public PointF a() {
        return this.f72282a;
    }

    public PointF b() {
        return this.f72283b;
    }

    public PointF c() {
        return this.f72284c;
    }

    public void d(float f11, float f12) {
        this.f72282a.set(f11, f12);
    }

    public void e(float f11, float f12) {
        this.f72283b.set(f11, f12);
    }

    public void f(float f11, float f12) {
        this.f72284c.set(f11, f12);
    }

    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.f72284c.x), Float.valueOf(this.f72284c.y), Float.valueOf(this.f72282a.x), Float.valueOf(this.f72282a.y), Float.valueOf(this.f72283b.x), Float.valueOf(this.f72283b.y));
    }
}
