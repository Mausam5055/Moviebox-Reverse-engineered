package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public class DrawableContainerCompat extends Drawable implements Drawable.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f1191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Rect f1192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Drawable f1193c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Drawable f1194d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1196f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1198h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Runnable f1199i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f1200j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f1201k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private b f1202l;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1195e = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1197g = -1;

    private static class a {
        public static boolean a(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        public static void b(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        public static Resources c(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    static class b implements Drawable.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Drawable.Callback f1203a;

        b() {
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f1203a;
            this.f1203a = null;
            return callback;
        }

        public b b(Drawable.Callback callback) {
            this.f1203a = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j11) {
            Drawable.Callback callback = this.f1203a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j11);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f1203a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    static abstract class c extends Drawable.ConstantState {
        int A;
        int B;
        boolean C;
        ColorFilter D;
        boolean E;
        ColorStateList F;
        PorterDuff.Mode G;
        boolean H;
        boolean I;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final DrawableContainerCompat f1204a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Resources f1205b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1206c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1207d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1208e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SparseArray f1209f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        Drawable[] f1210g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f1211h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f1212i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f1213j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        Rect f1214k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        boolean f1215l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        boolean f1216m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        int f1217n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        int f1218o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        int f1219p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f1220q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f1221r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f1222s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        boolean f1223t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        boolean f1224u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        boolean f1225v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        boolean f1226w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        boolean f1227x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        boolean f1228y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        int f1229z;

        c(c cVar, DrawableContainerCompat drawableContainerCompat, Resources resources) {
            this.f1212i = false;
            this.f1215l = false;
            this.f1227x = true;
            this.A = 0;
            this.B = 0;
            this.f1204a = drawableContainerCompat;
            this.f1205b = resources != null ? resources : cVar != null ? cVar.f1205b : null;
            int iF = DrawableContainerCompat.f(resources, cVar != null ? cVar.f1206c : 0);
            this.f1206c = iF;
            if (cVar == null) {
                this.f1210g = new Drawable[10];
                this.f1211h = 0;
                return;
            }
            this.f1207d = cVar.f1207d;
            this.f1208e = cVar.f1208e;
            this.f1225v = true;
            this.f1226w = true;
            this.f1212i = cVar.f1212i;
            this.f1215l = cVar.f1215l;
            this.f1227x = cVar.f1227x;
            this.f1228y = cVar.f1228y;
            this.f1229z = cVar.f1229z;
            this.A = cVar.A;
            this.B = cVar.B;
            this.C = cVar.C;
            this.D = cVar.D;
            this.E = cVar.E;
            this.F = cVar.F;
            this.G = cVar.G;
            this.H = cVar.H;
            this.I = cVar.I;
            if (cVar.f1206c == iF) {
                if (cVar.f1213j) {
                    this.f1214k = cVar.f1214k != null ? new Rect(cVar.f1214k) : null;
                    this.f1213j = true;
                }
                if (cVar.f1216m) {
                    this.f1217n = cVar.f1217n;
                    this.f1218o = cVar.f1218o;
                    this.f1219p = cVar.f1219p;
                    this.f1220q = cVar.f1220q;
                    this.f1216m = true;
                }
            }
            if (cVar.f1221r) {
                this.f1222s = cVar.f1222s;
                this.f1221r = true;
            }
            if (cVar.f1223t) {
                this.f1224u = cVar.f1224u;
                this.f1223t = true;
            }
            Drawable[] drawableArr = cVar.f1210g;
            this.f1210g = new Drawable[drawableArr.length];
            this.f1211h = cVar.f1211h;
            SparseArray sparseArray = cVar.f1209f;
            if (sparseArray != null) {
                this.f1209f = sparseArray.clone();
            } else {
                this.f1209f = new SparseArray(this.f1211h);
            }
            int i11 = this.f1211h;
            for (int i12 = 0; i12 < i11; i12++) {
                Drawable drawable = drawableArr[i12];
                if (drawable != null) {
                    Drawable.ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        this.f1209f.put(i12, constantState);
                    } else {
                        this.f1210g[i12] = drawableArr[i12];
                    }
                }
            }
        }

        private void e() {
            SparseArray sparseArray = this.f1209f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i11 = 0; i11 < size; i11++) {
                    this.f1210g[this.f1209f.keyAt(i11)] = t(((Drawable.ConstantState) this.f1209f.valueAt(i11)).newDrawable(this.f1205b));
                }
                this.f1209f = null;
            }
        }

        private Drawable t(Drawable drawable) {
            a1.a.m(drawable, this.f1229z);
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setCallback(this.f1204a);
            return drawableMutate;
        }

        public final int a(Drawable drawable) {
            int i11 = this.f1211h;
            if (i11 >= this.f1210g.length) {
                o(i11, i11 + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f1204a);
            this.f1210g[i11] = drawable;
            this.f1211h++;
            this.f1208e = drawable.getChangingConfigurations() | this.f1208e;
            p();
            this.f1214k = null;
            this.f1213j = false;
            this.f1216m = false;
            this.f1225v = false;
            return i11;
        }

        final void b(Resources.Theme theme) {
            if (theme != null) {
                e();
                int i11 = this.f1211h;
                Drawable[] drawableArr = this.f1210g;
                for (int i12 = 0; i12 < i11; i12++) {
                    Drawable drawable = drawableArr[i12];
                    if (drawable != null && a1.a.b(drawable)) {
                        a1.a.a(drawableArr[i12], theme);
                        this.f1208e |= drawableArr[i12].getChangingConfigurations();
                    }
                }
                z(a.c(theme));
            }
        }

        public boolean c() {
            if (this.f1225v) {
                return this.f1226w;
            }
            e();
            this.f1225v = true;
            int i11 = this.f1211h;
            Drawable[] drawableArr = this.f1210g;
            for (int i12 = 0; i12 < i11; i12++) {
                if (drawableArr[i12].getConstantState() == null) {
                    this.f1226w = false;
                    return false;
                }
            }
            this.f1226w = true;
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i11 = this.f1211h;
            Drawable[] drawableArr = this.f1210g;
            for (int i12 = 0; i12 < i11; i12++) {
                Drawable drawable = drawableArr[i12];
                if (drawable == null) {
                    Drawable.ConstantState constantState = (Drawable.ConstantState) this.f1209f.get(i12);
                    if (constantState != null && a.a(constantState)) {
                        return true;
                    }
                } else if (a1.a.b(drawable)) {
                    return true;
                }
            }
            return false;
        }

        protected void d() {
            this.f1216m = true;
            e();
            int i11 = this.f1211h;
            Drawable[] drawableArr = this.f1210g;
            this.f1218o = -1;
            this.f1217n = -1;
            this.f1220q = 0;
            this.f1219p = 0;
            for (int i12 = 0; i12 < i11; i12++) {
                Drawable drawable = drawableArr[i12];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f1217n) {
                    this.f1217n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f1218o) {
                    this.f1218o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f1219p) {
                    this.f1219p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f1220q) {
                    this.f1220q = minimumHeight;
                }
            }
        }

        final int f() {
            return this.f1210g.length;
        }

        public final Drawable g(int i11) {
            int iIndexOfKey;
            Drawable drawable = this.f1210g[i11];
            if (drawable != null) {
                return drawable;
            }
            SparseArray sparseArray = this.f1209f;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i11)) < 0) {
                return null;
            }
            Drawable drawableT = t(((Drawable.ConstantState) this.f1209f.valueAt(iIndexOfKey)).newDrawable(this.f1205b));
            this.f1210g[i11] = drawableT;
            this.f1209f.removeAt(iIndexOfKey);
            if (this.f1209f.size() == 0) {
                this.f1209f = null;
            }
            return drawableT;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f1207d | this.f1208e;
        }

        public final int h() {
            return this.f1211h;
        }

        public final int i() {
            if (!this.f1216m) {
                d();
            }
            return this.f1218o;
        }

        public final int j() {
            if (!this.f1216m) {
                d();
            }
            return this.f1220q;
        }

        public final int k() {
            if (!this.f1216m) {
                d();
            }
            return this.f1219p;
        }

        public final Rect l() {
            Rect rect = null;
            if (this.f1212i) {
                return null;
            }
            Rect rect2 = this.f1214k;
            if (rect2 != null || this.f1213j) {
                return rect2;
            }
            e();
            Rect rect3 = new Rect();
            int i11 = this.f1211h;
            Drawable[] drawableArr = this.f1210g;
            for (int i12 = 0; i12 < i11; i12++) {
                if (drawableArr[i12].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i13 = rect3.left;
                    if (i13 > rect.left) {
                        rect.left = i13;
                    }
                    int i14 = rect3.top;
                    if (i14 > rect.top) {
                        rect.top = i14;
                    }
                    int i15 = rect3.right;
                    if (i15 > rect.right) {
                        rect.right = i15;
                    }
                    int i16 = rect3.bottom;
                    if (i16 > rect.bottom) {
                        rect.bottom = i16;
                    }
                }
            }
            this.f1213j = true;
            this.f1214k = rect;
            return rect;
        }

        public final int m() {
            if (!this.f1216m) {
                d();
            }
            return this.f1217n;
        }

        public final int n() {
            if (this.f1221r) {
                return this.f1222s;
            }
            e();
            int i11 = this.f1211h;
            Drawable[] drawableArr = this.f1210g;
            int opacity = i11 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i12 = 1; i12 < i11; i12++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i12].getOpacity());
            }
            this.f1222s = opacity;
            this.f1221r = true;
            return opacity;
        }

        public void o(int i11, int i12) {
            Drawable[] drawableArr = new Drawable[i12];
            Drawable[] drawableArr2 = this.f1210g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i11);
            }
            this.f1210g = drawableArr;
        }

        void p() {
            this.f1221r = false;
            this.f1223t = false;
        }

        public final boolean q() {
            return this.f1215l;
        }

        public final boolean r() {
            if (this.f1223t) {
                return this.f1224u;
            }
            e();
            int i11 = this.f1211h;
            Drawable[] drawableArr = this.f1210g;
            boolean z10 = false;
            for (int i12 = 0; i12 < i11; i12++) {
                if (drawableArr[i12].isStateful()) {
                    z10 = true;
                    break;
                }
            }
            this.f1224u = z10;
            this.f1223t = true;
            return z10;
        }

        abstract void s();

        public final void u(boolean z10) {
            this.f1215l = z10;
        }

        public final void v(int i11) {
            this.A = i11;
        }

        public final void w(int i11) {
            this.B = i11;
        }

        final boolean x(int i11, int i12) {
            int i13 = this.f1211h;
            Drawable[] drawableArr = this.f1210g;
            boolean z10 = false;
            for (int i14 = 0; i14 < i13; i14++) {
                Drawable drawable = drawableArr[i14];
                if (drawable != null) {
                    boolean zM = a1.a.m(drawable, i11);
                    if (i14 == i12) {
                        z10 = zM;
                    }
                }
            }
            this.f1229z = i11;
            return z10;
        }

        public final void y(boolean z10) {
            this.f1212i = z10;
        }

        final void z(Resources resources) {
            if (resources != null) {
                this.f1205b = resources;
                int iF = DrawableContainerCompat.f(resources, this.f1206c);
                int i11 = this.f1206c;
                this.f1206c = iF;
                if (i11 != iF) {
                    this.f1216m = false;
                    this.f1213j = false;
                }
            }
        }
    }

    private void d(Drawable drawable) {
        if (this.f1202l == null) {
            this.f1202l = new b();
        }
        drawable.setCallback(this.f1202l.b(drawable.getCallback()));
        try {
            if (this.f1191a.A <= 0 && this.f1196f) {
                drawable.setAlpha(this.f1195e);
            }
            c cVar = this.f1191a;
            if (cVar.E) {
                drawable.setColorFilter(cVar.D);
            } else {
                if (cVar.H) {
                    a1.a.o(drawable, cVar.F);
                }
                c cVar2 = this.f1191a;
                if (cVar2.I) {
                    a1.a.p(drawable, cVar2.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f1191a.f1227x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            a1.a.m(drawable, a1.a.f(this));
            a1.a.j(drawable, this.f1191a.C);
            Rect rect = this.f1192b;
            if (rect != null) {
                a1.a.l(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f1202l.a());
        }
    }

    private boolean e() {
        return isAutoMirrored() && a1.a.f(this) == 1;
    }

    static int f(Resources resources, int i11) {
        if (resources != null) {
            i11 = resources.getDisplayMetrics().densityDpi;
        }
        if (i11 == 0) {
            return 160;
        }
        return i11;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003d  */
    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:18:0x0047  */
    /* JADX WARN: Code duplicated, block: B:19:0x0050  */
    /* JADX WARN: Code duplicated, block: B:20:0x0061  */
    /* JADX WARN: Code duplicated, block: B:23:0x0066 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    void a(boolean z10) {
        boolean z11;
        Drawable drawable;
        long j11;
        boolean z12 = true;
        this.f1196f = true;
        long jUptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.f1193c;
        if (drawable2 != null) {
            long j12 = this.f1200j;
            if (j12 != 0) {
                if (j12 <= jUptimeMillis) {
                    drawable2.setAlpha(this.f1195e);
                    this.f1200j = 0L;
                } else {
                    drawable2.setAlpha(((255 - (((int) ((j12 - jUptimeMillis) * 255)) / this.f1191a.A)) * this.f1195e) / 255);
                    z11 = true;
                }
            }
            drawable = this.f1194d;
            if (drawable != null) {
                j11 = this.f1201k;
                if (j11 == 0) {
                    if (j11 <= jUptimeMillis) {
                        drawable.setVisible(false, false);
                        this.f1194d = null;
                        this.f1201k = 0L;
                    } else {
                        drawable.setAlpha(((((int) ((j11 - jUptimeMillis) * 255)) / this.f1191a.B) * this.f1195e) / 255);
                    }
                }
                if (z10 || !z12) {
                }
                scheduleSelf(this.f1199i, jUptimeMillis + 16);
                return;
            }
            this.f1201k = 0L;
            z12 = z11;
            if (z10) {
            }
        }
        this.f1200j = 0L;
        z11 = false;
        drawable = this.f1194d;
        if (drawable != null) {
            j11 = this.f1201k;
            if (j11 == 0) {
                if (j11 <= jUptimeMillis) {
                    drawable.setVisible(false, false);
                    this.f1194d = null;
                    this.f1201k = 0L;
                } else {
                    drawable.setAlpha(((((int) ((j11 - jUptimeMillis) * 255)) / this.f1191a.B) * this.f1195e) / 255);
                }
            }
            if (z10) {
            }
        }
        this.f1201k = 0L;
        z12 = z11;
        if (z10) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f1191a.b(theme);
    }

    c b() {
        return this.f1191a;
    }

    int c() {
        return this.f1197g;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f1191a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f1193c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f1194d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0055  */
    boolean g(int i11) {
        if (i11 == this.f1197g) {
            return false;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f1191a.B > 0) {
            Drawable drawable = this.f1194d;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f1193c;
            if (drawable2 != null) {
                this.f1194d = drawable2;
                this.f1201k = ((long) this.f1191a.B) + jUptimeMillis;
            } else {
                this.f1194d = null;
                this.f1201k = 0L;
            }
        } else {
            Drawable drawable3 = this.f1193c;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i11 >= 0) {
            c cVar = this.f1191a;
            if (i11 < cVar.f1211h) {
                Drawable drawableG = cVar.g(i11);
                this.f1193c = drawableG;
                this.f1197g = i11;
                if (drawableG != null) {
                    int i12 = this.f1191a.A;
                    if (i12 > 0) {
                        this.f1200j = jUptimeMillis + ((long) i12);
                    }
                    d(drawableG);
                }
            } else {
                this.f1193c = null;
                this.f1197g = -1;
            }
        } else {
            this.f1193c = null;
            this.f1197g = -1;
        }
        if (this.f1200j != 0 || this.f1201k != 0) {
            Runnable runnable = this.f1199i;
            if (runnable == null) {
                this.f1199i = new Runnable() { // from class: androidx.appcompat.graphics.drawable.DrawableContainerCompat.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DrawableContainerCompat.this.a(true);
                        DrawableContainerCompat.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(runnable);
            }
            a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f1195e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f1191a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f1191a.c()) {
            return null;
        }
        this.f1191a.f1207d = getChangingConfigurations();
        return this.f1191a;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f1193c;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f1192b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f1191a.q()) {
            return this.f1191a.i();
        }
        Drawable drawable = this.f1193c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f1191a.q()) {
            return this.f1191a.m();
        }
        Drawable drawable = this.f1193c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f1191a.q()) {
            return this.f1191a.j();
        }
        Drawable drawable = this.f1193c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f1191a.q()) {
            return this.f1191a.k();
        }
        Drawable drawable = this.f1193c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f1193c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f1191a.n();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f1193c;
        if (drawable != null) {
            a.b(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect rectL = this.f1191a.l();
        if (rectL != null) {
            rect.set(rectL);
            padding = (rectL.right | ((rectL.left | rectL.top) | rectL.bottom)) != 0;
        } else {
            Drawable drawable = this.f1193c;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (e()) {
            int i11 = rect.left;
            rect.left = rect.right;
            rect.right = i11;
        }
        return padding;
    }

    void h(c cVar) {
        this.f1191a = cVar;
        int i11 = this.f1197g;
        if (i11 >= 0) {
            Drawable drawableG = cVar.g(i11);
            this.f1193c = drawableG;
            if (drawableG != null) {
                d(drawableG);
            }
        }
        this.f1194d = null;
    }

    final void i(Resources resources) {
        this.f1191a.z(resources);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        c cVar = this.f1191a;
        if (cVar != null) {
            cVar.p();
        }
        if (drawable != this.f1193c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f1191a.C;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f1191a.r();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z10;
        Drawable drawable = this.f1194d;
        boolean z11 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f1194d = null;
            z10 = true;
        } else {
            z10 = false;
        }
        Drawable drawable2 = this.f1193c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f1196f) {
                this.f1193c.setAlpha(this.f1195e);
            }
        }
        if (this.f1201k != 0) {
            this.f1201k = 0L;
            z10 = true;
        }
        if (this.f1200j != 0) {
            this.f1200j = 0L;
        } else {
            z11 = z10;
        }
        if (z11) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1198h && super.mutate() == this) {
            c cVarB = b();
            cVarB.s();
            h(cVarB);
            this.f1198h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1194d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f1193c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i11) {
        return this.f1191a.x(i11, c());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i11) {
        Drawable drawable = this.f1194d;
        if (drawable != null) {
            return drawable.setLevel(i11);
        }
        Drawable drawable2 = this.f1193c;
        if (drawable2 != null) {
            return drawable2.setLevel(i11);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f1194d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f1193c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j11) {
        if (drawable != this.f1193c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j11);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        if (this.f1196f && this.f1195e == i11) {
            return;
        }
        this.f1196f = true;
        this.f1195e = i11;
        Drawable drawable = this.f1193c;
        if (drawable != null) {
            if (this.f1200j == 0) {
                drawable.setAlpha(i11);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        c cVar = this.f1191a;
        if (cVar.C != z10) {
            cVar.C = z10;
            Drawable drawable = this.f1193c;
            if (drawable != null) {
                a1.a.j(drawable, z10);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        c cVar = this.f1191a;
        cVar.E = true;
        if (cVar.D != colorFilter) {
            cVar.D = colorFilter;
            Drawable drawable = this.f1193c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        c cVar = this.f1191a;
        if (cVar.f1227x != z10) {
            cVar.f1227x = z10;
            Drawable drawable = this.f1193c;
            if (drawable != null) {
                drawable.setDither(z10);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f11, float f12) {
        Drawable drawable = this.f1193c;
        if (drawable != null) {
            a1.a.k(drawable, f11, f12);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i11, int i12, int i13, int i14) {
        Rect rect = this.f1192b;
        if (rect == null) {
            this.f1192b = new Rect(i11, i12, i13, i14);
        } else {
            rect.set(i11, i12, i13, i14);
        }
        Drawable drawable = this.f1193c;
        if (drawable != null) {
            a1.a.l(drawable, i11, i12, i13, i14);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i11) {
        setTintList(ColorStateList.valueOf(i11));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        c cVar = this.f1191a;
        cVar.H = true;
        if (cVar.F != colorStateList) {
            cVar.F = colorStateList;
            a1.a.o(this.f1193c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        c cVar = this.f1191a;
        cVar.I = true;
        if (cVar.G != mode) {
            cVar.G = mode;
            a1.a.p(this.f1193c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        Drawable drawable = this.f1194d;
        if (drawable != null) {
            drawable.setVisible(z10, z11);
        }
        Drawable drawable2 = this.f1193c;
        if (drawable2 != null) {
            drawable2.setVisible(z10, z11);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f1193c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
