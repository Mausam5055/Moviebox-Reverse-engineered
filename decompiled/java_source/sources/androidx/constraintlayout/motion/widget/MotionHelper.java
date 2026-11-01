package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MotionHelper extends ConstraintHelper implements MotionLayout.h {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f7142j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f7143k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f7144l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected View[] f7145m;

    public MotionHelper(Context context) {
        super(context);
        this.f7142j = false;
        this.f7143k = false;
    }

    public MotionHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7142j = false;
        this.f7143k = false;
        k(attributeSet);
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7142j = false;
        this.f7143k = false;
        k(attributeSet);
    }

    public float getProgress() {
        return this.f7144l;
    }

    public boolean isDecorator() {
        return false;
    }

    public boolean isUseOnHide() {
        return this.f7143k;
    }

    public boolean isUsedOnShow() {
        return this.f7142j;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionHelper);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.MotionHelper_onShow) {
                    this.f7142j = typedArrayObtainStyledAttributes.getBoolean(index, this.f7142j);
                } else if (index == R$styleable.MotionHelper_onHide) {
                    this.f7143k = typedArrayObtainStyledAttributes.getBoolean(index, this.f7143k);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void onFinishedMotionScene(MotionLayout motionLayout) {
    }

    public void onPostDraw(Canvas canvas) {
    }

    public void onPreDraw(Canvas canvas) {
    }

    public void onPreSetup(MotionLayout motionLayout, HashMap<View, m> map) {
    }

    public void onTransitionChange(MotionLayout motionLayout, int i11, int i12, float f11) {
    }

    public void onTransitionCompleted(MotionLayout motionLayout, int i11) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.h
    public void onTransitionStarted(MotionLayout motionLayout, int i11, int i12) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.h
    public void onTransitionTrigger(MotionLayout motionLayout, int i11, boolean z10, float f11) {
    }

    public void setProgress(float f11) {
        this.f7144l = f11;
        int i11 = 0;
        if (this.f7653b > 0) {
            this.f7145m = j((ConstraintLayout) getParent());
            while (i11 < this.f7653b) {
                setProgress(this.f7145m[i11], f11);
                i11++;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        while (i11 < childCount) {
            View childAt = viewGroup.getChildAt(i11);
            if (!(childAt instanceof MotionHelper)) {
                setProgress(childAt, f11);
            }
            i11++;
        }
    }

    public void setProgress(View view, float f11) {
    }
}
