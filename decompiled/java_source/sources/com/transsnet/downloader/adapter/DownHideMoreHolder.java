package com.transsnet.downloader.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$mipmap;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/transsnet/downloader/adapter/DownHideMoreHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsnet/downloader/adapter/u0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "<init>", "(Landroid/view/View;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "", RequestParameters.POSITION, "Ln6/a;", WebConstants.FIELD_ITEM, "", "c", "(ILn6/a;)V", "a", "Landroid/view/View;", "getView", "()Landroid/view/View;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownHideMoreHolder extends BaseViewHolder implements u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final View view;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final BiddingNativeManager wrapperNativeManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownHideMoreHolder(View view, BiddingNativeManager biddingNativeManager) {
        super(view);
        Intrinsics.h(view, "view");
        this.view = view;
        this.wrapperNativeManager = biddingNativeManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(DownHideMoreHolder downHideMoreHolder, View view) {
        DownloadListManager.a aVar = DownloadListManager.f59994m;
        DownloadListManager.I(aVar.a(), !aVar.a().V(), false, downHideMoreHolder.wrapperNativeManager, 2, null);
    }

    @Override // com.transsnet.downloader.adapter.u0
    public void a(u0.b bVar) {
        u0.a.b(this, bVar);
    }

    @Override // com.transsnet.downloader.adapter.u0
    public void b(int i11, n6.a aVar) {
        u0.a.a(this, i11, aVar);
    }

    @Override // com.transsnet.downloader.adapter.u0
    public void c(int position, n6.a item) {
        if (item instanceof DownloadBean) {
            TextView textView = (TextView) getView(R$id.tv_title);
            ImageView imageView = (ImageView) getView(R$id.iv_hide_more);
            DownloadBean downloadBean = (DownloadBean) item;
            textView.setText(downloadBean.getName());
            imageView.setImageDrawable(downloadBean.getIsMore() ? androidx.core.content.b.getDrawable(imageView.getContext(), R$mipmap.libui_ic_down_more) : androidx.core.content.b.getDrawable(imageView.getContext(), R$mipmap.libui_ic_up_hide));
            this.view.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.adapter.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownHideMoreHolder.g(this.f58482a, view);
                }
            });
        }
    }
}
