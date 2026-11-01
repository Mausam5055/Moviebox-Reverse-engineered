package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements androidx.dynamicanimation.animation.a.b {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final p f8993m = new f("translationX");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final p f8994n = new g("translationY");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final p f8995o = new h("translationZ");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final p f8996p = new i("scaleX");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final p f8997q = new j("scaleY");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final p f8998r = new k("rotation");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final p f8999s = new l("rotationX");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final p f9000t = new m("rotationY");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final p f9001u = new n("x");

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final p f9002v = new a("y");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final p f9003w = new C0077b("z");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final p f9004x = new c("alpha");

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final p f9005y = new d("scrollX");

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final p f9006z = new e("scrollY");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Object f9010d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final androidx.dynamicanimation.animation.c f9011e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f9016j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f9007a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f9008b = Float.MAX_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f9009c = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f9012f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f9013g = Float.MAX_VALUE;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f9014h = -Float.MAX_VALUE;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f9015i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ArrayList f9017k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final ArrayList f9018l = new ArrayList();

    static class a extends p {
        a(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getY();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setY(f11);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.b$b, reason: collision with other inner class name */
    static class C0077b extends p {
        C0077b(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return ViewCompat.getZ(view);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            ViewCompat.setZ(view, f11);
        }
    }

    static class c extends p {
        c(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getAlpha();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setAlpha(f11);
        }
    }

    static class d extends p {
        d(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getScrollX();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setScrollX((int) f11);
        }
    }

    static class e extends p {
        e(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getScrollY();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setScrollY((int) f11);
        }
    }

    static class f extends p {
        f(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getTranslationX();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setTranslationX(f11);
        }
    }

    static class g extends p {
        g(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getTranslationY();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setTranslationY(f11);
        }
    }

    static class h extends p {
        h(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return ViewCompat.getTranslationZ(view);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            ViewCompat.setTranslationZ(view, f11);
        }
    }

    static class i extends p {
        i(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getScaleX();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setScaleX(f11);
        }
    }

    static class j extends p {
        j(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getScaleY();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setScaleY(f11);
        }
    }

    static class k extends p {
        k(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getRotation();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setRotation(f11);
        }
    }

    static class l extends p {
        l(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getRotationX();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setRotationX(f11);
        }
    }

    static class m extends p {
        m(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getRotationY();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setRotationY(f11);
        }
    }

    static class n extends p {
        n(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(View view) {
            return view.getX();
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(View view, float f11) {
            view.setX(f11);
        }
    }

    static class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f9019a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f9020b;

        o() {
        }
    }

    public static abstract class p extends androidx.dynamicanimation.animation.c {
        private p(String str) {
            super(str);
        }

        /* synthetic */ p(String str, f fVar) {
            this(str);
        }
    }

    b(Object obj, androidx.dynamicanimation.animation.c cVar) {
        this.f9010d = obj;
        this.f9011e = cVar;
        if (cVar == f8998r || cVar == f8999s || cVar == f9000t) {
            this.f9016j = 0.1f;
            return;
        }
        if (cVar == f9004x) {
            this.f9016j = 0.00390625f;
        } else if (cVar == f8996p || cVar == f8997q) {
            this.f9016j = 0.00390625f;
        } else {
            this.f9016j = 1.0f;
        }
    }

    private void b(boolean z10) {
        this.f9012f = false;
        androidx.dynamicanimation.animation.a.d().g(this);
        this.f9015i = 0L;
        this.f9009c = false;
        for (int i11 = 0; i11 < this.f9017k.size(); i11++) {
            if (this.f9017k.get(i11) != null) {
                android.support.v4.media.session.c.a(this.f9017k.get(i11));
                throw null;
            }
        }
        f(this.f9017k);
    }

    private float c() {
        return this.f9011e.a(this.f9010d);
    }

    private static void f(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    private void j() {
        if (this.f9012f) {
            return;
        }
        this.f9012f = true;
        if (!this.f9009c) {
            this.f9008b = c();
        }
        float f11 = this.f9008b;
        if (f11 > this.f9013g || f11 < this.f9014h) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        androidx.dynamicanimation.animation.a.d().a(this, 0L);
    }

    @Override // androidx.dynamicanimation.animation.a.b
    public boolean a(long j11) {
        long j12 = this.f9015i;
        if (j12 == 0) {
            this.f9015i = j11;
            g(this.f9008b);
            return false;
        }
        this.f9015i = j11;
        boolean zK = k(j11 - j12);
        float fMin = Math.min(this.f9008b, this.f9013g);
        this.f9008b = fMin;
        float fMax = Math.max(fMin, this.f9014h);
        this.f9008b = fMax;
        g(fMax);
        if (zK) {
            b(false);
        }
        return zK;
    }

    float d() {
        return this.f9016j * 0.75f;
    }

    public boolean e() {
        return this.f9012f;
    }

    void g(float f11) {
        this.f9011e.b(this.f9010d, f11);
        for (int i11 = 0; i11 < this.f9018l.size(); i11++) {
            if (this.f9018l.get(i11) != null) {
                android.support.v4.media.session.c.a(this.f9018l.get(i11));
                throw null;
            }
        }
        f(this.f9018l);
    }

    public b h(float f11) {
        this.f9008b = f11;
        this.f9009c = true;
        return this;
    }

    public void i() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.f9012f) {
            return;
        }
        j();
    }

    abstract boolean k(long j11);
}
