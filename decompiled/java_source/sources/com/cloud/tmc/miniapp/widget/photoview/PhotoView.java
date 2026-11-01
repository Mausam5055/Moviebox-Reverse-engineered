package com.cloud.tmc.miniapp.widget.photoview;

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

/* JADX INFO: loaded from: classes3.dex */
public class PhotoView extends AppCompatImageView {
    public OooOOOO OooO00o;
    public ImageView.ScaleType OooO0O0;

    public PhotoView(Context context) {
        this(context, null);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        OooO00o();
    }

    public final void OooO00o() {
        this.OooO00o = new OooOOOO(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.OooO0O0;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.OooO0O0 = null;
        }
    }

    public OooOOOO getAttacher() {
        return this.OooO00o;
    }

    public RectF getDisplayRect() {
        return this.OooO00o.OooO0OO();
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.OooO00o.OooOOO0;
    }

    public float getMaximumScale() {
        return this.OooO00o.OooO0o0;
    }

    public float getMediumScale() {
        return this.OooO00o.OooO0Oo;
    }

    public float getMinimumScale() {
        return this.OooO00o.OooO0OO;
    }

    public float getScale() {
        return this.OooO00o.OooO0o0();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.OooO00o.OooOooO;
    }

    public void setAllowParentInterceptOnEdge(boolean z10) {
        this.OooO00o.OooO0o = z10;
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i11, int i12, int i13, int i14) {
        boolean frame = super.setFrame(i11, i12, i13, i14);
        if (frame) {
            this.OooO00o.OooO0oO();
        }
        return frame;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        OooOOOO oooOOOO = this.OooO00o;
        if (oooOOOO != null) {
            oooOOOO.OooO0oO();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i11) {
        super.setImageResource(i11);
        OooOOOO oooOOOO = this.OooO00o;
        if (oooOOOO != null) {
            oooOOOO.OooO0oO();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        OooOOOO oooOOOO = this.OooO00o;
        if (oooOOOO != null) {
            oooOOOO.OooO0oO();
        }
    }

    public void setMaximumScale(float f11) {
        OooOOOO oooOOOO = this.OooO00o;
        OooOo00.OooO00o(oooOOOO.OooO0OO, oooOOOO.OooO0Oo, f11);
        oooOOOO.OooO0o0 = f11;
    }

    public void setMediumScale(float f11) {
        OooOOOO oooOOOO = this.OooO00o;
        OooOo00.OooO00o(oooOOOO.OooO0OO, f11, oooOOOO.OooO0o0);
        oooOOOO.OooO0Oo = f11;
    }

    public void setMinimumScale(float f11) {
        OooOOOO oooOOOO = this.OooO00o;
        OooOo00.OooO00o(f11, oooOOOO.OooO0Oo, oooOOOO.OooO0o0);
        oooOOOO.OooO0OO = f11;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.OooO00o.OooOo0 = onClickListener;
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.OooO00o.OooOO0.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.OooO00o.OooOo0O = onLongClickListener;
    }

    public void setOnMatrixChangeListener(OooO0OO oooO0OO) {
        this.OooO00o.OooOOo0 = oooO0OO;
    }

    public void setOnOutsidePhotoTapListener(OooO0o oooO0o) {
        this.OooO00o.OooOOoo = oooO0o;
    }

    public void setOnPhotoTapListener(OooO oooO) {
        this.OooO00o.OooOOo = oooO;
    }

    public void setOnScaleChangeListener(OooOO0 oooOO0) {
        this.OooO00o.OooOo0o = oooOO0;
    }

    public void setOnSingleFlingListener(OooOO0O oooOO0O) {
        this.OooO00o.OooOo = oooOO0O;
    }

    public void setOnViewDragListener(OooOOO0 oooOOO0) {
        this.OooO00o.OooOoO0 = oooOOO0;
    }

    public void setOnViewTapListener(OooOOO oooOOO) {
        this.OooO00o.OooOo00 = oooOOO;
    }

    public void setRotationBy(float f11) {
        OooOOOO oooOOOO = this.OooO00o;
        oooOOOO.OooOOO.postRotate(f11 % 360.0f);
        oooOOOO.OooO00o();
    }

    public void setRotationTo(float f11) {
        OooOOOO oooOOOO = this.OooO00o;
        oooOOOO.OooOOO.setRotate(f11 % 360.0f);
        oooOOOO.OooO00o();
    }

    public void setScale(float f11) {
        OooOOOO oooOOOO = this.OooO00o;
        oooOOOO.OooO00o(f11, oooOOOO.OooO.getRight() / 2, oooOOOO.OooO.getBottom() / 2, false);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        OooOOOO oooOOOO = this.OooO00o;
        if (oooOOOO == null) {
            this.OooO0O0 = scaleType;
            return;
        }
        if (scaleType == null) {
            return;
        }
        if (OooOo00.OooO00o.OooO00o[scaleType.ordinal()] == 1) {
            throw new IllegalStateException("Matrix scale type is not supported");
        }
        if (scaleType != oooOOOO.OooOooO) {
            oooOOOO.OooOooO = scaleType;
            oooOOOO.OooO0oO();
        }
    }

    public void setZoomTransitionDuration(int i11) {
        this.OooO00o.OooO0O0 = i11;
    }

    public void setZoomable(boolean z10) {
        OooOOOO oooOOOO = this.OooO00o;
        oooOOOO.OooOoo = z10;
        oooOOOO.OooO0oO();
    }
}
