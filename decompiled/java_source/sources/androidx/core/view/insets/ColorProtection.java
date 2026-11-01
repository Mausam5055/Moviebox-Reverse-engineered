package androidx.core.view.insets;

import android.graphics.drawable.ColorDrawable;

/* JADX INFO: loaded from: classes.dex */
public class ColorProtection extends Protection {
    private int mColor;
    private final ColorDrawable mDrawable;
    private boolean mHasColor;

    public ColorProtection(int i11) {
        super(i11);
        this.mDrawable = new ColorDrawable();
        this.mColor = 0;
    }

    public ColorProtection(int i11, int i12) {
        this(i11);
        setColor(i12);
    }

    private void setColorInner(int i11) {
        if (this.mColor != i11) {
            this.mColor = i11;
            this.mDrawable.setColor(i11);
            setDrawable(this.mDrawable);
        }
    }

    @Override // androidx.core.view.insets.Protection
    void dispatchColorHint(int i11) {
        if (this.mHasColor) {
            return;
        }
        setColorInner(i11);
    }

    public int getColor() {
        return this.mColor;
    }

    @Override // androidx.core.view.insets.Protection
    boolean occupiesCorners() {
        return true;
    }

    public void setColor(int i11) {
        this.mHasColor = true;
        setColorInner(i11);
    }
}
