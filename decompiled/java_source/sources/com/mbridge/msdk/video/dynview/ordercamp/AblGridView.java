package com.mbridge.msdk.video.dynview.ordercamp;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;

/* JADX INFO: loaded from: classes5.dex */
public class AblGridView extends GridView {
    public AblGridView(Context context) {
        super(context);
    }

    public AblGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AblGridView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i11, int i12) {
        super.onMeasure(i11, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }
}
