package androidx.vectordrawable.graphics.drawable;

import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
abstract class g extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Drawable f15150a;

    g() {
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            a1.a.a(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.clearColorFilter();
        } else {
            super.clearColorFilter();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.getCurrent() : super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.getMinimumHeight() : super.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.getMinimumWidth() : super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.getState() : super.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.getTransparentRegion() : super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            a1.a.i(drawable);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i11) {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.setLevel(i11) : super.onLevelChange(i11);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i11) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.setChangingConfigurations(i11);
        } else {
            super.setChangingConfigurations(i11);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i11, PorterDuff.Mode mode) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.setColorFilter(i11, mode);
        } else {
            super.setColorFilter(i11, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            drawable.setFilterBitmap(z10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f11, float f12) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            a1.a.k(drawable, f11, f12);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i11, int i12, int i13, int i14) {
        Drawable drawable = this.f15150a;
        if (drawable != null) {
            a1.a.l(drawable, i11, i12, i13, i14);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        Drawable drawable = this.f15150a;
        return drawable != null ? drawable.setState(iArr) : super.setState(iArr);
    }
}
