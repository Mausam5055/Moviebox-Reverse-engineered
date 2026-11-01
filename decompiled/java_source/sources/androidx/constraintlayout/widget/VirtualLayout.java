package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.core.widgets.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class VirtualLayout extends ConstraintHelper {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f7734j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f7735k;

    public VirtualLayout(Context context) {
        super(context);
    }

    public VirtualLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VirtualLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void f(ConstraintLayout constraintLayout) {
        e(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.ConstraintLayout_Layout_android_visibility) {
                    this.f7734j = true;
                } else if (index == R$styleable.ConstraintLayout_Layout_android_elevation) {
                    this.f7735k = true;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f7734j || this.f7735k) {
            ViewParent parent = getParent();
            if (parent instanceof ConstraintLayout) {
                ConstraintLayout constraintLayout = (ConstraintLayout) parent;
                int visibility = getVisibility();
                float elevation = getElevation();
                for (int i11 = 0; i11 < this.f7653b; i11++) {
                    View viewById = constraintLayout.getViewById(this.f7652a[i11]);
                    if (viewById != null) {
                        if (this.f7734j) {
                            viewById.setVisibility(visibility);
                        }
                        if (this.f7735k && elevation > 0.0f) {
                            viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                        }
                    }
                }
            }
        }
    }

    public void onMeasure(i iVar, int i11, int i12) {
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        super.setElevation(f11);
        d();
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
        d();
    }
}
