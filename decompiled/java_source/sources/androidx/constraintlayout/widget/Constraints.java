package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class Constraints extends ViewGroup {
    public static final String TAG = "Constraints";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f7720a;

    public static class a extends ConstraintLayout.b {
        public float A0;
        public float B0;
        public float C0;
        public float D0;
        public float E0;
        public float F0;
        public float G0;
        public float H0;
        public float I0;
        public float J0;

        /* JADX INFO: renamed from: x0, reason: collision with root package name */
        public float f7721x0;

        /* JADX INFO: renamed from: y0, reason: collision with root package name */
        public boolean f7722y0;

        /* JADX INFO: renamed from: z0, reason: collision with root package name */
        public float f7723z0;

        public a(int i11, int i12) {
            super(i11, i12);
            this.f7721x0 = 1.0f;
            this.f7722y0 = false;
            this.f7723z0 = 0.0f;
            this.A0 = 0.0f;
            this.B0 = 0.0f;
            this.C0 = 0.0f;
            this.D0 = 1.0f;
            this.E0 = 1.0f;
            this.F0 = 0.0f;
            this.G0 = 0.0f;
            this.H0 = 0.0f;
            this.I0 = 0.0f;
            this.J0 = 0.0f;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7721x0 = 1.0f;
            this.f7722y0 = false;
            this.f7723z0 = 0.0f;
            this.A0 = 0.0f;
            this.B0 = 0.0f;
            this.C0 = 0.0f;
            this.D0 = 1.0f;
            this.E0 = 1.0f;
            this.F0 = 0.0f;
            this.G0 = 0.0f;
            this.H0 = 0.0f;
            this.I0 = 0.0f;
            this.J0 = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ConstraintSet);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.ConstraintSet_android_alpha) {
                    this.f7721x0 = typedArrayObtainStyledAttributes.getFloat(index, this.f7721x0);
                } else if (index == R$styleable.ConstraintSet_android_elevation) {
                    this.f7723z0 = typedArrayObtainStyledAttributes.getFloat(index, this.f7723z0);
                    this.f7722y0 = true;
                } else if (index == R$styleable.ConstraintSet_android_rotationX) {
                    this.B0 = typedArrayObtainStyledAttributes.getFloat(index, this.B0);
                } else if (index == R$styleable.ConstraintSet_android_rotationY) {
                    this.C0 = typedArrayObtainStyledAttributes.getFloat(index, this.C0);
                } else if (index == R$styleable.ConstraintSet_android_rotation) {
                    this.A0 = typedArrayObtainStyledAttributes.getFloat(index, this.A0);
                } else if (index == R$styleable.ConstraintSet_android_scaleX) {
                    this.D0 = typedArrayObtainStyledAttributes.getFloat(index, this.D0);
                } else if (index == R$styleable.ConstraintSet_android_scaleY) {
                    this.E0 = typedArrayObtainStyledAttributes.getFloat(index, this.E0);
                } else if (index == R$styleable.ConstraintSet_android_transformPivotX) {
                    this.F0 = typedArrayObtainStyledAttributes.getFloat(index, this.F0);
                } else if (index == R$styleable.ConstraintSet_android_transformPivotY) {
                    this.G0 = typedArrayObtainStyledAttributes.getFloat(index, this.G0);
                } else if (index == R$styleable.ConstraintSet_android_translationX) {
                    this.H0 = typedArrayObtainStyledAttributes.getFloat(index, this.H0);
                } else if (index == R$styleable.ConstraintSet_android_translationY) {
                    this.I0 = typedArrayObtainStyledAttributes.getFloat(index, this.I0);
                } else if (index == R$styleable.ConstraintSet_android_translationZ) {
                    this.J0 = typedArrayObtainStyledAttributes.getFloat(index, this.J0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public Constraints(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet);
        super.setVisibility(8);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        b(attributeSet);
        super.setVisibility(8);
    }

    private void b(AttributeSet attributeSet) {
        Log.v(TAG, " ################# init");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.b(layoutParams);
    }

    @Override // android.view.ViewGroup
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public b getConstraintSet() {
        if (this.f7720a == null) {
            this.f7720a = new b();
        }
        this.f7720a.s(this);
        return this.f7720a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
    }
}
