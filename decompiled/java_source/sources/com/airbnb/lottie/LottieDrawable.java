package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {
    private static final boolean S;
    private static final List T;
    private static final Executor U;
    private Canvas A;
    private Rect B;
    private RectF C;
    private Paint D;
    private Rect E;
    private Rect F;
    private RectF G;
    private RectF H;
    private Matrix I;
    private Matrix J;
    private boolean K;
    private AsyncUpdates L;
    private final ValueAnimator.AnimatorUpdateListener M;
    private final Semaphore N;
    private Handler O;
    private Runnable P;
    private final Runnable Q;
    private float R;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f17667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.i f17668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f17669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f17670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f17671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private OnVisibleAction f17672f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayList f17673g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private o4.b f17674h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f17675i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private o4.a f17676j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Map f17677k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f17678l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    com.airbnb.lottie.a f17679m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final k0 f17680n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f17681o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f17682p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.airbnb.lottie.model.layer.b f17683q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f17684r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f17685s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f17686t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f17687u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f17688v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private RenderMode f17689w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f17690x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Matrix f17691y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Bitmap f17692z;

    private enum OnVisibleAction {
        NONE,
        PLAY,
        RESUME
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes2.dex */
    interface a {
        void a(h hVar);
    }

    static {
        S = Build.VERSION.SDK_INT <= 25;
        T = Arrays.asList("reduced motion", "reduced_motion", "reduced-motion", "reducedmotion");
        U = new ThreadPoolExecutor(0, 2, 35L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new v4.g());
    }

    public LottieDrawable() {
        v4.i iVar = new v4.i();
        this.f17668b = iVar;
        this.f17669c = true;
        this.f17670d = false;
        this.f17671e = false;
        this.f17672f = OnVisibleAction.NONE;
        this.f17673g = new ArrayList();
        this.f17680n = new k0();
        this.f17681o = false;
        this.f17682p = true;
        this.f17684r = 255;
        this.f17688v = false;
        this.f17689w = RenderMode.AUTOMATIC;
        this.f17690x = false;
        this.f17691y = new Matrix();
        this.K = false;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.airbnb.lottie.f0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f17726a.p0(valueAnimator);
            }
        };
        this.M = animatorUpdateListener;
        this.N = new Semaphore(1);
        this.Q = new Runnable() { // from class: com.airbnb.lottie.g0
            @Override // java.lang.Runnable
            public final void run() {
                this.f17729a.r0();
            }
        };
        this.R = -3.4028235E38f;
        iVar.addUpdateListener(animatorUpdateListener);
    }

    private void A() {
        h hVar = this.f17667a;
        if (hVar == null) {
            return;
        }
        this.f17690x = this.f17689w.useSoftwareRendering(Build.VERSION.SDK_INT, hVar.q(), hVar.m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(int i11, int i12, h hVar) {
        i1(i11, i12);
    }

    private boolean A1() {
        h hVar = this.f17667a;
        if (hVar == null) {
            return false;
        }
        float f11 = this.R;
        float fL = this.f17668b.l();
        this.R = fL;
        return Math.abs(fL - f11) * hVar.d() >= 50.0f;
    }

    private void B(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B0(float f11, float f12, h hVar) {
        l1(f11, f12);
    }

    private void C(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0(int i11, h hVar) {
        m1(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D0(String str, h hVar) {
        n1(str);
    }

    private void E(Canvas canvas) {
        com.airbnb.lottie.model.layer.b bVar = this.f17683q;
        h hVar = this.f17667a;
        if (bVar == null || hVar == null) {
            return;
        }
        this.f17691y.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            this.f17691y.preScale(bounds.width() / hVar.b().width(), bounds.height() / hVar.b().height());
            this.f17691y.preTranslate(bounds.left, bounds.top);
        }
        bVar.h(canvas, this.f17691y, this.f17684r);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E0(float f11, h hVar) {
        o1(f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F0(float f11, h hVar) {
        r1(f11);
    }

    private void H(int i11, int i12) {
        Bitmap bitmap = this.f17692z;
        if (bitmap == null || bitmap.getWidth() < i11 || this.f17692z.getHeight() < i12) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
            this.f17692z = bitmapCreateBitmap;
            this.A.setBitmap(bitmapCreateBitmap);
            this.K = true;
            return;
        }
        if (this.f17692z.getWidth() > i11 || this.f17692z.getHeight() > i12) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.f17692z, 0, 0, i11, i12);
            this.f17692z = bitmapCreateBitmap2;
            this.A.setBitmap(bitmapCreateBitmap2);
            this.K = true;
        }
    }

    private void I() {
        if (this.A != null) {
            return;
        }
        this.A = new Canvas();
        this.H = new RectF();
        this.I = new Matrix();
        this.J = new Matrix();
        this.B = new Rect();
        this.C = new RectF();
        this.D = new l4.a();
        this.E = new Rect();
        this.F = new Rect();
        this.G = new RectF();
    }

    private void N0(Canvas canvas, com.airbnb.lottie.model.layer.b bVar) {
        if (this.f17667a == null || bVar == null) {
            return;
        }
        I();
        canvas.getMatrix(this.I);
        canvas.getClipBounds(this.B);
        B(this.B, this.C);
        this.I.mapRect(this.C);
        C(this.C, this.B);
        if (this.f17682p) {
            this.H.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            bVar.f(this.H, null, false);
        }
        this.I.mapRect(this.H);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        R0(this.H, fWidth, fHeight);
        if (!j0()) {
            RectF rectF = this.H;
            Rect rect = this.B;
            rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
        }
        int iCeil = (int) Math.ceil(this.H.width());
        int iCeil2 = (int) Math.ceil(this.H.height());
        if (iCeil <= 0 || iCeil2 <= 0) {
            return;
        }
        H(iCeil, iCeil2);
        if (this.K) {
            this.f17691y.set(this.I);
            this.f17691y.preScale(fWidth, fHeight);
            Matrix matrix = this.f17691y;
            RectF rectF2 = this.H;
            matrix.postTranslate(-rectF2.left, -rectF2.top);
            this.f17692z.eraseColor(0);
            bVar.h(this.A, this.f17691y, this.f17684r);
            this.I.invert(this.J);
            this.J.mapRect(this.G, this.H);
            C(this.G, this.F);
        }
        this.E.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.f17692z, this.E, this.F, this.D);
    }

    private Context P() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private o4.a Q() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f17676j == null) {
            o4.a aVar = new o4.a(getCallback(), this.f17679m);
            this.f17676j = aVar;
            String str = this.f17678l;
            if (str != null) {
                aVar.c(str);
            }
        }
        return this.f17676j;
    }

    private void R0(RectF rectF, float f11, float f12) {
        rectF.set(rectF.left * f11, rectF.top * f12, rectF.right * f11, rectF.bottom * f12);
    }

    private o4.b S() {
        o4.b bVar = this.f17674h;
        if (bVar != null && !bVar.b(P())) {
            this.f17674h = null;
        }
        if (this.f17674h == null) {
            this.f17674h = new o4.b(getCallback(), this.f17675i, null, this.f17667a.j());
        }
        return this.f17674h;
    }

    private p4.g W() {
        Iterator it = T.iterator();
        p4.g gVarL = null;
        while (it.hasNext()) {
            gVarL = this.f17667a.l((String) it.next());
            if (gVarL != null) {
                break;
            }
        }
        return gVarL;
    }

    private boolean j0() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        ViewParent parent = ((View) callback).getParent();
        if (parent instanceof ViewGroup) {
            return !((ViewGroup) parent).getClipChildren();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o0(p4.d dVar, Object obj, w4.c cVar, h hVar) {
        v(dVar, obj, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p0(ValueAnimator valueAnimator) {
        if (K()) {
            invalidateSelf();
            return;
        }
        com.airbnb.lottie.model.layer.b bVar = this.f17683q;
        if (bVar != null) {
            bVar.M(this.f17668b.l());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q0() {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0() {
        com.airbnb.lottie.model.layer.b bVar = this.f17683q;
        if (bVar == null) {
            return;
        }
        try {
            this.N.acquire();
            bVar.M(this.f17668b.l());
            if (S && this.K) {
                if (this.O == null) {
                    this.O = new Handler(Looper.getMainLooper());
                    this.P = new Runnable() { // from class: com.airbnb.lottie.a0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f17703a.q0();
                        }
                    };
                }
                this.O.post(this.P);
            }
        } catch (InterruptedException unused) {
        } finally {
            this.N.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s0(h hVar) {
        H0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0(h hVar) {
        P0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(int i11, h hVar) {
        a1(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(String str, h hVar) {
        g1(str);
    }

    private boolean w() {
        return this.f17669c || this.f17670d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0(int i11, h hVar) {
        f1(i11);
    }

    private void x() {
        h hVar = this.f17667a;
        if (hVar == null) {
            return;
        }
        com.airbnb.lottie.model.layer.b bVar = new com.airbnb.lottie.model.layer.b(this, u4.v.a(hVar), hVar.k(), hVar);
        this.f17683q = bVar;
        if (this.f17686t) {
            bVar.K(true);
        }
        this.f17683q.S(this.f17682p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x0(float f11, h hVar) {
        h1(f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(String str, h hVar) {
        j1(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0(String str, String str2, boolean z10, h hVar) {
        k1(str, str2, z10);
    }

    public Bitmap B1(String str, Bitmap bitmap) {
        o4.b bVarS = S();
        if (bVarS == null) {
            v4.f.c("Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
            return null;
        }
        Bitmap bitmapE = bVarS.e(str, bitmap);
        invalidateSelf();
        return bitmapE;
    }

    public boolean C1() {
        return this.f17677k == null && this.f17667a.c().p() > 0;
    }

    public void D() {
    }

    public void F(LottieFeatureFlag lottieFeatureFlag, boolean z10) {
        boolean zA = this.f17680n.a(lottieFeatureFlag, z10);
        if (this.f17667a == null || !zA) {
            return;
        }
        x();
    }

    public void G() {
        this.f17673g.clear();
        this.f17668b.k();
        if (isVisible()) {
            return;
        }
        this.f17672f = OnVisibleAction.NONE;
    }

    public void G0() {
        this.f17673g.clear();
        this.f17668b.s();
        if (isVisible()) {
            return;
        }
        this.f17672f = OnVisibleAction.NONE;
    }

    public void H0() {
        if (this.f17683q == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.h0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar) {
                    this.f17748a.s0(hVar);
                }
            });
            return;
        }
        A();
        if (w() || c0() == 0) {
            if (isVisible()) {
                this.f17668b.t();
                this.f17672f = OnVisibleAction.NONE;
            } else {
                this.f17672f = OnVisibleAction.PLAY;
            }
        }
        if (w()) {
            return;
        }
        p4.g gVarW = W();
        if (gVarW != null) {
            a1((int) gVarW.f72302b);
        } else {
            a1((int) (e0() < 0.0f ? Y() : X()));
        }
        this.f17668b.k();
        if (isVisible()) {
            return;
        }
        this.f17672f = OnVisibleAction.NONE;
    }

    public void I0() {
        this.f17668b.removeAllListeners();
    }

    public AsyncUpdates J() {
        AsyncUpdates asyncUpdates = this.L;
        return asyncUpdates != null ? asyncUpdates : d.d();
    }

    public void J0() {
        this.f17668b.removeAllUpdateListeners();
        this.f17668b.addUpdateListener(this.M);
    }

    public boolean K() {
        return J() == AsyncUpdates.ENABLED;
    }

    public void K0(Animator.AnimatorListener animatorListener) {
        this.f17668b.removeListener(animatorListener);
    }

    public Bitmap L(String str) {
        o4.b bVarS = S();
        if (bVarS != null) {
            return bVarS.a(str);
        }
        return null;
    }

    public void L0(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f17668b.removePauseListener(animatorPauseListener);
    }

    public boolean M() {
        return this.f17688v;
    }

    public void M0(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f17668b.removeUpdateListener(animatorUpdateListener);
    }

    public boolean N() {
        return this.f17682p;
    }

    public h O() {
        return this.f17667a;
    }

    public List O0(p4.d dVar) {
        if (this.f17683q == null) {
            v4.f.c("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.f17683q.d(dVar, 0, arrayList, new p4.d(new String[0]));
        return arrayList;
    }

    public void P0() {
        if (this.f17683q == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.b0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar) {
                    this.f17704a.t0(hVar);
                }
            });
            return;
        }
        A();
        if (w() || c0() == 0) {
            if (isVisible()) {
                this.f17668b.x();
                this.f17672f = OnVisibleAction.NONE;
            } else {
                this.f17672f = OnVisibleAction.RESUME;
            }
        }
        if (w()) {
            return;
        }
        a1((int) (e0() < 0.0f ? Y() : X()));
        this.f17668b.k();
        if (isVisible()) {
            return;
        }
        this.f17672f = OnVisibleAction.NONE;
    }

    public void Q0() {
        this.f17668b.y();
    }

    public int R() {
        return (int) this.f17668b.m();
    }

    public void S0(boolean z10) {
        this.f17687u = z10;
    }

    public String T() {
        return this.f17675i;
    }

    public void T0(AsyncUpdates asyncUpdates) {
        this.L = asyncUpdates;
    }

    public l0 U(String str) {
        h hVar = this.f17667a;
        if (hVar == null) {
            return null;
        }
        return (l0) hVar.j().get(str);
    }

    public void U0(boolean z10) {
        if (z10 != this.f17688v) {
            this.f17688v = z10;
            invalidateSelf();
        }
    }

    public boolean V() {
        return this.f17681o;
    }

    public void V0(boolean z10) {
        if (z10 != this.f17682p) {
            this.f17682p = z10;
            com.airbnb.lottie.model.layer.b bVar = this.f17683q;
            if (bVar != null) {
                bVar.S(z10);
            }
            invalidateSelf();
        }
    }

    public boolean W0(h hVar) {
        if (this.f17667a == hVar) {
            return false;
        }
        this.K = true;
        z();
        this.f17667a = hVar;
        x();
        this.f17668b.z(hVar);
        r1(this.f17668b.getAnimatedFraction());
        Iterator it = new ArrayList(this.f17673g).iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar != null) {
                aVar.a(hVar);
            }
            it.remove();
        }
        this.f17673g.clear();
        hVar.v(this.f17685s);
        A();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public float X() {
        return this.f17668b.o();
    }

    public void X0(String str) {
        this.f17678l = str;
        o4.a aVarQ = Q();
        if (aVarQ != null) {
            aVarQ.c(str);
        }
    }

    public float Y() {
        return this.f17668b.p();
    }

    public void Y0(com.airbnb.lottie.a aVar) {
        this.f17679m = aVar;
        o4.a aVar2 = this.f17676j;
        if (aVar2 != null) {
            aVar2.d(aVar);
        }
    }

    public PerformanceTracker Z() {
        h hVar = this.f17667a;
        if (hVar != null) {
            return hVar.n();
        }
        return null;
    }

    public void Z0(Map map) {
        if (map == this.f17677k) {
            return;
        }
        this.f17677k = map;
        invalidateSelf();
    }

    public float a0() {
        return this.f17668b.l();
    }

    public void a1(final int i11) {
        if (this.f17667a == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.t
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar) {
                    this.f17962a.u0(i11, hVar);
                }
            });
        } else {
            this.f17668b.A(i11);
        }
    }

    public RenderMode b0() {
        return this.f17690x ? RenderMode.SOFTWARE : RenderMode.HARDWARE;
    }

    public void b1(boolean z10) {
        this.f17670d = z10;
    }

    public int c0() {
        return this.f17668b.getRepeatCount();
    }

    public void c1(b bVar) {
        o4.b bVar2 = this.f17674h;
        if (bVar2 != null) {
            bVar2.d(bVar);
        }
    }

    public int d0() {
        return this.f17668b.getRepeatMode();
    }

    public void d1(String str) {
        this.f17675i = str;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        com.airbnb.lottie.model.layer.b bVar = this.f17683q;
        if (bVar == null) {
            return;
        }
        boolean zK = K();
        if (zK) {
            try {
                this.N.acquire();
            } catch (InterruptedException unused) {
                if (d.g()) {
                    d.c("Drawable#draw");
                }
                if (!zK) {
                    return;
                }
                this.N.release();
                if (bVar.P() == this.f17668b.l()) {
                    return;
                }
            } catch (Throwable th2) {
                if (d.g()) {
                    d.c("Drawable#draw");
                }
                if (zK) {
                    this.N.release();
                    if (bVar.P() != this.f17668b.l()) {
                        U.execute(this.Q);
                    }
                }
                throw th2;
            }
        }
        if (d.g()) {
            d.b("Drawable#draw");
        }
        if (zK && A1()) {
            r1(this.f17668b.l());
        }
        if (this.f17671e) {
            try {
                if (this.f17690x) {
                    N0(canvas, bVar);
                } else {
                    E(canvas);
                }
            } catch (Throwable th3) {
                v4.f.b("Lottie crashed in draw!", th3);
            }
        } else if (this.f17690x) {
            N0(canvas, bVar);
        } else {
            E(canvas);
        }
        this.K = false;
        if (d.g()) {
            d.c("Drawable#draw");
        }
        if (zK) {
            this.N.release();
            if (bVar.P() == this.f17668b.l()) {
                return;
            }
            U.execute(this.Q);
        }
    }

    public float e0() {
        return this.f17668b.q();
    }

    public void e1(boolean z10) {
        this.f17681o = z10;
    }

    public t0 f0() {
        return null;
    }

    public void f1(final int i11) {
        if (this.f17667a == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.w
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar) {
                    this.f17970a.w0(i11, hVar);
                }
            });
        } else {
            this.f17668b.B(i11 + 0.99f);
        }
    }

    public Typeface g0(p4.b bVar) {
        Map map = this.f17677k;
        if (map != null) {
            String strA = bVar.a();
            if (map.containsKey(strA)) {
                return (Typeface) map.get(strA);
            }
            String strB = bVar.b();
            if (map.containsKey(strB)) {
                return (Typeface) map.get(strB);
            }
            String str = bVar.a() + "-" + bVar.c();
            if (map.containsKey(str)) {
                return (Typeface) map.get(str);
            }
        }
        o4.a aVarQ = Q();
        if (aVarQ != null) {
            return aVarQ.b(bVar);
        }
        return null;
    }

    public void g1(final String str) {
        h hVar = this.f17667a;
        if (hVar == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.d0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar2) {
                    this.f17720a.v0(str, hVar2);
                }
            });
            return;
        }
        p4.g gVarL = hVar.l(str);
        if (gVarL != null) {
            f1((int) (gVarL.f72302b + gVarL.f72303c));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f17684r;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        h hVar = this.f17667a;
        if (hVar == null) {
            return -1;
        }
        return hVar.b().height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        h hVar = this.f17667a;
        if (hVar == null) {
            return -1;
        }
        return hVar.b().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public boolean h0() {
        com.airbnb.lottie.model.layer.b bVar = this.f17683q;
        return bVar != null && bVar.Q();
    }

    public void h1(final float f11) {
        h hVar = this.f17667a;
        if (hVar == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.z
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar2) {
                    this.f17978a.x0(f11, hVar2);
                }
            });
        } else {
            this.f17668b.B(v4.k.i(hVar.p(), this.f17667a.f(), f11));
        }
    }

    public boolean i0() {
        com.airbnb.lottie.model.layer.b bVar = this.f17683q;
        return bVar != null && bVar.R();
    }

    public void i1(final int i11, final int i12) {
        if (this.f17667a == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.v
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar) {
                    this.f17967a.A0(i11, i12, hVar);
                }
            });
        } else {
            this.f17668b.C(i11, i12 + 0.99f);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable.Callback callback;
        if (this.K) {
            return;
        }
        this.K = true;
        if ((!S || Looper.getMainLooper() == Looper.myLooper()) && (callback = getCallback()) != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return k0();
    }

    public void j1(final String str) {
        h hVar = this.f17667a;
        if (hVar == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.s
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar2) {
                    this.f17960a.y0(str, hVar2);
                }
            });
            return;
        }
        p4.g gVarL = hVar.l(str);
        if (gVarL != null) {
            int i11 = (int) gVarL.f72302b;
            i1(i11, ((int) gVarL.f72303c) + i11);
        } else {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
    }

    public boolean k0() {
        v4.i iVar = this.f17668b;
        if (iVar == null) {
            return false;
        }
        return iVar.isRunning();
    }

    public void k1(final String str, final String str2, final boolean z10) {
        h hVar = this.f17667a;
        if (hVar == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.c0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar2) {
                    this.f17706a.z0(str, str2, z10, hVar2);
                }
            });
            return;
        }
        p4.g gVarL = hVar.l(str);
        if (gVarL == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
        int i11 = (int) gVarL.f72302b;
        p4.g gVarL2 = this.f17667a.l(str2);
        if (gVarL2 != null) {
            i1(i11, (int) (gVarL2.f72302b + (z10 ? 1.0f : 0.0f)));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str2 + ".");
    }

    boolean l0() {
        if (isVisible()) {
            return this.f17668b.isRunning();
        }
        OnVisibleAction onVisibleAction = this.f17672f;
        return onVisibleAction == OnVisibleAction.PLAY || onVisibleAction == OnVisibleAction.RESUME;
    }

    public void l1(final float f11, final float f12) {
        h hVar = this.f17667a;
        if (hVar == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.u
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar2) {
                    this.f17964a.B0(f11, f12, hVar2);
                }
            });
        } else {
            i1((int) v4.k.i(hVar.p(), this.f17667a.f(), f11), (int) v4.k.i(this.f17667a.p(), this.f17667a.f(), f12));
        }
    }

    public boolean m0() {
        return this.f17687u;
    }

    public void m1(final int i11) {
        if (this.f17667a == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.x
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar) {
                    this.f17972a.C0(i11, hVar);
                }
            });
        } else {
            this.f17668b.D(i11);
        }
    }

    public boolean n0(LottieFeatureFlag lottieFeatureFlag) {
        return this.f17680n.b(lottieFeatureFlag);
    }

    public void n1(final String str) {
        h hVar = this.f17667a;
        if (hVar == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.e0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar2) {
                    this.f17724a.D0(str, hVar2);
                }
            });
            return;
        }
        p4.g gVarL = hVar.l(str);
        if (gVarL != null) {
            m1((int) gVarL.f72302b);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void o1(final float f11) {
        h hVar = this.f17667a;
        if (hVar == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.i0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar2) {
                    this.f17752a.E0(f11, hVar2);
                }
            });
        } else {
            m1((int) v4.k.i(hVar.p(), this.f17667a.f(), f11));
        }
    }

    public void p1(boolean z10) {
        if (this.f17686t == z10) {
            return;
        }
        this.f17686t = z10;
        com.airbnb.lottie.model.layer.b bVar = this.f17683q;
        if (bVar != null) {
            bVar.K(z10);
        }
    }

    public void q1(boolean z10) {
        this.f17685s = z10;
        h hVar = this.f17667a;
        if (hVar != null) {
            hVar.v(z10);
        }
    }

    public void r1(final float f11) {
        if (this.f17667a == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.j0
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar) {
                    this.f17756a.F0(f11, hVar);
                }
            });
            return;
        }
        if (d.g()) {
            d.b("Drawable#setProgress");
        }
        this.f17668b.A(this.f17667a.h(f11));
        if (d.g()) {
            d.c("Drawable#setProgress");
        }
    }

    public void s(Animator.AnimatorListener animatorListener) {
        this.f17668b.addListener(animatorListener);
    }

    public void s1(RenderMode renderMode) {
        this.f17689w = renderMode;
        A();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j11) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j11);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        this.f17684r = i11;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        v4.f.c("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean zIsVisible = isVisible();
        boolean visible = super.setVisible(z10, z11);
        if (z10) {
            OnVisibleAction onVisibleAction = this.f17672f;
            if (onVisibleAction == OnVisibleAction.PLAY) {
                H0();
            } else if (onVisibleAction == OnVisibleAction.RESUME) {
                P0();
            }
        } else if (this.f17668b.isRunning()) {
            G0();
            this.f17672f = OnVisibleAction.RESUME;
        } else if (zIsVisible) {
            this.f17672f = OnVisibleAction.NONE;
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        H0();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        G();
    }

    public void t(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f17668b.addPauseListener(animatorPauseListener);
    }

    public void t1(int i11) {
        this.f17668b.setRepeatCount(i11);
    }

    public void u(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f17668b.addUpdateListener(animatorUpdateListener);
    }

    public void u1(int i11) {
        this.f17668b.setRepeatMode(i11);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public void v(final p4.d dVar, final Object obj, final w4.c cVar) {
        com.airbnb.lottie.model.layer.b bVar = this.f17683q;
        if (bVar == null) {
            this.f17673g.add(new a() { // from class: com.airbnb.lottie.y
                @Override // com.airbnb.lottie.LottieDrawable.a
                public final void a(h hVar) {
                    this.f17974a.o0(dVar, obj, cVar, hVar);
                }
            });
            return;
        }
        boolean zIsEmpty = true;
        if (dVar == p4.d.f72296c) {
            bVar.b(obj, cVar);
        } else if (dVar.d() != null) {
            dVar.d().b(obj, cVar);
        } else {
            List listO0 = O0(dVar);
            for (int i11 = 0; i11 < listO0.size(); i11++) {
                ((p4.d) listO0.get(i11)).d().b(obj, cVar);
            }
            zIsEmpty = true ^ listO0.isEmpty();
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (obj == p0.E) {
                r1(a0());
            }
        }
    }

    public void v1(boolean z10) {
        this.f17671e = z10;
    }

    public void w1(float f11) {
        this.f17668b.E(f11);
    }

    public void x1(Boolean bool) {
        this.f17669c = bool.booleanValue();
    }

    public void y() {
        this.f17673g.clear();
        this.f17668b.cancel();
        if (isVisible()) {
            return;
        }
        this.f17672f = OnVisibleAction.NONE;
    }

    public void y1(t0 t0Var) {
    }

    public void z() {
        if (this.f17668b.isRunning()) {
            this.f17668b.cancel();
            if (!isVisible()) {
                this.f17672f = OnVisibleAction.NONE;
            }
        }
        this.f17667a = null;
        this.f17683q = null;
        this.f17674h = null;
        this.R = -3.4028235E38f;
        this.f17668b.j();
        invalidateSelf();
    }

    public void z1(boolean z10) {
        this.f17668b.F(z10);
    }
}
