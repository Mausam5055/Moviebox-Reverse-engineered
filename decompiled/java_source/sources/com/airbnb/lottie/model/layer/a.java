package com.airbnb.lottie.model.layer;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.core.view.ViewCompat;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import n4.h;
import n4.p;
import u4.j;
import v4.l;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements m4.e, n4.a.b, p4.e {
    private Paint A;
    float B;
    BlurMaskFilter C;
    l4.a D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f17858a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Matrix f17859b = new Matrix();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f17860c = new Matrix();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f17861d = new l4.a(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f17862e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Paint f17863f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Paint f17864g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Paint f17865h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final RectF f17866i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final RectF f17867j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final RectF f17868k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final RectF f17869l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final RectF f17870m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final String f17871n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Matrix f17872o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final LottieDrawable f17873p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final Layer f17874q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private h f17875r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private n4.d f17876s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private a f17877t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private a f17878u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private List f17879v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final List f17880w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final p f17881x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f17882y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f17883z;

    /* JADX INFO: renamed from: com.airbnb.lottie.model.layer.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0172a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17884a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f17885b;

        static {
            int[] iArr = new int[Mask.MaskMode.values().length];
            f17885b = iArr;
            try {
                iArr[Mask.MaskMode.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17885b[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17885b[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17885b[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Layer.LayerType.values().length];
            f17884a = iArr2;
            try {
                iArr2[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17884a[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17884a[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17884a[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17884a[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17884a[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17884a[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    a(LottieDrawable lottieDrawable, Layer layer) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.f17862e = new l4.a(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.f17863f = new l4.a(1, mode2);
        l4.a aVar = new l4.a(1);
        this.f17864g = aVar;
        this.f17865h = new l4.a(PorterDuff.Mode.CLEAR);
        this.f17866i = new RectF();
        this.f17867j = new RectF();
        this.f17868k = new RectF();
        this.f17869l = new RectF();
        this.f17870m = new RectF();
        this.f17872o = new Matrix();
        this.f17880w = new ArrayList();
        this.f17882y = true;
        this.B = 0.0f;
        this.f17873p = lottieDrawable;
        this.f17874q = layer;
        this.f17871n = layer.j() + "#draw";
        if (layer.i() == Layer.MatteType.INVERT) {
            aVar.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            aVar.setXfermode(new PorterDuffXfermode(mode));
        }
        p pVarB = layer.x().b();
        this.f17881x = pVarB;
        pVarB.b(this);
        if (layer.h() != null && !layer.h().isEmpty()) {
            h hVar = new h(layer.h());
            this.f17875r = hVar;
            Iterator it = hVar.a().iterator();
            while (it.hasNext()) {
                ((n4.a) it.next()).a(this);
            }
            for (n4.a aVar2 : this.f17875r.c()) {
                i(aVar2);
                aVar2.a(this);
            }
        }
        O();
    }

    private void C(RectF rectF, Matrix matrix) {
        this.f17868k.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (A()) {
            int size = this.f17875r.b().size();
            for (int i11 = 0; i11 < size; i11++) {
                Mask mask = (Mask) this.f17875r.b().get(i11);
                Path path = (Path) ((n4.a) this.f17875r.a().get(i11)).h();
                if (path != null) {
                    this.f17858a.set(path);
                    this.f17858a.transform(matrix);
                    int i12 = C0172a.f17885b[mask.a().ordinal()];
                    if (i12 == 1 || i12 == 2) {
                        return;
                    }
                    if ((i12 == 3 || i12 == 4) && mask.d()) {
                        return;
                    }
                    this.f17858a.computeBounds(this.f17870m, false);
                    if (i11 == 0) {
                        this.f17868k.set(this.f17870m);
                    } else {
                        RectF rectF2 = this.f17868k;
                        rectF2.set(Math.min(rectF2.left, this.f17870m.left), Math.min(this.f17868k.top, this.f17870m.top), Math.max(this.f17868k.right, this.f17870m.right), Math.max(this.f17868k.bottom, this.f17870m.bottom));
                    }
                }
            }
            if (rectF.intersect(this.f17868k)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void D(RectF rectF, Matrix matrix) {
        if (B() && this.f17874q.i() != Layer.MatteType.INVERT) {
            this.f17869l.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f17877t.f(this.f17869l, matrix, true);
            if (rectF.intersect(this.f17869l)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void E() {
        this.f17873p.invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        N(this.f17876s.q() == 1.0f);
    }

    private void G(float f11) {
        this.f17873p.O().n().a(this.f17874q.j(), f11);
    }

    private void N(boolean z10) {
        if (z10 != this.f17882y) {
            this.f17882y = z10;
            E();
        }
    }

    private void O() {
        if (this.f17874q.f().isEmpty()) {
            N(true);
            return;
        }
        n4.d dVar = new n4.d(this.f17874q.f());
        this.f17876s = dVar;
        dVar.m();
        this.f17876s.a(new n4.a.b() { // from class: s4.a
            @Override // n4.a.b
            public final void a() {
                this.f75281a.F();
            }
        });
        N(((Float) this.f17876s.h()).floatValue() == 1.0f);
        i(this.f17876s);
    }

    private void j(Canvas canvas, Matrix matrix, n4.a aVar, n4.a aVar2) {
        this.f17858a.set((Path) aVar.h());
        this.f17858a.transform(matrix);
        this.f17861d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f17858a, this.f17861d);
    }

    private void k(Canvas canvas, Matrix matrix, n4.a aVar, n4.a aVar2) {
        l.n(canvas, this.f17866i, this.f17862e);
        this.f17858a.set((Path) aVar.h());
        this.f17858a.transform(matrix);
        this.f17861d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f17858a, this.f17861d);
        canvas.restore();
    }

    private void l(Canvas canvas, Matrix matrix, n4.a aVar, n4.a aVar2) {
        l.n(canvas, this.f17866i, this.f17861d);
        canvas.drawRect(this.f17866i, this.f17861d);
        this.f17858a.set((Path) aVar.h());
        this.f17858a.transform(matrix);
        this.f17861d.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        canvas.drawPath(this.f17858a, this.f17863f);
        canvas.restore();
    }

    private void m(Canvas canvas, Matrix matrix, n4.a aVar, n4.a aVar2) {
        l.n(canvas, this.f17866i, this.f17862e);
        canvas.drawRect(this.f17866i, this.f17861d);
        this.f17863f.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        this.f17858a.set((Path) aVar.h());
        this.f17858a.transform(matrix);
        canvas.drawPath(this.f17858a, this.f17863f);
        canvas.restore();
    }

    private void n(Canvas canvas, Matrix matrix, n4.a aVar, n4.a aVar2) {
        l.n(canvas, this.f17866i, this.f17863f);
        canvas.drawRect(this.f17866i, this.f17861d);
        this.f17863f.setAlpha((int) (((Integer) aVar2.h()).intValue() * 2.55f));
        this.f17858a.set((Path) aVar.h());
        this.f17858a.transform(matrix);
        canvas.drawPath(this.f17858a, this.f17863f);
        canvas.restore();
    }

    private void o(Canvas canvas, Matrix matrix) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("Layer#saveLayer");
        }
        l.o(canvas, this.f17866i, this.f17862e, 19);
        if (Build.VERSION.SDK_INT < 28) {
            s(canvas);
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("Layer#saveLayer");
        }
        for (int i11 = 0; i11 < this.f17875r.b().size(); i11++) {
            Mask mask = (Mask) this.f17875r.b().get(i11);
            n4.a aVar = (n4.a) this.f17875r.a().get(i11);
            n4.a aVar2 = (n4.a) this.f17875r.c().get(i11);
            int i12 = C0172a.f17885b[mask.a().ordinal()];
            if (i12 != 1) {
                if (i12 == 2) {
                    if (i11 == 0) {
                        this.f17861d.setColor(ViewCompat.MEASURED_STATE_MASK);
                        this.f17861d.setAlpha(255);
                        canvas.drawRect(this.f17866i, this.f17861d);
                    }
                    if (mask.d()) {
                        n(canvas, matrix, aVar, aVar2);
                    } else {
                        p(canvas, matrix, aVar);
                    }
                } else if (i12 != 3) {
                    if (i12 == 4) {
                        if (mask.d()) {
                            l(canvas, matrix, aVar, aVar2);
                        } else {
                            j(canvas, matrix, aVar, aVar2);
                        }
                    }
                } else if (mask.d()) {
                    m(canvas, matrix, aVar, aVar2);
                } else {
                    k(canvas, matrix, aVar, aVar2);
                }
            } else if (q()) {
                this.f17861d.setAlpha(255);
                canvas.drawRect(this.f17866i, this.f17861d);
            }
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("Layer#restoreLayer");
        }
        canvas.restore();
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("Layer#restoreLayer");
        }
    }

    private void p(Canvas canvas, Matrix matrix, n4.a aVar) {
        this.f17858a.set((Path) aVar.h());
        this.f17858a.transform(matrix);
        canvas.drawPath(this.f17858a, this.f17863f);
    }

    private boolean q() {
        if (this.f17875r.a().isEmpty()) {
            return false;
        }
        for (int i11 = 0; i11 < this.f17875r.b().size(); i11++) {
            if (((Mask) this.f17875r.b().get(i11)).a() != Mask.MaskMode.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void r() {
        if (this.f17879v != null) {
            return;
        }
        if (this.f17878u == null) {
            this.f17879v = Collections.emptyList();
            return;
        }
        this.f17879v = new ArrayList();
        for (a aVar = this.f17878u; aVar != null; aVar = aVar.f17878u) {
            this.f17879v.add(aVar);
        }
    }

    private void s(Canvas canvas) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("Layer#clearLayer");
        }
        RectF rectF = this.f17866i;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f17865h);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("Layer#clearLayer");
        }
    }

    static a u(b bVar, Layer layer, LottieDrawable lottieDrawable, com.airbnb.lottie.h hVar) {
        switch (C0172a.f17884a[layer.g().ordinal()]) {
            case 1:
                return new e(lottieDrawable, layer, bVar, hVar);
            case 2:
                return new b(lottieDrawable, layer, hVar.o(layer.n()), hVar);
            case 3:
                return new f(lottieDrawable, layer);
            case 4:
                return new c(lottieDrawable, layer);
            case 5:
                return new d(lottieDrawable, layer);
            case 6:
                return new g(lottieDrawable, layer);
            default:
                v4.f.c("Unknown layer type " + layer.g());
                return null;
        }
    }

    boolean A() {
        h hVar = this.f17875r;
        return (hVar == null || hVar.a().isEmpty()) ? false : true;
    }

    boolean B() {
        return this.f17877t != null;
    }

    public void H(n4.a aVar) {
        this.f17880w.remove(aVar);
    }

    void I(p4.d dVar, int i11, List list, p4.d dVar2) {
    }

    void J(a aVar) {
        this.f17877t = aVar;
    }

    void K(boolean z10) {
        if (z10 && this.A == null) {
            this.A = new l4.a();
        }
        this.f17883z = z10;
    }

    void L(a aVar) {
        this.f17878u = aVar;
    }

    void M(float f11) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("BaseLayer#setProgress");
            com.airbnb.lottie.d.b("BaseLayer#setProgress.transform");
        }
        this.f17881x.j(f11);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("BaseLayer#setProgress.transform");
        }
        if (this.f17875r != null) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("BaseLayer#setProgress.mask");
            }
            for (int i11 = 0; i11 < this.f17875r.a().size(); i11++) {
                ((n4.a) this.f17875r.a().get(i11)).n(f11);
            }
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseLayer#setProgress.mask");
            }
        }
        if (this.f17876s != null) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("BaseLayer#setProgress.inout");
            }
            this.f17876s.n(f11);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseLayer#setProgress.inout");
            }
        }
        if (this.f17877t != null) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("BaseLayer#setProgress.matte");
            }
            this.f17877t.M(f11);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseLayer#setProgress.matte");
            }
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("BaseLayer#setProgress.animations." + this.f17880w.size());
        }
        for (int i12 = 0; i12 < this.f17880w.size(); i12++) {
            ((n4.a) this.f17880w.get(i12)).n(f11);
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("BaseLayer#setProgress.animations." + this.f17880w.size());
            com.airbnb.lottie.d.c("BaseLayer#setProgress");
        }
    }

    @Override // n4.a.b
    public void a() {
        E();
    }

    @Override // p4.e
    public void b(Object obj, w4.c cVar) {
        this.f17881x.c(obj, cVar);
    }

    @Override // m4.c
    public void c(List list, List list2) {
    }

    @Override // p4.e
    public void d(p4.d dVar, int i11, List list, p4.d dVar2) {
        a aVar = this.f17877t;
        if (aVar != null) {
            p4.d dVarA = dVar2.a(aVar.getName());
            if (dVar.c(this.f17877t.getName(), i11)) {
                list.add(dVarA.i(this.f17877t));
            }
            if (dVar.h(getName(), i11)) {
                this.f17877t.I(dVar, dVar.e(this.f17877t.getName(), i11) + i11, list, dVarA);
            }
        }
        if (dVar.g(getName(), i11)) {
            if (!"__container".equals(getName())) {
                dVar2 = dVar2.a(getName());
                if (dVar.c(getName(), i11)) {
                    list.add(dVar2.i(this));
                }
            }
            if (dVar.h(getName(), i11)) {
                I(dVar, i11 + dVar.e(getName(), i11), list, dVar2);
            }
        }
    }

    @Override // m4.e
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        this.f17866i.set(0.0f, 0.0f, 0.0f, 0.0f);
        r();
        this.f17872o.set(matrix);
        if (z10) {
            List list = this.f17879v;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f17872o.preConcat(((a) this.f17879v.get(size)).f17881x.f());
                }
            } else {
                a aVar = this.f17878u;
                if (aVar != null) {
                    this.f17872o.preConcat(aVar.f17881x.f());
                }
            }
        }
        this.f17872o.preConcat(this.f17881x.f());
    }

    @Override // m4.c
    public String getName() {
        return this.f17874q.j();
    }

    @Override // m4.e
    public void h(Canvas canvas, Matrix matrix, int i11) {
        Paint paint;
        Integer num;
        com.airbnb.lottie.d.b(this.f17871n);
        if (!this.f17882y || this.f17874q.y()) {
            com.airbnb.lottie.d.c(this.f17871n);
            return;
        }
        r();
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("Layer#parentMatrix");
        }
        this.f17859b.reset();
        this.f17859b.set(matrix);
        for (int size = this.f17879v.size() - 1; size >= 0; size--) {
            this.f17859b.preConcat(((a) this.f17879v.get(size)).f17881x.f());
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("Layer#parentMatrix");
        }
        n4.a aVarH = this.f17881x.h();
        int iIntValue = (int) ((((i11 / 255.0f) * ((aVarH == null || (num = (Integer) aVarH.h()) == null) ? 100 : num.intValue())) / 100.0f) * 255.0f);
        if (!B() && !A() && v() == LBlendMode.NORMAL) {
            this.f17859b.preConcat(this.f17881x.f());
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("Layer#drawLayer");
            }
            t(canvas, this.f17859b, iIntValue);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("Layer#drawLayer");
            }
            G(com.airbnb.lottie.d.c(this.f17871n));
            return;
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("Layer#computeBounds");
        }
        f(this.f17866i, this.f17859b, false);
        D(this.f17866i, matrix);
        this.f17859b.preConcat(this.f17881x.f());
        C(this.f17866i, this.f17859b);
        this.f17867j.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        canvas.getMatrix(this.f17860c);
        if (!this.f17860c.isIdentity()) {
            Matrix matrix2 = this.f17860c;
            matrix2.invert(matrix2);
            this.f17860c.mapRect(this.f17867j);
        }
        if (!this.f17866i.intersect(this.f17867j)) {
            this.f17866i.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("Layer#computeBounds");
        }
        if (this.f17866i.width() >= 1.0f && this.f17866i.height() >= 1.0f) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("Layer#saveLayer");
            }
            this.f17861d.setAlpha(255);
            z0.d.b(this.f17861d, v().toNativeBlendMode());
            l.n(canvas, this.f17866i, this.f17861d);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("Layer#saveLayer");
            }
            if (v() != LBlendMode.MULTIPLY) {
                s(canvas);
            } else {
                if (this.D == null) {
                    l4.a aVar = new l4.a();
                    this.D = aVar;
                    aVar.setColor(-1);
                }
                RectF rectF = this.f17866i;
                canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.D);
            }
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("Layer#drawLayer");
            }
            t(canvas, this.f17859b, iIntValue);
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("Layer#drawLayer");
            }
            if (A()) {
                o(canvas, this.f17859b);
            }
            if (B()) {
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.b("Layer#drawMatte");
                    com.airbnb.lottie.d.b("Layer#saveLayer");
                }
                l.o(canvas, this.f17866i, this.f17864g, 19);
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.c("Layer#saveLayer");
                }
                s(canvas);
                this.f17877t.h(canvas, matrix, iIntValue);
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.b("Layer#restoreLayer");
                }
                canvas.restore();
                if (com.airbnb.lottie.d.g()) {
                    com.airbnb.lottie.d.c("Layer#restoreLayer");
                    com.airbnb.lottie.d.c("Layer#drawMatte");
                }
            }
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.b("Layer#restoreLayer");
            }
            canvas.restore();
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("Layer#restoreLayer");
            }
        }
        if (this.f17883z && (paint = this.A) != null) {
            paint.setStyle(Paint.Style.STROKE);
            this.A.setColor(-251901);
            this.A.setStrokeWidth(4.0f);
            canvas.drawRect(this.f17866i, this.A);
            this.A.setStyle(Paint.Style.FILL);
            this.A.setColor(1357638635);
            canvas.drawRect(this.f17866i, this.A);
        }
        G(com.airbnb.lottie.d.c(this.f17871n));
    }

    public void i(n4.a aVar) {
        if (aVar == null) {
            return;
        }
        this.f17880w.add(aVar);
    }

    abstract void t(Canvas canvas, Matrix matrix, int i11);

    public LBlendMode v() {
        return this.f17874q.a();
    }

    public r4.a w() {
        return this.f17874q.b();
    }

    public BlurMaskFilter x(float f11) {
        if (this.B == f11) {
            return this.C;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f11 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.C = blurMaskFilter;
        this.B = f11;
        return blurMaskFilter;
    }

    public j y() {
        return this.f17874q.d();
    }

    Layer z() {
        return this.f17874q;
    }
}
