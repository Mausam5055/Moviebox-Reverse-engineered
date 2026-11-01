package com.transsion.usercenter.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/usercenter/widget/NetworkRetryView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "", "textMode", "()V", "Landroid/view/View$OnClickListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setRetryListener", "(Landroid/view/View$OnClickListener;)V", "Landroid/widget/ImageView;", "a", "Landroid/widget/ImageView;", "ivNetwork", "Landroid/widget/TextView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/TextView;", "tvNetworkTips", "c", "tvRetry", "Landroid/widget/LinearLayout;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/widget/LinearLayout;", "retryLayout", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NetworkRetryView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private ImageView ivNetwork;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TextView tvNetworkTips;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private TextView tvRetry;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private LinearLayout retryLayout;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NetworkRetryView(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NetworkRetryView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NetworkRetryView(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NetworkRetryView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.view_network_fail_layout, this);
        this.ivNetwork = (ImageView) viewInflate.findViewById(R$id.ivNetwork);
        this.tvNetworkTips = (TextView) viewInflate.findViewById(R$id.tvNetworkTips);
        this.tvRetry = (TextView) viewInflate.findViewById(R$id.tvRetry);
        this.retryLayout = (LinearLayout) viewInflate.findViewById(R$id.retry_ll);
    }

    public /* synthetic */ NetworkRetryView(Context context, AttributeSet attributeSet, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i13 & 2) != 0 ? null : attributeSet, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0 : i12);
    }

    public final void setRetryListener(View.OnClickListener listener) {
        TextView textView = this.tvRetry;
        if (textView != null) {
            textView.setOnClickListener(listener);
        }
        LinearLayout linearLayout = this.retryLayout;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(listener);
        }
    }

    public final void textMode() {
        ImageView imageView = this.ivNetwork;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        TextView textView = this.tvRetry;
        if (textView != null) {
            textView.setVisibility(8);
        }
        LinearLayout linearLayout = this.retryLayout;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
    }
}
