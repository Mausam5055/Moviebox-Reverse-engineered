package com.cloud.tmc.miniapp.utils.toast.style;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.content.b;
import com.cloud.tmc.integration.utils.ext.CommonExtKt;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.utils.toast.config.IToastStyle;
import com.cloud.tmc.miniapp.utils.toast.config.ToastType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class StateToastStyle implements IToastStyle<View> {
    private final boolean textShow;
    private final ToastType type;

    public StateToastStyle(ToastType type, boolean z10) {
        Intrinsics.h(type, "type");
        this.type = type;
        this.textShow = z10;
    }

    public /* synthetic */ StateToastStyle(ToastType toastType, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(toastType, (i11 & 2) != 0 ? true : z10);
    }

    private final Drawable getBackgroundDrawable(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(b.getColor(context, R.color.mini_black70));
        gradientDrawable.setCornerRadius(TypedValue.applyDimension(1, 8.0f, context.getResources().getDisplayMetrics()));
        return gradientDrawable;
    }

    private final float getTextSize(Context context) {
        Resources resources = context.getResources();
        return TypedValue.applyDimension(2, 12.0f, resources != null ? resources.getDisplayMetrics() : null);
    }

    public final View createIconView(Context context) {
        Intrinsics.h(context, "context");
        AppCompatImageView appCompatImageView = new AppCompatImageView(context);
        appCompatImageView.setId(android.R.id.icon);
        appCompatImageView.setLayoutParams(new ViewGroup.LayoutParams(CommonExtKt.getDp2px(44), CommonExtKt.getDp2px(44)));
        appCompatImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        return appCompatImageView;
    }

    public final View createTextView(Context context) {
        Intrinsics.h(context, "context");
        TextView textView = new TextView(context);
        textView.setId(android.R.id.message);
        textView.setGravity(17);
        textView.setTextColor(b.getColor(context, R.color.mini_color_white));
        textView.setTextSize(0, getTextSize(context));
        textView.setMaxLines(1);
        textView.setMaxEms(7);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
        textView.setPaddingRelative(0, CommonExtKt.getDp2px(8), 0, 0);
        textView.setLayoutParams(layoutParams);
        ViewExtKt.toVisibleOrGone(textView, this.textShow);
        return textView;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public View createView(Context context) {
        Intrinsics.h(context, "context");
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(context);
        linearLayoutCompat.setId(android.R.id.content);
        linearLayoutCompat.setOrientation(1);
        linearLayoutCompat.setGravity(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(CommonExtKt.getDp2px(120), CommonExtKt.getDp2px(120));
        linearLayoutCompat.setPaddingRelative(CommonExtKt.getDp2px(12), CommonExtKt.getDp2px(26), CommonExtKt.getDp2px(12), 0);
        linearLayoutCompat.setLayoutParams(layoutParams);
        linearLayoutCompat.setBackground(getBackgroundDrawable(context));
        linearLayoutCompat.addView(createIconView(context));
        linearLayoutCompat.addView(createTextView(context));
        return linearLayoutCompat;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public int getGravity() {
        return IToastStyle.DefaultImpls.getGravity(this);
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public float getHorizontalMargin() {
        return IToastStyle.DefaultImpls.getHorizontalMargin(this);
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToastStyle
    public ToastType getToastType() {
        return this.type;
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
