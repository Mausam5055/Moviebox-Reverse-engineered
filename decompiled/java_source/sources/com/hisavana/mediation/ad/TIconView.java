package com.hisavana.mediation.ad;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hisavana.common.R;

/* JADX INFO: loaded from: classes4.dex */
public class TIconView extends com.hisavana.common.view.TIconView {
    public TIconView(@NonNull Context context) {
        super(context);
        init();
    }

    public TIconView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public TIconView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        init();
    }

    public void init() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        ImageView imageView = new ImageView(getContext());
        imageView.setId(R.id.icon_image_view);
        addView(imageView, layoutParams);
    }
}
