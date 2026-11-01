package com.noober.background.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.BackgroundFactory;

/* JADX INFO: loaded from: classes5.dex */
public class BLConstraintLayout extends ConstraintLayout {
    public BLConstraintLayout(Context context) {
        super(context);
    }

    public BLConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public BLConstraintLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        BackgroundFactory.setViewBackground(context, attributeSet, this);
    }
}
