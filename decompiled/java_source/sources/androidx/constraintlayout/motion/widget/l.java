package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
class l implements Comparable {
    static String[] D = {RequestParameters.POSITION, "x", "y", "width", "height", "pathRotate"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f7352c;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private androidx.constraintlayout.core.motion.utils.c f7365p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f7367r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f7368s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f7369t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f7370u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f7371v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f7350a = 1.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f7351b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7353d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f7354e = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f7355f = 0.0f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f7356g = 0.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f7357h = 0.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f7358i = 1.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f7359j = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f7360k = Float.NaN;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f7361l = Float.NaN;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f7362m = 0.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f7363n = 0.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f7364o = 0.0f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f7366q = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f7372w = Float.NaN;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f7373x = Float.NaN;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f7374y = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    LinkedHashMap f7375z = new LinkedHashMap();
    int A = 0;
    double[] B = new double[18];
    double[] C = new double[18];

    private boolean f(float f11, float f12) {
        if (Float.isNaN(f11) || Float.isNaN(f12)) {
            return Float.isNaN(f11) != Float.isNaN(f12);
        }
        return Math.abs(f11 - f12) > 1.0E-6f;
    }

    public void a(HashMap map, int i11) {
        for (String str : map.keySet()) {
            v0.d dVar = (v0.d) map.get(str);
            str.hashCode();
            switch (str) {
                case "rotationX":
                    dVar.c(i11, Float.isNaN(this.f7356g) ? 0.0f : this.f7356g);
                    break;
                case "rotationY":
                    dVar.c(i11, Float.isNaN(this.f7357h) ? 0.0f : this.f7357h);
                    break;
                case "translationX":
                    dVar.c(i11, Float.isNaN(this.f7362m) ? 0.0f : this.f7362m);
                    break;
                case "translationY":
                    dVar.c(i11, Float.isNaN(this.f7363n) ? 0.0f : this.f7363n);
                    break;
                case "translationZ":
                    dVar.c(i11, Float.isNaN(this.f7364o) ? 0.0f : this.f7364o);
                    break;
                case "progress":
                    dVar.c(i11, Float.isNaN(this.f7373x) ? 0.0f : this.f7373x);
                    break;
                case "scaleX":
                    dVar.c(i11, Float.isNaN(this.f7358i) ? 1.0f : this.f7358i);
                    break;
                case "scaleY":
                    dVar.c(i11, Float.isNaN(this.f7359j) ? 1.0f : this.f7359j);
                    break;
                case "transformPivotX":
                    dVar.c(i11, Float.isNaN(this.f7360k) ? 0.0f : this.f7360k);
                    break;
                case "transformPivotY":
                    dVar.c(i11, Float.isNaN(this.f7361l) ? 0.0f : this.f7361l);
                    break;
                case "rotation":
                    dVar.c(i11, Float.isNaN(this.f7355f) ? 0.0f : this.f7355f);
                    break;
                case "elevation":
                    dVar.c(i11, Float.isNaN(this.f7354e) ? 0.0f : this.f7354e);
                    break;
                case "transitionPathRotate":
                    dVar.c(i11, Float.isNaN(this.f7372w) ? 0.0f : this.f7372w);
                    break;
                case "alpha":
                    dVar.c(i11, Float.isNaN(this.f7350a) ? 1.0f : this.f7350a);
                    break;
                default:
                    if (!str.startsWith("CUSTOM")) {
                        Log.e("MotionPaths", "UNKNOWN spline " + str);
                        break;
                    } else {
                        String str2 = str.split(",")[1];
                        if (this.f7375z.containsKey(str2)) {
                            ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f7375z.get(str2);
                            if (dVar instanceof v0.d.b) {
                                ((v0.d.b) dVar).i(i11, constraintAttribute);
                            } else {
                                Log.e("MotionPaths", str + " ViewSpline not a CustomSet frame = " + i11 + ", value" + constraintAttribute.e() + dVar);
                            }
                        }
                        break;
                    }
                    break;
            }
        }
    }

    public void b(View view) {
        this.f7352c = view.getVisibility();
        this.f7350a = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.f7353d = false;
        this.f7354e = view.getElevation();
        this.f7355f = view.getRotation();
        this.f7356g = view.getRotationX();
        this.f7357h = view.getRotationY();
        this.f7358i = view.getScaleX();
        this.f7359j = view.getScaleY();
        this.f7360k = view.getPivotX();
        this.f7361l = view.getPivotY();
        this.f7362m = view.getTranslationX();
        this.f7363n = view.getTranslationY();
        this.f7364o = view.getTranslationZ();
    }

    public void d(androidx.constraintlayout.widget.b.a aVar) {
        androidx.constraintlayout.widget.b.d dVar = aVar.f7765c;
        int i11 = dVar.f7844c;
        this.f7351b = i11;
        int i12 = dVar.f7843b;
        this.f7352c = i12;
        this.f7350a = (i12 == 0 || i11 != 0) ? dVar.f7845d : 0.0f;
        androidx.constraintlayout.widget.b.e eVar = aVar.f7768f;
        this.f7353d = eVar.f7860m;
        this.f7354e = eVar.f7861n;
        this.f7355f = eVar.f7849b;
        this.f7356g = eVar.f7850c;
        this.f7357h = eVar.f7851d;
        this.f7358i = eVar.f7852e;
        this.f7359j = eVar.f7853f;
        this.f7360k = eVar.f7854g;
        this.f7361l = eVar.f7855h;
        this.f7362m = eVar.f7857j;
        this.f7363n = eVar.f7858k;
        this.f7364o = eVar.f7859l;
        this.f7365p = androidx.constraintlayout.core.motion.utils.c.c(aVar.f7766d.f7831d);
        androidx.constraintlayout.widget.b.c cVar = aVar.f7766d;
        this.f7372w = cVar.f7836i;
        this.f7366q = cVar.f7833f;
        this.f7374y = cVar.f7829b;
        this.f7373x = aVar.f7765c.f7846e;
        for (String str : aVar.f7769g.keySet()) {
            ConstraintAttribute constraintAttribute = (ConstraintAttribute) aVar.f7769g.get(str);
            if (constraintAttribute.g()) {
                this.f7375z.put(str, constraintAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public int compareTo(l lVar) {
        return Float.compare(this.f7367r, lVar.f7367r);
    }

    void g(l lVar, HashSet hashSet) {
        if (f(this.f7350a, lVar.f7350a)) {
            hashSet.add("alpha");
        }
        if (f(this.f7354e, lVar.f7354e)) {
            hashSet.add("elevation");
        }
        int i11 = this.f7352c;
        int i12 = lVar.f7352c;
        if (i11 != i12 && this.f7351b == 0 && (i11 == 0 || i12 == 0)) {
            hashSet.add("alpha");
        }
        if (f(this.f7355f, lVar.f7355f)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f7372w) || !Float.isNaN(lVar.f7372w)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f7373x) || !Float.isNaN(lVar.f7373x)) {
            hashSet.add(NotificationCompat.CATEGORY_PROGRESS);
        }
        if (f(this.f7356g, lVar.f7356g)) {
            hashSet.add("rotationX");
        }
        if (f(this.f7357h, lVar.f7357h)) {
            hashSet.add("rotationY");
        }
        if (f(this.f7360k, lVar.f7360k)) {
            hashSet.add("transformPivotX");
        }
        if (f(this.f7361l, lVar.f7361l)) {
            hashSet.add("transformPivotY");
        }
        if (f(this.f7358i, lVar.f7358i)) {
            hashSet.add("scaleX");
        }
        if (f(this.f7359j, lVar.f7359j)) {
            hashSet.add("scaleY");
        }
        if (f(this.f7362m, lVar.f7362m)) {
            hashSet.add("translationX");
        }
        if (f(this.f7363n, lVar.f7363n)) {
            hashSet.add("translationY");
        }
        if (f(this.f7364o, lVar.f7364o)) {
            hashSet.add("translationZ");
        }
    }

    void h(float f11, float f12, float f13, float f14) {
        this.f7368s = f11;
        this.f7369t = f12;
        this.f7370u = f13;
        this.f7371v = f14;
    }

    public void i(Rect rect, View view, int i11, float f11) {
        h(rect.left, rect.top, rect.width(), rect.height());
        b(view);
        this.f7360k = Float.NaN;
        this.f7361l = Float.NaN;
        if (i11 == 1) {
            this.f7355f = f11 - 90.0f;
        } else {
            if (i11 != 2) {
                return;
            }
            this.f7355f = f11 + 90.0f;
        }
    }

    public void j(Rect rect, androidx.constraintlayout.widget.b bVar, int i11, int i12) {
        h(rect.left, rect.top, rect.width(), rect.height());
        d(bVar.D(i12));
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        return;
                    }
                }
            }
            float f11 = this.f7355f + 90.0f;
            this.f7355f = f11;
            if (f11 > 180.0f) {
                this.f7355f = f11 - 360.0f;
                return;
            }
            return;
        }
        this.f7355f -= 90.0f;
    }

    public void k(View view) {
        h(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        b(view);
    }
}
