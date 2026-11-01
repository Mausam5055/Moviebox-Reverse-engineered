package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class Guideline extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f7724a;

    public Guideline(Context context) {
        super(context);
        this.f7724a = true;
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7724a = true;
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7724a = true;
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11);
        this.f7724a = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean z10) {
        this.f7724a = z10;
    }

    public void setGuidelineBegin(int i11) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        if (this.f7724a && bVar.f7662a == i11) {
            return;
        }
        bVar.f7662a = i11;
        setLayoutParams(bVar);
    }

    public void setGuidelineEnd(int i11) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        if (this.f7724a && bVar.f7664b == i11) {
            return;
        }
        bVar.f7664b = i11;
        setLayoutParams(bVar);
    }

    public void setGuidelinePercent(float f11) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        if (this.f7724a && bVar.f7666c == f11) {
            return;
        }
        bVar.f7666c = f11;
        setLayoutParams(bVar);
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
    }
}
