package com.transsion.postdetail.comment;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/transsion/postdetail/comment/CommentSubMoreHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsion/postdetail/comment/h0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Landroid/view/View;)V", "", RequestParameters.POSITION, "Ln6/a;", "info", "Lcom/transsion/postdetail/comment/g0;", "clickListener", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(ILn6/a;Lcom/transsion/postdetail/comment/g0;)V", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "mTipTextTV", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/view/View;", "mTipLayout", "Landroid/widget/ProgressBar;", "c", "Landroid/widget/ProgressBar;", "mLoadingProgressBar", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CommentSubMoreHolder extends BaseViewHolder implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private TextView mTipTextTV;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private View mTipLayout;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ProgressBar mLoadingProgressBar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentSubMoreHolder(View view) {
        super(view);
        Intrinsics.h(view, "view");
        this.mTipTextTV = (TextView) view.findViewById(R$id.item_comment_sub_more_txt);
        this.mTipLayout = view.findViewById(R$id.item_comment_sub_more_layout);
        this.mLoadingProgressBar = (ProgressBar) view.findViewById(R$id.item_comment_sub_more_loading);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(CommentSubMoreHolder commentSubMoreHolder, n6.a aVar, g0 g0Var, View view) {
        View view2 = commentSubMoreHolder.mTipLayout;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        ProgressBar progressBar = commentSubMoreHolder.mLoadingProgressBar;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
        qo.a aVar2 = (qo.a) aVar;
        aVar2.g(true);
        if (g0Var != null) {
            g0Var.T(aVar2, 5);
        }
    }

    @Override // com.transsion.postdetail.comment.h0
    public void d(int position, final n6.a info, final g0 clickListener) {
        if (info instanceof qo.a) {
            qo.a aVar = (qo.a) info;
            int iMax = Math.max(aVar.e() - aVar.b(), 0);
            if (iMax <= 0) {
                this.itemView.setVisibility(8);
                return;
            }
            this.itemView.setVisibility(0);
            String string = this.itemView.getResources().getString(R$string.comment_sub_more_tip, Integer.valueOf(iMax));
            Intrinsics.g(string, "getString(...)");
            TextView textView = this.mTipTextTV;
            if (textView != null) {
                textView.setText(string);
            }
            if (aVar.f()) {
                View view = this.mTipLayout;
                if (view != null) {
                    view.setVisibility(8);
                }
                ProgressBar progressBar = this.mLoadingProgressBar;
                if (progressBar != null) {
                    progressBar.setVisibility(0);
                }
            } else {
                View view2 = this.mTipLayout;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
                ProgressBar progressBar2 = this.mLoadingProgressBar;
                if (progressBar2 != null) {
                    progressBar2.setVisibility(8);
                }
            }
            View view3 = this.mTipLayout;
            if (view3 == null || view3.getVisibility() != 0) {
                View view4 = this.mTipLayout;
                if (view4 != null) {
                    view4.setOnClickListener(null);
                    return;
                }
                return;
            }
            View view5 = this.mTipLayout;
            if (view5 != null) {
                view5.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.a0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view6) {
                        CommentSubMoreHolder.g(this.f48720a, info, clickListener, view6);
                    }
                });
            }
        }
    }
}
