package com.transsnet.downloader.adapter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0011\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\f\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsnet/downloader/adapter/k;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/baselib/db/download/DownloadBean;", "Lr6/i;", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "forYouViewModel", "<init>", "(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class k extends BaseProviderMultiAdapter<DownloadBean> implements r6.i {
    public k(DownloadViewModel downloadViewModel) {
        super(null, 1, null);
        F1(new ly.g());
        F1(new ly.f());
        F1(new ly.a());
        F1(new ly.c(downloadViewModel));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends DownloadBean> data, int position) {
        Intrinsics.h(data, "data");
        DownloadBean downloadBean = data.get(position);
        if (!downloadBean.isInnerRes()) {
            return LayoutType.DONE_LAYOUT.ordinal();
        }
        if (downloadBean.getIsFroYouList()) {
            return LayoutType.FOR_YOU.ordinal();
        }
        int status = downloadBean.getStatus();
        if (status != 10) {
            if (status == 14) {
                return LayoutType.ALL_EP_BTN.ordinal();
            }
            switch (status) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 6:
                case 7:
                    return LayoutType.NO_DONE_LAYOUT.ordinal();
                case 5:
                    break;
                default:
                    return LayoutType.DONE_LAYOUT.ordinal();
            }
        }
        return LayoutType.DONE_LAYOUT.ordinal();
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
