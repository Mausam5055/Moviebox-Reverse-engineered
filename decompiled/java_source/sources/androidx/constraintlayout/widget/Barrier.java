package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public class Barrier extends ConstraintHelper {
    public static final int BOTTOM = 3;
    public static final int END = 6;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int START = 5;
    public static final int TOP = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f7640j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f7641k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private androidx.constraintlayout.core.widgets.a f7642l;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        super.setVisibility(8);
    }

    private void l(ConstraintWidget constraintWidget, int i11, boolean z10) {
        this.f7641k = i11;
        if (z10) {
            int i12 = this.f7640j;
            if (i12 == 5) {
                this.f7641k = 1;
            } else if (i12 == 6) {
                this.f7641k = 0;
            }
        } else {
            int i13 = this.f7640j;
            if (i13 == 5) {
                this.f7641k = 0;
            } else if (i13 == 6) {
                this.f7641k = 1;
            }
        }
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.a) {
            ((androidx.constraintlayout.core.widgets.a) constraintWidget).E1(this.f7641k);
        }
    }

    @Deprecated
    public boolean allowsGoneWidget() {
        return this.f7642l.y1();
    }

    public boolean getAllowsGoneWidget() {
        return this.f7642l.y1();
    }

    public int getMargin() {
        return this.f7642l.A1();
    }

    public int getType() {
        return this.f7640j;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        this.f7642l = new androidx.constraintlayout.core.widgets.a();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f7642l.D1(typedArrayObtainStyledAttributes.getBoolean(index, true));
                } else if (index == R$styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.f7642l.F1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f7655d = this.f7642l;
        validateParams();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void loadParameters(b.a aVar, t0.b bVar, ConstraintLayout.b bVar2, SparseArray<ConstraintWidget> sparseArray) {
        super.loadParameters(aVar, bVar, bVar2, sparseArray);
        if (bVar instanceof androidx.constraintlayout.core.widgets.a) {
            androidx.constraintlayout.core.widgets.a aVar2 = (androidx.constraintlayout.core.widgets.a) bVar;
            l(aVar2, aVar.f7767e.f7799h0, ((androidx.constraintlayout.core.widgets.d) bVar.M()).U1());
            aVar2.D1(aVar.f7767e.f7815p0);
            aVar2.F1(aVar.f7767e.f7801i0);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void resolveRtl(ConstraintWidget constraintWidget, boolean z10) {
        l(constraintWidget, this.f7640j, z10);
    }

    public void setAllowsGoneWidget(boolean z10) {
        this.f7642l.D1(z10);
    }

    public void setDpMargin(int i11) {
        this.f7642l.F1((int) ((i11 * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int i11) {
        this.f7642l.F1(i11);
    }

    public void setType(int i11) {
        this.f7640j = i11;
    }
}
