package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.miniapp.R;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class SettingBar extends FrameLayout {
    public final LinearLayout OooO00o;
    public final TextView OooO0O0;
    public final TextView OooO0OO;
    public final View OooO0Oo;
    public int OooO0o;
    public int OooO0o0;
    public int OooO0oO;
    public int OooO0oo;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SettingBar(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SettingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SettingBar(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SettingBar(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.OooO00o = linearLayout;
        TextView textView = new TextView(getContext());
        this.OooO0O0 = textView;
        TextView textView2 = new TextView(getContext());
        this.OooO0OO = textView2;
        View view = new View(getContext());
        this.OooO0Oo = view;
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2, 16));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.gravity = 16;
        layoutParams.weight = 1.0f;
        textView.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 16;
        textView2.setLayoutParams(layoutParams2);
        textView2.setLayoutParams(layoutParams2);
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, 1, 80));
        textView.setGravity(8388627);
        textView2.setGravity(8388629);
        textView.setSingleLine(true);
        textView2.setSingleLine(true);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView2.setEllipsize(truncateAt);
        textView.setLineSpacing(getResources().getDimension(R.dimen.mini_dp_5), textView.getLineSpacingMultiplier());
        textView2.setLineSpacing(getResources().getDimension(R.dimen.mini_dp_5), textView2.getLineSpacingMultiplier());
        textView.setPaddingRelative((int) getResources().getDimension(R.dimen.mini_dp_15), (int) getResources().getDimension(R.dimen.mini_dp_12), (int) getResources().getDimension(R.dimen.mini_dp_15), (int) getResources().getDimension(R.dimen.mini_dp_12));
        textView2.setPaddingRelative((int) getResources().getDimension(R.dimen.mini_dp_15), (int) getResources().getDimension(R.dimen.mini_dp_12), (int) getResources().getDimension(R.dimen.mini_dp_15), (int) getResources().getDimension(R.dimen.mini_dp_12));
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.Mini_SettingBar);
        Intrinsics.g(typedArrayObtainStyledAttributes, "getContext().obtainStyle…tyleable.Mini_SettingBar)");
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_leftText)) {
            OooO00o(typedArrayObtainStyledAttributes.getString(R.styleable.Mini_SettingBar_bar_leftText));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_rightText)) {
            OooO0OO(typedArrayObtainStyledAttributes.getString(R.styleable.Mini_SettingBar_bar_rightText));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_leftTextHint)) {
            OooO0O0(typedArrayObtainStyledAttributes.getString(R.styleable.Mini_SettingBar_bar_leftTextHint));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_rightTextHint)) {
            OooO0Oo(typedArrayObtainStyledAttributes.getString(R.styleable.Mini_SettingBar_bar_rightTextHint));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_leftDrawableSize)) {
            OooO0O0(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Mini_SettingBar_bar_leftDrawableSize, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_rightDrawableSize)) {
            OooO0oo(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Mini_SettingBar_bar_rightDrawableSize, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_leftDrawableTint)) {
            OooO0OO(typedArrayObtainStyledAttributes.getColor(R.styleable.Mini_SettingBar_bar_leftDrawableTint, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_rightDrawableTint)) {
            OooO(typedArrayObtainStyledAttributes.getColor(R.styleable.Mini_SettingBar_bar_rightDrawableTint, 0));
        }
        OooO00o(typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_leftDrawablePadding) ? typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Mini_SettingBar_bar_leftDrawablePadding, 0) : (int) getResources().getDimension(R.dimen.mini_dp_10));
        OooO0oO(typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_rightDrawablePadding) ? typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Mini_SettingBar_bar_rightDrawablePadding, 0) : (int) getResources().getDimension(R.dimen.mini_dp_10));
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_leftDrawable)) {
            OooO00o(typedArrayObtainStyledAttributes.getDrawable(R.styleable.Mini_SettingBar_bar_leftDrawable));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_rightDrawable)) {
            OooO0OO(typedArrayObtainStyledAttributes.getDrawable(R.styleable.Mini_SettingBar_bar_rightDrawable));
        }
        OooO0Oo(typedArrayObtainStyledAttributes.getColor(R.styleable.Mini_SettingBar_bar_leftTextColor, androidx.core.content.b.getColor(getContext(), R.color.mini_color_title_text)));
        OooOO0(typedArrayObtainStyledAttributes.getColor(R.styleable.Mini_SettingBar_bar_rightTextColor, androidx.core.content.b.getColor(getContext(), R.color.mini_color_666666)));
        OooO00o(0, typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Mini_SettingBar_bar_leftTextSize, (int) getResources().getDimension(R.dimen.mini_sp_14)));
        OooO0O0(0, typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Mini_SettingBar_bar_rightTextSize, (int) getResources().getDimension(R.dimen.mini_sp_14)));
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_lineDrawable)) {
            OooO0O0(typedArrayObtainStyledAttributes.getDrawable(R.styleable.Mini_SettingBar_bar_lineDrawable));
        } else {
            OooO0O0(new ColorDrawable(androidx.core.content.b.getColor(context, R.color.mini_color_divider_01)));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_lineVisible)) {
            OooO00o(typedArrayObtainStyledAttributes.getBoolean(R.styleable.Mini_SettingBar_bar_lineVisible, true));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_lineSize)) {
            OooO0o(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Mini_SettingBar_bar_lineSize, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_SettingBar_bar_lineMargin)) {
            OooO0o0(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Mini_SettingBar_bar_lineMargin, 0));
        }
        if (getBackground() == null) {
            setBackground(new ColorDrawable(androidx.core.content.b.getColor(getContext(), R.color.mini_color_surface_01)));
            setFocusable(true);
            setClickable(true);
        }
        typedArrayObtainStyledAttributes.recycle();
        ViewExtKt.removeSelf(textView);
        linearLayout.addView(textView);
        ViewExtKt.removeSelf(textView2);
        linearLayout.addView(textView2);
        ViewExtKt.removeSelf(linearLayout);
        addView(linearLayout, 0);
        ViewExtKt.removeSelf(view);
        addView(view, 1);
    }

    public /* synthetic */ SettingBar(Context context, AttributeSet attributeSet, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i13 & 2) != 0 ? null : attributeSet, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0 : i12);
    }

    public final SettingBar OooO(int i11) {
        this.OooO0o = i11;
        Drawable rightDrawable = getRightDrawable();
        if (rightDrawable != null && i11 != 0) {
            rightDrawable.mutate();
            rightDrawable.setColorFilter(i11, PorterDuff.Mode.SRC_IN);
        }
        return this;
    }

    public final SettingBar OooO00o(int i11) {
        this.OooO0O0.setCompoundDrawablePadding(i11);
        return this;
    }

    public final SettingBar OooO00o(int i11, float f11) {
        this.OooO0O0.setTextSize(i11, f11);
        return this;
    }

    public final SettingBar OooO00o(Drawable drawable) {
        this.OooO0O0.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        OooO0O0(this.OooO0oO);
        int i11 = this.OooO0o0;
        this.OooO0o0 = i11;
        Drawable leftDrawable = getLeftDrawable();
        if (leftDrawable != null && i11 != 0) {
            leftDrawable.mutate();
            leftDrawable.setColorFilter(i11, PorterDuff.Mode.SRC_IN);
        }
        return this;
    }

    public final SettingBar OooO00o(CharSequence charSequence) {
        this.OooO0O0.setText(charSequence);
        return this;
    }

    public final SettingBar OooO00o(boolean z10) {
        this.OooO0Oo.setVisibility(z10 ? 0 : 8);
        return this;
    }

    public final SettingBar OooO0O0(int i11) {
        this.OooO0oO = i11;
        Drawable leftDrawable = getLeftDrawable();
        if (leftDrawable != null) {
            if (i11 > 0) {
                leftDrawable.setBounds(0, 0, i11, i11);
            } else {
                leftDrawable.setBounds(0, 0, leftDrawable.getIntrinsicWidth(), leftDrawable.getIntrinsicHeight());
            }
            this.OooO0O0.setCompoundDrawables(leftDrawable, null, null, null);
        }
        return this;
    }

    public final SettingBar OooO0O0(int i11, float f11) {
        this.OooO0OO.setTextSize(i11, f11);
        return this;
    }

    public final SettingBar OooO0O0(Drawable drawable) {
        this.OooO0Oo.setBackground(drawable);
        return this;
    }

    public final SettingBar OooO0O0(CharSequence charSequence) {
        this.OooO0O0.setHint(charSequence);
        return this;
    }

    public final SettingBar OooO0OO(int i11) {
        this.OooO0o0 = i11;
        Drawable leftDrawable = getLeftDrawable();
        if (leftDrawable != null && i11 != 0) {
            leftDrawable.mutate();
            leftDrawable.setColorFilter(i11, PorterDuff.Mode.SRC_IN);
        }
        return this;
    }

    public final SettingBar OooO0OO(Drawable drawable) {
        this.OooO0OO.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
        OooO0oo(this.OooO0oo);
        int i11 = this.OooO0o;
        this.OooO0o = i11;
        Drawable rightDrawable = getRightDrawable();
        if (rightDrawable != null && i11 != 0) {
            rightDrawable.mutate();
            rightDrawable.setColorFilter(i11, PorterDuff.Mode.SRC_IN);
        }
        return this;
    }

    public final SettingBar OooO0OO(CharSequence charSequence) {
        this.OooO0OO.setText(charSequence);
        return this;
    }

    public final SettingBar OooO0Oo(int i11) {
        this.OooO0O0.setTextColor(i11);
        return this;
    }

    public final SettingBar OooO0Oo(CharSequence charSequence) {
        this.OooO0OO.setHint(charSequence);
        return this;
    }

    public final SettingBar OooO0o(int i11) {
        FrameLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = (FrameLayout.LayoutParams) this.OooO0Oo.getLayoutParams();
        if (layoutParamsGenerateDefaultLayoutParams == null) {
            layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        }
        if (layoutParamsGenerateDefaultLayoutParams != null) {
            layoutParamsGenerateDefaultLayoutParams.height = i11;
        }
        this.OooO0Oo.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
        return this;
    }

    public final SettingBar OooO0o0(int i11) {
        FrameLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = (FrameLayout.LayoutParams) this.OooO0Oo.getLayoutParams();
        if (layoutParamsGenerateDefaultLayoutParams == null) {
            layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        }
        if (layoutParamsGenerateDefaultLayoutParams != null) {
            layoutParamsGenerateDefaultLayoutParams.leftMargin = i11;
        }
        if (layoutParamsGenerateDefaultLayoutParams != null) {
            layoutParamsGenerateDefaultLayoutParams.rightMargin = i11;
        }
        this.OooO0Oo.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
        return this;
    }

    public final SettingBar OooO0oO(int i11) {
        this.OooO0OO.setCompoundDrawablePadding(i11);
        return this;
    }

    public final SettingBar OooO0oo(int i11) {
        this.OooO0oo = i11;
        Drawable rightDrawable = getRightDrawable();
        if (rightDrawable != null) {
            if (i11 > 0) {
                rightDrawable.setBounds(0, 0, i11, i11);
            } else {
                rightDrawable.setBounds(0, 0, rightDrawable.getIntrinsicWidth(), rightDrawable.getIntrinsicHeight());
            }
            this.OooO0OO.setCompoundDrawables(null, null, rightDrawable, null);
        }
        return this;
    }

    public final SettingBar OooOO0(int i11) {
        this.OooO0OO.setTextColor(i11);
        return this;
    }

    public final Drawable getLeftDrawable() {
        return this.OooO0O0.getCompoundDrawables()[0];
    }

    public final CharSequence getLeftText() {
        return this.OooO0O0.getText();
    }

    public final TextView getLeftView() {
        return this.OooO0O0;
    }

    public final View getLineView() {
        return this.OooO0Oo;
    }

    public final LinearLayout getMainLayout() {
        return this.OooO00o;
    }

    public final Drawable getRightDrawable() {
        return this.OooO0OO.getCompoundDrawables()[2];
    }

    public final CharSequence getRightText() {
        return this.OooO0OO.getText();
    }

    public final TextView getRightView() {
        return this.OooO0OO;
    }
}
