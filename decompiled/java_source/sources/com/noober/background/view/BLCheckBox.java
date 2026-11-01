package com.noober.background.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.noober.background.BackgroundFactory;

/* JADX INFO: loaded from: classes5.dex */
public class BLCheckBox extends AppCompatCheckBox {
    public BLCheckBox(Context context) {
        super(context);
    }

    public BLCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public BLCheckBox(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        BackgroundFactory.setViewBackground(context, attributeSet, this);
    }
}
