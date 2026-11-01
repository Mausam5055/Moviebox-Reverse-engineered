package com.mbridge.msdk.video.dynview.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;

/* JADX INFO: loaded from: classes5.dex */
public class ObservableScrollView extends HorizontalScrollView {
    public ObservableScrollView(Context context) {
        super(context);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    @Override // android.widget.HorizontalScrollView
    public void fling(int i11) {
        super.fling(i11 / 4);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i11, int i12, int i13, int i14) {
        super.onScrollChanged(i11, i12, i13, i14);
    }
}
