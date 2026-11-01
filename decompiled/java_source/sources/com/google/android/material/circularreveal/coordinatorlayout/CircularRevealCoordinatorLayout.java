package com.google.android.material.circularreveal.coordinatorlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;

/* JADX INFO: loaded from: classes4.dex */
public class CircularRevealCoordinatorLayout extends CoordinatorLayout implements c {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final b f28760z;

    public CircularRevealCoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }

    public CircularRevealCoordinatorLayout(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28760z = new b(this);
    }

    @Override // com.google.android.material.circularreveal.b.a
    public void actualDraw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.b.a
    public boolean actualIsOpaque() {
        return super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void buildCircularRevealCache() {
        this.f28760z.a();
    }

    @Override // com.google.android.material.circularreveal.c
    public void destroyCircularRevealCache() {
        this.f28760z.b();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        b bVar = this.f28760z;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f28760z.e();
    }

    @Override // com.google.android.material.circularreveal.c
    public int getCircularRevealScrimColor() {
        return this.f28760z.f();
    }

    @Override // com.google.android.material.circularreveal.c
    @Nullable
    public c.e getRevealInfo() {
        return this.f28760z.h();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        b bVar = this.f28760z;
        return bVar != null ? bVar.j() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f28760z.k(drawable);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setCircularRevealScrimColor(int i11) {
        this.f28760z.l(i11);
    }

    @Override // com.google.android.material.circularreveal.c
    public void setRevealInfo(@Nullable c.e eVar) {
        this.f28760z.m(eVar);
    }
}
