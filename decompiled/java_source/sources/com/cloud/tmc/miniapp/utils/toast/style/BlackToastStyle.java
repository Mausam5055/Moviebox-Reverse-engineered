package com.cloud.tmc.miniapp.utils.toast.style;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.b;
import com.cloud.tmc.integration.utils.ext.CommonExtKt;
import com.cloud.tmc.miniapp.utils.toast.config.IToastStyle;
import com.cloud.tmc.miniapp.utils.toast.config.ToastType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class BlackToastStyle implements IToastStyle<View> {
    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    @SuppressLint({"ObsoleteSdkInt"})
    public View createView(Context context) {
        Intrinsics.h(context, "context");
        TextView textView = new TextView(context);
        textView.setId(R.id.message);
        textView.setGravity(getTextGravity(context));
        textView.setTextColor(getTextColor(context));
        textView.setTextSize(0, getTextSize(context));
        textView.setMaxLines(2);
        textView.setMinWidth(CommonExtKt.getDp2px(120));
        textView.setEllipsize(TextUtils.TruncateAt.END);
        int horizontalPadding = getHorizontalPadding(context);
        int verticalPadding = getVerticalPadding(context);
        textView.setPaddingRelative(horizontalPadding, verticalPadding, horizontalPadding, verticalPadding);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.setMarginStart(CommonExtKt.getDp2px(36));
        marginLayoutParams.setMarginEnd(CommonExtKt.getDp2px(36));
        textView.setLayoutParams(marginLayoutParams);
        textView.setBackground(getBackgroundDrawable(context));
        textView.setZ(getTranslationZ(context));
        return textView;
    }

    public final Drawable getBackgroundDrawable(Context context) {
        Intrinsics.h(context, "context");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(b.getColor(context, com.cloud.tmc.miniapp.R.color.mini_black70));
        gradientDrawable.setCornerRadius(TypedValue.applyDimension(1, 8.0f, context.getResources().getDisplayMetrics()));
        return gradientDrawable;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public int getGravity() {
        return IToastStyle.DefaultImpls.getGravity(this);
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public float getHorizontalMargin() {
        return IToastStyle.DefaultImpls.getHorizontalMargin(this);
    }

    public final int getHorizontalPadding(Context context) {
        Intrinsics.h(context, "context");
        return (int) TypedValue.applyDimension(1, 12.0f, context.getResources().getDisplayMetrics());
    }

    public final int getTextColor(Context context) {
        Intrinsics.h(context, "context");
        return b.getColor(context, com.cloud.tmc.miniapp.R.color.mini_color_white);
    }

    public final int getTextGravity(Context context) {
        return 17;
    }

    public final float getTextSize(Context context) {
        Resources resources;
        return TypedValue.applyDimension(2, 14.0f, (context == null || (resources = context.getResources()) == null) ? null : resources.getDisplayMetrics());
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public ToastType getToastType() {
        return ToastType.NONE.INSTANCE;
    }

    public final float getTranslationZ(Context context) {
        Intrinsics.h(context, "context");
        return TypedValue.applyDimension(1, 3.0f, context.getResources().getDisplayMetrics());
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public float getVerticalMargin() {
        return IToastStyle.DefaultImpls.getVerticalMargin(this);
    }

    public final int getVerticalPadding(Context context) {
        Intrinsics.h(context, "context");
        return (int) TypedValue.applyDimension(1, 8.0f, context.getResources().getDisplayMetrics());
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
