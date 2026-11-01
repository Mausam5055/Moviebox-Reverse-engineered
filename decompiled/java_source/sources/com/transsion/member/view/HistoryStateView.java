package com.transsion.member.view;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.StateView;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baseui.R$drawable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\r\u0010\bR$\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t8T@TX\u0094\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/transsion/member/view/HistoryStateView;", "Lcom/tn/lib/view/StateView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, AppMeasurementSdk.ConditionalUserProperty.VALUE, "getNoContentResId", "()I", "setNoContentResId", "(I)V", "noContentResId", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HistoryStateView extends StateView {
    public static final int $stable = 8;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HistoryStateView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HistoryStateView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HistoryStateView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
    }

    @Override // com.tn.lib.view.StateView
    protected void b(Context context, AttributeSet attrs) {
        Intrinsics.h(context, "context");
        super.b(context, attrs);
        th.b mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f76220f.setBackgroundResource(R$drawable.bg_radius_8_color_white_10p);
            mViewBinding.f76220f.setTextColor(getResources().getColor(R$color.common_white));
            ViewGroup.LayoutParams layoutParams = mViewBinding.f76220f.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = com.blankj.utilcode.util.a0.a(40.0f);
            mViewBinding.f76220f.setLayoutParams(layoutParams);
            int iA = com.blankj.utilcode.util.a0.a(20.0f);
            mViewBinding.f76220f.setTypeface(Typeface.defaultFromStyle(1));
            mViewBinding.f76220f.setPadding(iA, 0, iA, 0);
            mViewBinding.f76219e.setTextColor(getResources().getColor(R$color.gray_dark_40));
        }
    }

    @Override // com.tn.lib.view.StateView
    protected int getNoContentResId() {
        return R$mipmap.ic_no_content_dark;
    }

    @Override // com.tn.lib.view.StateView
    protected void setNoContentResId(int i11) {
        super.setNoContentResId(i11);
    }
}
