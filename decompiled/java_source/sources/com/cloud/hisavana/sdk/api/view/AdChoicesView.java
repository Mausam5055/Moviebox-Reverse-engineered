package com.cloud.hisavana.sdk.api.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"AppCompatCustomView"})
public class AdChoicesView extends ImageView {
    public AdChoicesView(Context context) {
        super(context);
        a();
    }

    public AdChoicesView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public AdChoicesView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        a();
    }

    private void a() {
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    }
}
