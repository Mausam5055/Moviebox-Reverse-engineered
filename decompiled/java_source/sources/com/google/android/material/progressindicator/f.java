package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes4.dex */
public final class f extends g {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final androidx.dynamicanimation.animation.c f29448u = new a("indicatorLevel");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private h f29449p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final androidx.dynamicanimation.animation.e f29450q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final androidx.dynamicanimation.animation.d f29451r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final h.a f29452s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f29453t;

    class a extends androidx.dynamicanimation.animation.c {
        a(String str) {
            super(str);
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public float a(f fVar) {
            return fVar.y() * 10000.0f;
        }

        @Override // androidx.dynamicanimation.animation.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(f fVar, float f11) {
            fVar.A(f11 / 10000.0f);
        }
    }

    f(Context context, b bVar, h hVar) {
        super(context, bVar);
        this.f29453t = false;
        z(hVar);
        this.f29452s = new h.a();
        androidx.dynamicanimation.animation.e eVar = new androidx.dynamicanimation.animation.e();
        this.f29450q = eVar;
        eVar.d(1.0f);
        eVar.f(50.0f);
        androidx.dynamicanimation.animation.d dVar = new androidx.dynamicanimation.animation.d(this, f29448u);
        this.f29451r = dVar;
        dVar.q(eVar);
        n(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(float f11) {
        this.f29452s.f29473b = f11;
        invalidateSelf();
    }

    static f v(Context context, e eVar, c cVar) {
        return new f(context, eVar, cVar);
    }

    static f w(Context context, n nVar, k kVar) {
        return new f(context, nVar, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float y() {
        return this.f29452s.f29473b;
    }

    void B(float f11) {
        setLevel((int) (f11 * 10000.0f));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            this.f29449p.g(canvas, getBounds(), h(), k(), j());
            this.f29467m.setStyle(Paint.Style.FILL);
            this.f29467m.setAntiAlias(true);
            h.a aVar = this.f29452s;
            b bVar = this.f29456b;
            aVar.f29474c = bVar.f29420c[0];
            int iA = bVar.f29424g;
            if (iA > 0) {
                if (!(this.f29449p instanceof k)) {
                    iA = (int) ((iA * d1.a.a(y(), 0.0f, 0.01f)) / 0.01f);
                }
                this.f29449p.d(canvas, this.f29467m, y(), 1.0f, this.f29456b.f29421d, getAlpha(), iA);
            } else {
                this.f29449p.d(canvas, this.f29467m, 0.0f, 1.0f, bVar.f29421d, getAlpha(), 0);
            }
            this.f29449p.c(canvas, this.f29467m, this.f29452s, getAlpha());
            this.f29449p.b(canvas, this.f29467m, this.f29456b.f29420c[0], getAlpha());
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f29449p.e();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f29449p.f();
    }

    @Override // com.google.android.material.progressindicator.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.g
    public /* bridge */ /* synthetic */ boolean i() {
        return super.i();
    }

    @Override // com.google.android.material.progressindicator.g, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // com.google.android.material.progressindicator.g
    public /* bridge */ /* synthetic */ boolean j() {
        return super.j();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f29451r.r();
        A(getLevel() / 10000.0f);
    }

    @Override // com.google.android.material.progressindicator.g
    public /* bridge */ /* synthetic */ boolean k() {
        return super.k();
    }

    @Override // com.google.android.material.progressindicator.g
    public /* bridge */ /* synthetic */ void m(androidx.vectordrawable.graphics.drawable.b bVar) {
        super.m(bVar);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i11) {
        if (this.f29453t) {
            this.f29451r.r();
            A(i11 / 10000.0f);
            return true;
        }
        this.f29451r.h(y() * 10000.0f);
        this.f29451r.l(i11);
        return true;
    }

    @Override // com.google.android.material.progressindicator.g
    public /* bridge */ /* synthetic */ boolean q(boolean z10, boolean z11, boolean z12) {
        return super.q(z10, z11, z12);
    }

    @Override // com.google.android.material.progressindicator.g
    boolean r(boolean z10, boolean z11, boolean z12) {
        boolean zR = super.r(z10, z11, z12);
        float fA = this.f29457c.a(this.f29455a.getContentResolver());
        if (fA == 0.0f) {
            this.f29453t = true;
        } else {
            this.f29453t = false;
            this.f29450q.f(50.0f / fA);
        }
        return zR;
    }

    @Override // com.google.android.material.progressindicator.g
    public /* bridge */ /* synthetic */ boolean s(androidx.vectordrawable.graphics.drawable.b bVar) {
        return super.s(bVar);
    }

    @Override // com.google.android.material.progressindicator.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i11) {
        super.setAlpha(i11);
    }

    @Override // com.google.android.material.progressindicator.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.progressindicator.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z10, boolean z11) {
        return super.setVisible(z10, z11);
    }

    @Override // com.google.android.material.progressindicator.g, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.google.android.material.progressindicator.g, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    h x() {
        return this.f29449p;
    }

    void z(h hVar) {
        this.f29449p = hVar;
    }
}
