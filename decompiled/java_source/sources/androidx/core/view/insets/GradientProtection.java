package androidx.core.view.insets;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.animation.PathInterpolator;

/* JADX INFO: loaded from: classes.dex */
public class GradientProtection extends Protection {
    private static final float[] ALPHAS;
    private int mColor;
    private final int[] mColors;
    private final GradientDrawable mDrawable;
    private boolean mHasColor;
    private float mScale;

    static {
        float[] fArr = new float[100];
        ALPHAS = fArr;
        PathInterpolator pathInterpolator = new PathInterpolator(0.42f, 0.0f, 0.58f, 1.0f);
        int length = fArr.length - 1;
        for (int i11 = length; i11 >= 0; i11--) {
            ALPHAS[i11] = pathInterpolator.getInterpolation((length - i11) / length);
        }
    }

    public GradientProtection(int i11) {
        super(i11);
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.mDrawable = gradientDrawable;
        this.mColors = new int[ALPHAS.length];
        this.mColor = 0;
        this.mScale = 1.2f;
        if (i11 == 1) {
            gradientDrawable.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
            return;
        }
        if (i11 == 2) {
            gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        } else if (i11 == 4) {
            gradientDrawable.setOrientation(GradientDrawable.Orientation.RIGHT_LEFT);
        } else {
            if (i11 != 8) {
                return;
            }
            gradientDrawable.setOrientation(GradientDrawable.Orientation.BOTTOM_TOP);
        }
    }

    public GradientProtection(int i11, int i12) {
        this(i11);
        setColor(i12);
    }

    private void setColorInner(int i11) {
        if (this.mColor != i11) {
            this.mColor = i11;
            toColors(i11, this.mColors);
            this.mDrawable.setColors(this.mColors);
            setDrawable(this.mDrawable);
        }
    }

    private static void toColors(int i11, int[] iArr) {
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr[length] = Color.argb((int) (ALPHAS[length] * Color.alpha(i11)), Color.red(i11), Color.green(i11), Color.blue(i11));
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

    public float getScale() {
        return this.mScale;
    }

    @Override // androidx.core.view.insets.Protection
    int getThickness(int i11) {
        return (int) (this.mScale * i11);
    }

    public void setColor(int i11) {
        this.mHasColor = true;
        setColorInner(i11);
    }

    public void setScale(float f11) {
        if (f11 < 0.0f) {
            throw new IllegalArgumentException("Scale must not be negative.");
        }
        this.mScale = f11;
        updateLayout();
    }
}
