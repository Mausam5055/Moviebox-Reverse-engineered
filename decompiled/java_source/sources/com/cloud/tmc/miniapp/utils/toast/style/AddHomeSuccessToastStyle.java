package com.cloud.tmc.miniapp.utils.toast.style;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.utils.toast.config.IToastStyle;
import com.cloud.tmc.miniapp.utils.toast.config.ToastType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AddHomeSuccessToastStyle implements IToastStyle<View> {
    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public View createView(Context context) {
        Intrinsics.h(context, "context");
        View inflate = View.inflate(context, R.layout.mini_toast_add_home_success_layout, null);
        ((TextView) inflate.findViewById(R.id.tv_text_add_home_msg)).setId(android.R.id.message);
        Intrinsics.g(inflate, "inflate");
        return inflate;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public int getGravity() {
        return 80;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public float getHorizontalMargin() {
        return IToastStyle.DefaultImpls.getHorizontalMargin(this);
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public ToastType getToastType() {
        return ToastType.NONE.INSTANCE;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public float getVerticalMargin() {
        return IToastStyle.DefaultImpls.getVerticalMargin(this);
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public int getXOffset() {
        return IToastStyle.DefaultImpls.getXOffset(this);
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public int getYOffset() {
        return IToastStyle.DefaultImpls.getYOffset(this);
    }
}
