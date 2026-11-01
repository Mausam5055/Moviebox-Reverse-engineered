package com.transsion.moviedetail.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.a0;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.widget.R$color;
import com.transsion.moviedetail.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/transsion/moviedetail/view/CustomTextViewGroup;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", MimeTypes.BASE_TYPE_TEXT, "", "setText", "(Ljava/lang/String;)V", "Landroidx/appcompat/widget/AppCompatTextView;", "a", "Landroidx/appcompat/widget/AppCompatTextView;", "textView", "Landroid/view/View;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/view/View;", "separator", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CustomTextViewGroup extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final AppCompatTextView textView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final View separator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTextViewGroup(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        setOrientation(0);
        View view = new View(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(a0.a(1.0f), -1);
        layoutParams.setMarginStart(a0.a(4.0f));
        layoutParams.setMarginEnd(a0.a(4.0f));
        layoutParams.topMargin = a0.a(3.0f);
        layoutParams.bottomMargin = a0.a(3.0f);
        view.setLayoutParams(layoutParams);
        view.setBackgroundColor(androidx.core.content.b.getColor(context, R$color.white_20));
        this.separator = view;
        addView(view);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
        appCompatTextView.setIncludeFontPadding(false);
        appCompatTextView.setMaxLines(1);
        appCompatTextView.setTextColor(androidx.core.content.b.getColor(context, R$color.white_60));
        appCompatTextView.setTextSize(12.0f);
        appCompatTextView.setTypeface(jg.a.d(context));
        this.textView = appCompatTextView;
        addView(appCompatTextView);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R$styleable.CustomTextViewGroup);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.CustomTextViewGroup_text);
        typedArrayObtainStyledAttributes.recycle();
        setText(string == null ? "" : string);
        requestLayout();
    }

    public final void setText(String text) {
        Intrinsics.h(text, "text");
        this.textView.setText(text);
        int i11 = text.length() == 0 ? 8 : 0;
        this.textView.setVisibility(i11);
        this.separator.setVisibility(i11);
        requestLayout();
    }
}
