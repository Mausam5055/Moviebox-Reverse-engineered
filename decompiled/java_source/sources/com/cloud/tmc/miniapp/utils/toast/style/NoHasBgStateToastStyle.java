package com.cloud.tmc.miniapp.utils.toast.style;

import android.R;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.cloud.tmc.integration.utils.ext.CommonExtKt;
import com.cloud.tmc.miniapp.utils.toast.config.ToastType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class NoHasBgStateToastStyle extends StateToastStyle {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoHasBgStateToastStyle(ToastType type) {
        super(type, false);
        Intrinsics.h(type, "type");
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.style.StateToastStyle, com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public View createView(Context context) {
        Intrinsics.h(context, "context");
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(R.id.content);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(CommonExtKt.getDp2px(120), CommonExtKt.getDp2px(120)));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(CommonExtKt.getDp2px(40), CommonExtKt.getDp2px(40));
        layoutParams.gravity = 17;
        frameLayout.addView(createIconView(context), layoutParams);
        frameLayout.addView(createTextView(context), layoutParams);
        return frameLayout;
    }
}
