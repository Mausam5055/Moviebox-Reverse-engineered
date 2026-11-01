package com.cloud.tmc.integration.utils.ext;

import android.os.Build;
import android.text.BidiFormatter;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.miniutils.util.ViewUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\r\n\u0002\b\u0002\u001a\n\u0010\u000b\u001a\u00020\f*\u00020\u0003\u001a#\u0010\r\u001a\u00020\f*\u00020\u00032\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u000f\"\u00020\u0010¢\u0006\u0002\u0010\u0011\u001aL\u0010\u0012\u001a\u00020\f*\u00020\u00032\u0012\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u000f\"\u00020\u00032!\b\u0004\u0010\u0014\u001a\u001b\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u000f\u0012\u0004\u0012\u00020\u00010\u0015¢\u0006\u0002\b\u0016H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0017\u001a#\u0010\u0018\u001a\u00020\f*\u00020\u00032\u0012\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u000f\"\u00020\u0003¢\u0006\u0002\u0010\u0019\u001a\n\u0010\u001a\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\u001b\u001a\u00020\u0001*\u00020\u0003\u001a\u0014\u0010\u001c\u001a\u00020\f*\u00020\u00032\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u001a\n\u0010\u001f\u001a\u00020\f*\u00020\u0003\"*\u0010\u0002\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b\u0002\u0010\u0004\"\u0004\b\u0005\u0010\u0006\"\u0016\u0010\u0007\u001a\u00020\b*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\t\u0010\n\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006 "}, d2 = {AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "isPasswordVisible", "Landroid/widget/TextView;", "(Landroid/widget/TextView;)Z", "setPasswordVisible", "(Landroid/widget/TextView;Z)V", "textString", "", "getTextString", "(Landroid/widget/TextView;)Ljava/lang/String;", "addUnderline", "", "enableWhenAllChecked", "checkBoxes", "", "Landroid/widget/CheckBox;", "(Landroid/widget/TextView;[Landroid/widget/CheckBox;)V", "enableWhenOtherTextChanged", "textViews", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "(Landroid/widget/TextView;[Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V", "enableWhenOtherTextNotEmpty", "(Landroid/widget/TextView;[Landroid/widget/TextView;)V", "isTextEmpty", "isTextNotEmpty", "setMultilingualText", "multilingualText", "", "transparentHighlightColor", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TextViewExtKt {
    public static final void addUnderline(TextView textView) {
        Intrinsics.h(textView, "<this>");
        textView.getPaint().setFlags(8);
    }

    public static final void enableWhenAllChecked(final TextView textView, final CheckBox... checkBoxes) {
        boolean z10;
        Intrinsics.h(textView, "<this>");
        Intrinsics.h(checkBoxes, "checkBoxes");
        int length = checkBoxes.length;
        int i11 = 0;
        while (true) {
            if (i11 >= length) {
                z10 = true;
                break;
            } else {
                if (!checkBoxes[i11].isChecked()) {
                    z10 = false;
                    break;
                }
                i11++;
            }
        }
        textView.setEnabled(z10);
        for (CheckBox checkBox : checkBoxes) {
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.cloud.tmc.integration.utils.ext.b
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z11) {
                    TextViewExtKt.enableWhenAllChecked$lambda$7$lambda$6(textView, checkBoxes, compoundButton, z11);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enableWhenAllChecked$lambda$7$lambda$6(TextView this_enableWhenAllChecked, CheckBox[] checkBoxes, CompoundButton compoundButton, boolean z10) {
        Intrinsics.h(this_enableWhenAllChecked, "$this_enableWhenAllChecked");
        Intrinsics.h(checkBoxes, "$checkBoxes");
        boolean z11 = false;
        for (CheckBox checkBox : checkBoxes) {
            if (!checkBox.isChecked()) {
                this_enableWhenAllChecked.setEnabled(z11);
            }
        }
        z11 = true;
        this_enableWhenAllChecked.setEnabled(z11);
    }

    public static final void enableWhenOtherTextChanged(final TextView textView, final TextView[] textViews, final Function1<? super TextView[], Boolean> block) {
        Intrinsics.h(textView, "<this>");
        Intrinsics.h(textViews, "textViews");
        Intrinsics.h(block, "block");
        textView.setEnabled(((Boolean) block.invoke(textViews)).booleanValue());
        for (TextView textView2 : textViews) {
            textView2.addTextChangedListener(new TextWatcher() { // from class: com.cloud.tmc.integration.utils.ext.TextViewExtKt$enableWhenOtherTextChanged$lambda$3$$inlined$doAfterTextChanged$1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable s11) {
                    textView.setEnabled(((Boolean) block.invoke(textViews)).booleanValue());
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence text, int start, int count, int after) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence text, int start, int before, int count) {
                }
            });
        }
    }

    public static final void enableWhenOtherTextNotEmpty(final TextView textView, TextView... textViews) {
        boolean z10;
        Intrinsics.h(textView, "<this>");
        Intrinsics.h(textViews, "textViews");
        final TextView[] textViewArr = (TextView[]) Arrays.copyOf(textViews, textViews.length);
        int length = textViewArr.length;
        int i11 = 0;
        while (true) {
            if (i11 >= length) {
                z10 = true;
                break;
            } else {
                if (!isTextNotEmpty(textViewArr[i11])) {
                    z10 = false;
                    break;
                }
                i11++;
            }
        }
        textView.setEnabled(z10);
        for (TextView textView2 : textViewArr) {
            textView2.addTextChangedListener(new TextWatcher() { // from class: com.cloud.tmc.integration.utils.ext.TextViewExtKt$enableWhenOtherTextNotEmpty$$inlined$enableWhenOtherTextChanged$1
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable s11) {
                    TextView textView3 = textView;
                    boolean z11 = false;
                    for (TextView textView4 : textViewArr) {
                        if (!TextViewExtKt.isTextNotEmpty(textView4)) {
                            textView3.setEnabled(z11);
                        }
                    }
                    z11 = true;
                    textView3.setEnabled(z11);
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence text, int start, int count, int after) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence text, int start, int before, int count) {
                }
            });
        }
    }

    public static final String getTextString(TextView textView) {
        Intrinsics.h(textView, "<this>");
        return textView.getText().toString();
    }

    public static final boolean isPasswordVisible(TextView textView) {
        Intrinsics.h(textView, "<this>");
        return !Intrinsics.c(textView.getTransformationMethod(), PasswordTransformationMethod.getInstance());
    }

    public static final boolean isTextEmpty(TextView textView) {
        Intrinsics.h(textView, "<this>");
        return textView.getText().toString().length() == 0;
    }

    public static final boolean isTextNotEmpty(TextView textView) {
        Intrinsics.h(textView, "<this>");
        return textView.getText().toString().length() > 0;
    }

    public static final void setMultilingualText(TextView textView, CharSequence charSequence) {
        Intrinsics.h(textView, "<this>");
        textView.setText(charSequence);
        if (Build.VERSION.SDK_INT >= 26) {
            textView.setTextDirection((charSequence == null || charSequence.length() == 0) ? false : BidiFormatter.getInstance().isRtl(charSequence) ? 7 : 6);
        } else {
            textView.setGravity(ViewUtils.isLayoutRtl() ? GravityCompat.END : GravityCompat.START);
        }
    }

    public static final void setPasswordVisible(TextView textView, boolean z10) {
        Intrinsics.h(textView, "<this>");
        textView.setTransformationMethod(z10 ? HideReturnsTransformationMethod.getInstance() : PasswordTransformationMethod.getInstance());
    }

    public static final void transparentHighlightColor(TextView textView) {
        Intrinsics.h(textView, "<this>");
        textView.setHighlightColor(0);
    }
}
