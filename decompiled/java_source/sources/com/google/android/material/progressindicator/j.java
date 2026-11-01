package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.google.android.material.R$drawable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class j extends g {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private h f29478p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private i f29479q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Drawable f29480r;

    j(Context context, b bVar, h hVar, i iVar) {
        super(context, bVar);
        z(hVar);
        y(iVar);
    }

    static j t(Context context, e eVar, c cVar) {
        j jVar = new j(context, eVar, cVar, new d(eVar));
        jVar.A(androidx.vectordrawable.graphics.drawable.h.b(context.getResources(), R$drawable.indeterminate_static, null));
        return jVar;
    }

    static j u(Context context, n nVar, k kVar) {
        return new j(context, nVar, kVar, nVar.f29507h == 0 ? new l(nVar) : new m(context, nVar));
    }

    private boolean x() {
        a aVar = this.f29457c;
        return aVar != null && aVar.a(this.f29455a.getContentResolver()) == 0.0f;
    }

    public void A(Drawable drawable) {
        this.f29480r = drawable;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable;
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            if (x() && (drawable = this.f29480r) != null) {
                drawable.setBounds(getBounds());
                a1.a.n(this.f29480r, this.f29456b.f29420c[0]);
                this.f29480r.draw(canvas);
                return;
            }
            canvas.save();
            this.f29478p.g(canvas, getBounds(), h(), k(), j());
            int i11 = this.f29456b.f29424g;
            int alpha = getAlpha();
            if (i11 == 0) {
                this.f29478p.d(canvas, this.f29467m, 0.0f, 1.0f, this.f29456b.f29421d, alpha, 0);
            } else {
                h.a aVar = (h.a) this.f29479q.f29477b.get(0);
                List list = this.f29479q.f29477b;
                h.a aVar2 = (h.a) list.get(list.size() - 1);
                h hVar = this.f29478p;
                if (hVar instanceof k) {
                    hVar.d(canvas, this.f29467m, 0.0f, aVar.f29472a, this.f29456b.f29421d, alpha, i11);
                    this.f29478p.d(canvas, this.f29467m, aVar2.f29473b, 1.0f, this.f29456b.f29421d, alpha, i11);
                } else {
                    alpha = 0;
                    hVar.d(canvas, this.f29467m, aVar2.f29473b, 1.0f + aVar.f29472a, this.f29456b.f29421d, 0, i11);
                }
            }
            for (int i12 = 0; i12 < this.f29479q.f29477b.size(); i12++) {
                h.a aVar3 = (h.a) this.f29479q.f29477b.get(i12);
                this.f29478p.c(canvas, this.f29467m, aVar3, getAlpha());
                if (i12 > 0 && i11 > 0) {
                    this.f29478p.d(canvas, this.f29467m, ((h.a) this.f29479q.f29477b.get(i12 - 1)).f29473b, aVar3.f29472a, this.f29456b.f29421d, alpha, i11);
                }
            }
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f29478p.e();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f29478p.f();
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

    @Override // com.google.android.material.progressindicator.g
    public /* bridge */ /* synthetic */ boolean k() {
        return super.k();
    }

    @Override // com.google.android.material.progressindicator.g
    public /* bridge */ /* synthetic */ void m(androidx.vectordrawable.graphics.drawable.b bVar) {
        super.m(bVar);
    }

    @Override // com.google.android.material.progressindicator.g
    public /* bridge */ /* synthetic */ boolean q(boolean z10, boolean z11, boolean z12) {
        return super.q(z10, z11, z12);
    }

    @Override // com.google.android.material.progressindicator.g
    boolean r(boolean z10, boolean z11, boolean z12) {
        Drawable drawable;
        boolean zR = super.r(z10, z11, z12);
        if (x() && (drawable = this.f29480r) != null) {
            return drawable.setVisible(z10, z11);
        }
        if (!isRunning()) {
            this.f29479q.a();
        }
        if (z10 && z12) {
            this.f29479q.g();
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

    i v() {
        return this.f29479q;
    }

    h w() {
        return this.f29478p;
    }

    void y(i iVar) {
        this.f29479q = iVar;
        iVar.e(this);
    }

    void z(h hVar) {
        this.f29478p = hVar;
    }
}
