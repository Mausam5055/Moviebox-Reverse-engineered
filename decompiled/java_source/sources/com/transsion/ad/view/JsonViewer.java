package com.transsion.ad.view;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ti.j;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/transsion/ad/view/JsonViewer;", "Landroid/widget/ScrollView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "jsonString", "indent", "", "setJson", "(Ljava/lang/String;I)V", "getJson", "()Ljava/lang/String;", "Landroid/widget/HorizontalScrollView;", "a", "Landroid/widget/HorizontalScrollView;", "horizontalScrollView", "Landroid/widget/TextView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/TextView;", "textView", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class JsonViewer extends ScrollView {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final HorizontalScrollView horizontalScrollView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final TextView textView;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public JsonViewer(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public JsonViewer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public JsonViewer(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        setFillViewport(true);
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context);
        horizontalScrollView.setFillViewport(true);
        horizontalScrollView.setHorizontalScrollBarEnabled(true);
        this.horizontalScrollView = horizontalScrollView;
        TextView textView = new TextView(context);
        textView.setPadding(16, 16, 16, 16);
        textView.setTextSize(14.0f);
        textView.setHorizontallyScrolling(true);
        textView.setTypeface(Typeface.MONOSPACE);
        textView.setVerticalScrollBarEnabled(true);
        this.textView = textView;
        horizontalScrollView.addView(textView);
        addView(horizontalScrollView);
    }

    public /* synthetic */ JsonViewer(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    public static /* synthetic */ void setJson$default(JsonViewer jsonViewer, String str, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 4;
        }
        jsonViewer.setJson(str, i11);
    }

    public final String getJson() {
        return this.textView.getText().toString();
    }

    public final void setJson(String jsonString, int indent) {
        Intrinsics.h(jsonString, "jsonString");
        this.textView.setText(j.f76261a.c(jsonString, indent));
    }
}
