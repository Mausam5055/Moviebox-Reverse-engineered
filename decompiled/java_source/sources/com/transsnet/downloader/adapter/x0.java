package com.transsnet.downloader.adapter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.baselib.db.download.DownloadBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\f\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/transsnet/downloader/adapter/x0;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/baselib/db/download/DownloadBean;", "Lr6/i;", "", "dataList", "<init>", "(Ljava/util/List;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "", "G", "Z", "isSmallScreen", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class x0 extends BaseProviderMultiAdapter<DownloadBean> implements r6.i {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final boolean isSmallScreen;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0(List<DownloadBean> dataList) {
        super(CollectionsKt.U0(dataList));
        Intrinsics.h(dataList, "dataList");
        boolean z10 = ((double) (((float) com.blankj.utilcode.util.a0.a(120.0f)) / ((float) com.blankj.utilcode.util.y.e()))) >= 0.35d;
        this.isSmallScreen = z10;
        F1(new ly.h(z10 ? 11.0f : 12.0f));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends DownloadBean> data, int position) {
        Intrinsics.h(data, "data");
        return 0;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
