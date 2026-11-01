package com.google.android.material.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes4.dex */
public class h extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Drawable f29221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Drawable f29222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float[] f29223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f29224d;

    public h(Drawable drawable, Drawable drawable2) {
        this.f29221a = drawable.getConstantState().newDrawable().mutate();
        Drawable drawableMutate = drawable2.getConstantState().newDrawable().mutate();
        this.f29222b = drawableMutate;
        drawableMutate.setAlpha(0);
        this.f29223c = new float[2];
    }

    public void a(float f11) {
        if (this.f29224d != f11) {
            this.f29224d = f11;
            j.a(f11, this.f29223c);
            this.f29221a.setAlpha((int) (this.f29223c[0] * 255.0f));
            this.f29222b.setAlpha((int) (this.f29223c[1] * 255.0f));
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f29221a.draw(canvas);
        this.f29222b.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return Math.max(this.f29221a.getIntrinsicHeight(), this.f29222b.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.max(this.f29221a.getIntrinsicWidth(), this.f29222b.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return Math.max(this.f29221a.getMinimumHeight(), this.f29222b.getMinimumHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return Math.max(this.f29221a.getMinimumWidth(), this.f29222b.getMinimumWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f29221a.isStateful() || this.f29222b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        if (this.f29224d <= 0.5f) {
            this.f29221a.setAlpha(i11);
            this.f29222b.setAlpha(0);
        } else {
            this.f29221a.setAlpha(0);
            this.f29222b.setAlpha(i11);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i11, int i12, int i13, int i14) {
        super.setBounds(i11, i12, i13, i14);
        this.f29221a.setBounds(i11, i12, i13, i14);
        this.f29222b.setBounds(i11, i12, i13, i14);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f29221a.setColorFilter(colorFilter);
        this.f29222b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return this.f29221a.setState(iArr) || this.f29222b.setState(iArr);
    }
}
