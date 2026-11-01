package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;

/* JADX INFO: loaded from: classes4.dex */
public class CircularProgressIndicator extends BaseProgressIndicator<e> {
    public static final int DEF_STYLE_RES = R$style.Widget_MaterialComponents_CircularProgressIndicator;
    public static final int INDICATOR_DIRECTION_CLOCKWISE = 0;
    public static final int INDICATOR_DIRECTION_COUNTERCLOCKWISE = 1;

    public CircularProgressIndicator(@NonNull Context context) {
        this(context, null);
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11, DEF_STYLE_RES);
        r();
    }

    private void r() {
        c cVar = new c((e) this.f29402a);
        setIndeterminateDrawable(j.t(getContext(), (e) this.f29402a, cVar));
        setProgressDrawable(f.v(getContext(), (e) this.f29402a, cVar));
    }

    public int getIndicatorDirection() {
        return ((e) this.f29402a).f29447j;
    }

    public int getIndicatorInset() {
        return ((e) this.f29402a).f29446i;
    }

    public int getIndicatorSize() {
        return ((e) this.f29402a).f29445h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public e i(Context context, AttributeSet attributeSet) {
        return new e(context, attributeSet);
    }

    public void setIndicatorDirection(int i11) {
        ((e) this.f29402a).f29447j = i11;
        invalidate();
    }

    public void setIndicatorInset(int i11) {
        b bVar = this.f29402a;
        if (((e) bVar).f29446i != i11) {
            ((e) bVar).f29446i = i11;
            invalidate();
        }
    }

    public void setIndicatorSize(int i11) {
        int iMax = Math.max(i11, getTrackThickness() * 2);
        b bVar = this.f29402a;
        if (((e) bVar).f29445h != iMax) {
            ((e) bVar).f29445h = iMax;
            ((e) bVar).e();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i11) {
        super.setTrackThickness(i11);
        ((e) this.f29402a).e();
    }
}
