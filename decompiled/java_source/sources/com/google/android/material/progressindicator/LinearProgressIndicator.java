package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;

/* JADX INFO: loaded from: classes4.dex */
public class LinearProgressIndicator extends BaseProgressIndicator<n> {
    public static final int DEF_STYLE_RES = R$style.Widget_MaterialComponents_LinearProgressIndicator;
    public static final int INDETERMINATE_ANIMATION_TYPE_CONTIGUOUS = 0;
    public static final int INDETERMINATE_ANIMATION_TYPE_DISJOINT = 1;
    public static final int INDICATOR_DIRECTION_END_TO_START = 3;
    public static final int INDICATOR_DIRECTION_LEFT_TO_RIGHT = 0;
    public static final int INDICATOR_DIRECTION_RIGHT_TO_LEFT = 1;
    public static final int INDICATOR_DIRECTION_START_TO_END = 2;

    public LinearProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    public LinearProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11, DEF_STYLE_RES);
        r();
    }

    private void r() {
        k kVar = new k((n) this.f29402a);
        setIndeterminateDrawable(j.u(getContext(), (n) this.f29402a, kVar));
        setProgressDrawable(f.w(getContext(), (n) this.f29402a, kVar));
    }

    public int getIndeterminateAnimationType() {
        return ((n) this.f29402a).f29507h;
    }

    public int getIndicatorDirection() {
        return ((n) this.f29402a).f29508i;
    }

    public int getTrackStopIndicatorSize() {
        return ((n) this.f29402a).f29510k;
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        b bVar = this.f29402a;
        n nVar = (n) bVar;
        boolean z11 = true;
        if (((n) bVar).f29508i != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((n) this.f29402a).f29508i != 2) && (ViewCompat.getLayoutDirection(this) != 0 || ((n) this.f29402a).f29508i != 3))) {
            z11 = false;
        }
        nVar.f29509j = z11;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        int paddingLeft = i11 - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i12 - (getPaddingTop() + getPaddingBottom());
        j indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
        f progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public n i(Context context, AttributeSet attributeSet) {
        return new n(context, attributeSet);
    }

    public void setIndeterminateAnimationType(int i11) {
        if (((n) this.f29402a).f29507h == i11) {
            return;
        }
        if (p() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        b bVar = this.f29402a;
        ((n) bVar).f29507h = i11;
        ((n) bVar).e();
        if (i11 == 0) {
            getIndeterminateDrawable().y(new l((n) this.f29402a));
        } else {
            getIndeterminateDrawable().y(new m(getContext(), (n) this.f29402a));
        }
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(@NonNull int... iArr) {
        super.setIndicatorColor(iArr);
        ((n) this.f29402a).e();
    }

    public void setIndicatorDirection(int i11) {
        b bVar = this.f29402a;
        ((n) bVar).f29508i = i11;
        n nVar = (n) bVar;
        boolean z10 = true;
        if (i11 != 1 && ((ViewCompat.getLayoutDirection(this) != 1 || ((n) this.f29402a).f29508i != 2) && (ViewCompat.getLayoutDirection(this) != 0 || i11 != 3))) {
            z10 = false;
        }
        nVar.f29509j = z10;
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setProgressCompat(int i11, boolean z10) {
        b bVar = this.f29402a;
        if (bVar != null && ((n) bVar).f29507h == 0 && isIndeterminate()) {
            return;
        }
        super.setProgressCompat(i11, z10);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i11) {
        super.setTrackCornerRadius(i11);
        ((n) this.f29402a).e();
        invalidate();
    }

    public void setTrackStopIndicatorSize(int i11) {
        b bVar = this.f29402a;
        if (((n) bVar).f29510k != i11) {
            ((n) bVar).f29510k = Math.min(i11, ((n) bVar).f29418a);
            ((n) this.f29402a).e();
            invalidate();
        }
    }
}
