package com.transsion.search_pugc.fragment.result.adapter;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.search_pugc.bean.SearchResultItem;
import com.transsion.search_pugc.bean.SearchTab;
import com.transsion.search_pugc.fragment.result.provider.ResultVerticalRankType2Provider;
import com.transsion.search_pugc.fragment.result.provider.d;
import com.transsion.search_pugc.fragment.result.provider.k;
import com.transsion.search_pugc.fragment.result.provider.l;
import com.transsion.search_pugc.fragment.result.provider.s;
import com.transsion.search_pugc.fragment.result.provider.t;
import com.transsion.search_pugc.g;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import r6.f;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B-\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0013\u001a\u00020\u00112\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010!\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b!\u0010 J\u001f\u0010\"\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\"\u0010 J\u001f\u0010#\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b#\u0010 R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010\n\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006,"}, d2 = {"Lcom/transsion/search_pugc/fragment/result/adapter/b;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/search_pugc/bean/SearchResultItem;", "Lr6/i;", "Lcom/transsion/search_pugc/fragment/result/provider/t;", "Lsj/b;", "exposureHelper", "", "keyword", "Lcom/transsion/search_pugc/bean/SearchTab;", "searchTab", "Lar/a;", "secondTab", "<init>", "(Lsj/b;Ljava/lang/String;Lcom/transsion/search_pugc/bean/SearchTab;Lar/a;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", WebConstants.FIELD_ITEM, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "ugcVideo", "c", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V", "Q1", "e", "a", "G", "Lsj/b;", "H", "Ljava/lang/String;", "I", "Lcom/transsion/search_pugc/bean/SearchTab;", "J", "Lar/a;", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class b extends BaseProviderMultiAdapter<SearchResultItem> implements i, t {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final sj.b exposureHelper;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final String keyword;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final SearchTab searchTab;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private ar.a secondTab;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(sj.b bVar, String str, SearchTab searchTab, ar.a secondTab) {
        super(null, 1, null);
        Intrinsics.h(secondTab, "secondTab");
        this.exposureHelper = bVar;
        this.keyword = str;
        this.searchTab = searchTab;
        this.secondTab = secondTab;
        F1(new s(this));
        F1(new k(this));
        F1(new d(this));
        F1(new com.transsion.search_pugc.fragment.result.provider.c(this));
        F1(new ResultVerticalRankType2Provider(this));
        F1(new l());
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
    protected int N1(List<? extends SearchResultItem> data, int position) {
        Intrinsics.h(data, "data");
        return data.get(position).getSearchType().ordinal();
    }

    public void Q1(UGCVideo ugcVideo, int position) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        if (this.searchTab == null) {
            return;
        }
        g.f52478h.a(getContext()).y(ugcVideo, position, this.keyword, this.searchTab, this.secondTab.a());
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void a(UGCVideo ugcVideo, int position) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        if (this.searchTab == null) {
            return;
        }
        g.f52478h.a(getContext()).l(ugcVideo, position, this.keyword, this.searchTab, this.secondTab.a());
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void c(UGCVideo ugcVideo, int position) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        if (this.searchTab == null) {
            return;
        }
        g.f52478h.a(getContext()).u(ugcVideo, position, this.keyword, this.searchTab, this.secondTab.a());
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void d(SearchResultItem item, int position) {
        Intrinsics.h(item, "item");
        if (this.searchTab == null) {
            return;
        }
        g.f52478h.a(getContext()).w(item, position, this.keyword, this.searchTab, this.secondTab.a());
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void e(UGCVideo ugcVideo, int position) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        if (this.searchTab == null) {
            return;
        }
        g.f52478h.a(getContext()).k(ugcVideo, position, this.keyword, this.searchTab, this.secondTab.a());
    }
}
