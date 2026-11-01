package com.transsnet.downloader.adapter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\f\u001a\u00020\n2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsnet/downloader/adapter/n;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lmy/b;", "", "isSaveDialog", "", "data", "<init>", "(ZLjava/util/List;)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class n extends BaseProviderMultiAdapter<my.b> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(boolean z10, List<my.b> data) {
        super(data);
        Intrinsics.h(data, "data");
        F1(new p());
        F1(new o(z10));
        F1(new q());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends my.b> data, int position) {
        Intrinsics.h(data, "data");
        return data.get(position).getItemType();
    }
}
