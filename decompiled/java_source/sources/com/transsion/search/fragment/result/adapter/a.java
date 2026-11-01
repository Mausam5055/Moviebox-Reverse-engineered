package com.transsion.search.fragment.result.adapter;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.search.fragment.result.ResultWrapData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import r6.h;
import r6.i;
import vq.c;
import vq.d;
import vq.f;
import vq.g;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B9\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0011\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00132\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010#R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010#R\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010#¨\u0006'"}, d2 = {"Lcom/transsion/search/fragment/result/adapter/a;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/search/fragment/result/ResultWrapData;", "Lr6/i;", "Lsj/b;", "exposureHelper", "", "keyword", "searchFrom", "tabId", "sugSource", "<init>", "(Lsj/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "", "S1", "(Ljava/lang/String;)V", "Q1", "()Ljava/lang/String;", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "R1", "(Lcom/transsion/moviedetailapi/bean/Subject;I)V", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lsj/b;", "H", "Ljava/lang/String;", "I", "J", "K", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseProviderMultiAdapter<ResultWrapData> implements i {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final sj.b exposureHelper;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final String keyword;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final String searchFrom;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private String tabId;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final String sugSource;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(sj.b bVar, String str, String str2, String str3, String sugSource) {
        super(null, 1, null);
        Intrinsics.h(sugSource, "sugSource");
        this.exposureHelper = bVar;
        this.keyword = str;
        this.searchFrom = str2;
        this.tabId = str3;
        this.sugSource = sugSource;
        F1(new vq.a());
        F1(new vq.b());
        F1(new c());
        F1(new d());
        F1(new f());
        F1(new g());
    }

    public /* synthetic */ a(sj.b bVar, String str, String str2, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, str, str2, str3, (i11 & 16) != 0 ? "mb_sug" : str4);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter, com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        sj.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            sj.b.j(bVar, (LinearLayoutManager) layoutManager, bindingAdapterPosition, true, false, 8, null);
        }
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends ResultWrapData> data, int position) {
        Intrinsics.h(data, "data");
        return data.get(position).getType().ordinal();
    }

    /* JADX INFO: renamed from: Q1, reason: from getter */
    public final String getTabId() {
        return this.tabId;
    }

    public final void R1(Subject subject, int position) {
        com.transsion.search.widget.d.f52270a.u(subject, position, this.keyword, this.searchFrom, this.tabId, this.sugSource);
    }

    public final void S1(String tabId) {
        Intrinsics.h(tabId, "tabId");
        this.tabId = tabId;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
