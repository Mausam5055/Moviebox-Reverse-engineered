package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.GravityCompat;
import com.google.android.material.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes4.dex */
public class ForegroundLinearLayout extends LinearLayoutCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Drawable f29093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f29094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f29095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f29096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f29097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f29098f;

    public ForegroundLinearLayout(@NonNull Context context) {
        this(context, null);
    }

    public ForegroundLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForegroundLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f29094b = new Rect();
        this.f29095c = new Rect();
        this.f29096d = Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE;
        this.f29097e = true;
        this.f29098f = false;
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.ForegroundLinearLayout, i11, 0, new int[0]);
        this.f29096d = typedArrayI.getInt(R$styleable.ForegroundLinearLayout_android_foregroundGravity, this.f29096d);
        Drawable drawable = typedArrayI.getDrawable(R$styleable.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f29097e = typedArrayI.getBoolean(R$styleable.ForegroundLinearLayout_foregroundInsidePadding, true);
        typedArrayI.recycle();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f29093a;
        if (drawable != null) {
            if (this.f29098f) {
                this.f29098f = false;
                Rect rect = this.f29094b;
                Rect rect2 = this.f29095c;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f29097e) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f29096d, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void drawableHotspotChanged(float f11, float f12) {
        super.drawableHotspotChanged(f11, f12);
        Drawable drawable = this.f29093a;
        if (drawable != null) {
            drawable.setHotspot(f11, f12);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f29093a;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f29093a.setState(getDrawableState());
    }

    @Override // android.view.View
    @Nullable
    public Drawable getForeground() {
        return this.f29093a;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f29096d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f29093a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        this.f29098f = z10 | this.f29098f;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        this.f29098f = true;
    }

    @Override // android.view.View
    public void setForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f29093a;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f29093a);
            }
            this.f29093a = drawable;
            this.f29098f = true;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f29096d == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i11) {
        if (this.f29096d != i11) {
            if ((8388615 & i11) == 0) {
                i11 |= GravityCompat.START;
            }
            if ((i11 & 112) == 0) {
                i11 |= 48;
            }
            this.f29096d = i11;
            if (i11 == 119 && this.f29093a != null) {
                this.f29093a.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f29093a;
    }
}
