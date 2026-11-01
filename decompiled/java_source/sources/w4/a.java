package w4;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.airbnb.lottie.h;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f77563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f77564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f77565c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Interpolator f77566d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Interpolator f77567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Interpolator f77568f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f77569g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Float f77570h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f77571i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f77572j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f77573k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f77574l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f77575m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f77576n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public PointF f77577o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public PointF f77578p;

    public a(h hVar, Object obj, Object obj2, Interpolator interpolator, float f11, Float f12) {
        this.f77571i = -3987645.8f;
        this.f77572j = -3987645.8f;
        this.f77573k = 784923401;
        this.f77574l = 784923401;
        this.f77575m = Float.MIN_VALUE;
        this.f77576n = Float.MIN_VALUE;
        this.f77577o = null;
        this.f77578p = null;
        this.f77563a = hVar;
        this.f77564b = obj;
        this.f77565c = obj2;
        this.f77566d = interpolator;
        this.f77567e = null;
        this.f77568f = null;
        this.f77569g = f11;
        this.f77570h = f12;
    }

    public a(h hVar, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, float f11, Float f12) {
        this.f77571i = -3987645.8f;
        this.f77572j = -3987645.8f;
        this.f77573k = 784923401;
        this.f77574l = 784923401;
        this.f77575m = Float.MIN_VALUE;
        this.f77576n = Float.MIN_VALUE;
        this.f77577o = null;
        this.f77578p = null;
        this.f77563a = hVar;
        this.f77564b = obj;
        this.f77565c = obj2;
        this.f77566d = null;
        this.f77567e = interpolator;
        this.f77568f = interpolator2;
        this.f77569g = f11;
        this.f77570h = f12;
    }

    protected a(h hVar, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f11, Float f12) {
        this.f77571i = -3987645.8f;
        this.f77572j = -3987645.8f;
        this.f77573k = 784923401;
        this.f77574l = 784923401;
        this.f77575m = Float.MIN_VALUE;
        this.f77576n = Float.MIN_VALUE;
        this.f77577o = null;
        this.f77578p = null;
        this.f77563a = hVar;
        this.f77564b = obj;
        this.f77565c = obj2;
        this.f77566d = interpolator;
        this.f77567e = interpolator2;
        this.f77568f = interpolator3;
        this.f77569g = f11;
        this.f77570h = f12;
    }

    public a(Object obj) {
        this.f77571i = -3987645.8f;
        this.f77572j = -3987645.8f;
        this.f77573k = 784923401;
        this.f77574l = 784923401;
        this.f77575m = Float.MIN_VALUE;
        this.f77576n = Float.MIN_VALUE;
        this.f77577o = null;
        this.f77578p = null;
        this.f77563a = null;
        this.f77564b = obj;
        this.f77565c = obj;
        this.f77566d = null;
        this.f77567e = null;
        this.f77568f = null;
        this.f77569g = Float.MIN_VALUE;
        this.f77570h = Float.valueOf(Float.MAX_VALUE);
    }

    private a(Object obj, Object obj2) {
        this.f77571i = -3987645.8f;
        this.f77572j = -3987645.8f;
        this.f77573k = 784923401;
        this.f77574l = 784923401;
        this.f77575m = Float.MIN_VALUE;
        this.f77576n = Float.MIN_VALUE;
        this.f77577o = null;
        this.f77578p = null;
        this.f77563a = null;
        this.f77564b = obj;
        this.f77565c = obj2;
        this.f77566d = null;
        this.f77567e = null;
        this.f77568f = null;
        this.f77569g = Float.MIN_VALUE;
        this.f77570h = Float.valueOf(Float.MAX_VALUE);
    }

    public boolean a(float f11) {
        return f11 >= f() && f11 < c();
    }

    public a b(Object obj, Object obj2) {
        return new a(obj, obj2);
    }

    public float c() {
        if (this.f77563a == null) {
            return 1.0f;
        }
        if (this.f77576n == Float.MIN_VALUE) {
            if (this.f77570h == null) {
                this.f77576n = 1.0f;
            } else {
                this.f77576n = f() + ((this.f77570h.floatValue() - this.f77569g) / this.f77563a.e());
            }
        }
        return this.f77576n;
    }

    public float d() {
        if (this.f77572j == -3987645.8f) {
            this.f77572j = ((Float) this.f77565c).floatValue();
        }
        return this.f77572j;
    }

    public int e() {
        if (this.f77574l == 784923401) {
            this.f77574l = ((Integer) this.f77565c).intValue();
        }
        return this.f77574l;
    }

    public float f() {
        h hVar = this.f77563a;
        if (hVar == null) {
            return 0.0f;
        }
        if (this.f77575m == Float.MIN_VALUE) {
            this.f77575m = (this.f77569g - hVar.p()) / this.f77563a.e();
        }
        return this.f77575m;
    }

    public float g() {
        if (this.f77571i == -3987645.8f) {
            this.f77571i = ((Float) this.f77564b).floatValue();
        }
        return this.f77571i;
    }

    public int h() {
        if (this.f77573k == 784923401) {
            this.f77573k = ((Integer) this.f77564b).intValue();
        }
        return this.f77573k;
    }

    public boolean i() {
        return this.f77566d == null && this.f77567e == null && this.f77568f == null;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f77564b + ", endValue=" + this.f77565c + ", startFrame=" + this.f77569g + ", endFrame=" + this.f77570h + ", interpolator=" + this.f77566d + '}';
    }
}
