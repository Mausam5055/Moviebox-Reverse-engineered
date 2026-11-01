package com.hisavana.common.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hisavana.common.base.BaseNativeViewHolder;

/* JADX INFO: loaded from: classes4.dex */
public class TIconView extends FrameLayout {
    private static final String TAG = "TAdIconView";

    public TIconView(@NonNull Context context) {
        super(context);
    }

    public TIconView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TIconView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    public void attachLayout(@NonNull BaseNativeViewHolder baseNativeViewHolder) {
        if (baseNativeViewHolder == null) {
            return;
        }
        View iconView = baseNativeViewHolder.getIconView(getContext());
        if (iconView == null) {
            setVisibility(8);
            return;
        }
        removeAllViews();
        addView(iconView, new FrameLayout.LayoutParams(-1, -1));
        setVisibility(0);
    }

    public View getIconView() {
        return getChildAt(0);
    }
}
