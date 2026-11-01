package com.transsion.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;

/* JADX INFO: loaded from: classes6.dex */
public class PhotoView extends AppCompatImageView {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PhotoViewAttachment f47853d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView.ScaleType f47854e;

    public PhotoView(Context context) {
        this(context, null);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        a();
    }

    private void a() {
        this.f47853d = new PhotoViewAttachment(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.f47854e;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.f47854e = null;
        }
    }

    public PhotoViewAttachment getAttachment() {
        return this.f47853d;
    }

    public void getDisplayMatrix(Matrix matrix) {
        this.f47853d.C(matrix);
    }

    public RectF getDisplayRect() {
        return this.f47853d.D();
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.f47853d.G();
    }

    public float getMaximumScale() {
        return this.f47853d.J();
    }

    public float getMediumScale() {
        return this.f47853d.K();
    }

    public float getMinimumScale() {
        return this.f47853d.L();
    }

    public float getScale() {
        return this.f47853d.M();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f47853d.N();
    }

    public void getSuppMatrix(Matrix matrix) {
        this.f47853d.O(matrix);
    }

    public boolean isZoomable() {
        return this.f47853d.R();
    }

    public void setAllowParentInterceptOnEdge(boolean z10) {
        this.f47853d.T(z10);
    }

    public boolean setDisplayMatrix(Matrix matrix) {
        return this.f47853d.U(matrix);
    }

    @Override // android.widget.ImageView
    protected boolean setFrame(int i11, int i12, int i13, int i14) {
        boolean frame = super.setFrame(i11, i12, i13, i14);
        if (frame) {
            this.f47853d.t0();
        }
        return frame;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        PhotoViewAttachment photoViewAttachment = this.f47853d;
        if (photoViewAttachment != null) {
            photoViewAttachment.t0();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i11) {
        super.setImageResource(i11);
        PhotoViewAttachment photoViewAttachment = this.f47853d;
        if (photoViewAttachment != null) {
            photoViewAttachment.t0();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        PhotoViewAttachment photoViewAttachment = this.f47853d;
        if (photoViewAttachment != null) {
            photoViewAttachment.t0();
        }
    }

    public void setMaximumScale(float f11) {
        this.f47853d.W(f11);
    }

    public void setMediumScale(float f11) {
        this.f47853d.X(f11);
    }

    public void setMinimumScale(float f11) {
        this.f47853d.Y(f11);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f47853d.Z(onClickListener);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f47853d.a0(onDoubleTapListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f47853d.b0(onLongClickListener);
    }

    public void setOnMatrixChangeListener(d dVar) {
        this.f47853d.c0(dVar);
    }

    public void setOnOutsidePhotoTapListener(e eVar) {
        this.f47853d.d0(eVar);
    }

    public void setOnPhotoTapListener(f fVar) {
        this.f47853d.e0(fVar);
    }

    public void setOnScaleChangeListener(g gVar) {
        this.f47853d.f0(gVar);
    }

    public void setOnSingleFlingListener(h hVar) {
        this.f47853d.g0(hVar);
    }

    public void setOnViewDragListener(j jVar) {
        this.f47853d.h0(jVar);
    }

    public void setOnViewTapListener(k kVar) {
        this.f47853d.i0(kVar);
    }

    public void setRotationBy(float f11) {
        this.f47853d.j0(f11);
    }

    public void setRotationTo(float f11) {
        this.f47853d.k0(f11);
    }

    public void setScale(float f11) {
        this.f47853d.l0(f11);
    }

    public void setScale(float f11, float f12, float f13, boolean z10) {
        this.f47853d.m0(f11, f12, f13, z10);
    }

    public void setScale(float f11, boolean z10) {
        this.f47853d.n0(f11, z10);
    }

    public void setScaleLevels(float f11, float f12, float f13) {
        this.f47853d.o0(f11, f12, f13);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        PhotoViewAttachment photoViewAttachment = this.f47853d;
        if (photoViewAttachment == null) {
            this.f47854e = scaleType;
        } else {
            photoViewAttachment.p0(scaleType);
        }
    }

    public void setSlideUpAndDownListener(i iVar) {
        this.f47853d.q0(iVar);
    }

    public boolean setSuppMatrix(Matrix matrix) {
        return this.f47853d.U(matrix);
    }

    public void setZoomTransitionDuration(int i11) {
        this.f47853d.r0(i11);
    }

    public void setZoomable(boolean z10) {
        this.f47853d.s0(z10);
    }
}
