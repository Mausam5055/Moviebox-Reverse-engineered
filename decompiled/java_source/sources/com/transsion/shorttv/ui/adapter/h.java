package com.transsion.shorttv.ui.adapter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.shorttv.ui.adapter.provider.ShortTvListSubjectProvider;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ%\u0010\u000e\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/transsion/shorttv/ui/adapter/h;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lxs/a;", "Lr6/i;", "", "pageName", "", "isDownloadBtn", "<init>", "(Ljava/lang/String;Z)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Q1", "()I", "G", "Ljava/lang/String;", "R1", "()Ljava/lang/String;", "H", "Z", "S1", "()Z", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class h extends BaseProviderMultiAdapter<xs.a> implements r6.i {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final String pageName;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean isDownloadBtn;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(String pageName, boolean z10) {
        super(null, 1, null);
        Intrinsics.h(pageName, "pageName");
        this.pageName = pageName;
        this.isDownloadBtn = z10;
        F1(new com.transsion.shorttv.ui.adapter.provider.a(pageName));
        F1(new ShortTvListSubjectProvider(pageName, z10));
        F1(new com.transsion.shorttv.ui.adapter.provider.b());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends xs.a> data, int position) {
        Intrinsics.h(data, "data");
        xs.a aVar = (xs.a) CollectionsKt.l0(data, position);
        if (aVar != null) {
            return aVar.d();
        }
        return -1;
    }

    public final int Q1() {
        List<Object> data = getData();
        ArrayList arrayList = new ArrayList();
        for (Object obj : data) {
            if (((xs.a) obj).d() == 0) {
                arrayList.add(obj);
            }
        }
        return arrayList.size();
    }

    /* JADX INFO: renamed from: R1, reason: from getter */
    public final String getPageName() {
        return this.pageName;
    }

    /* JADX INFO: renamed from: S1, reason: from getter */
    public final boolean getIsDownloadBtn() {
        return this.isDownloadBtn;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
