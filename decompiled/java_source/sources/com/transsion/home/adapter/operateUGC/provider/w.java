package com.transsion.home.adapter.operateUGC.provider;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingListData;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class w extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private OperateItem f44403f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.transsion.home.adapter.operateUGC.adapter.d f44404g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.transsion.home.adapter.operateUGC.adapter.e f44405h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f44406i;

    public static final class a extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.transsion.home.view.d f44407a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ w f44408b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RecyclerView f44409c;

        a(com.transsion.home.view.d dVar, w wVar, RecyclerView recyclerView) {
            this.f44407a = dVar;
            this.f44408b = wVar;
            this.f44409c = recyclerView;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            View viewFindSnapView;
            List<Object> data;
            Intrinsics.h(recyclerView, "recyclerView");
            if (i11 != 0 || (viewFindSnapView = this.f44407a.findSnapView(recyclerView.getLayoutManager())) == null) {
                return;
            }
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            int position = layoutManager != null ? layoutManager.getPosition(viewFindSnapView) : 0;
            com.transsion.home.adapter.operateUGC.adapter.e eVar = this.f44408b.f44405h;
            if (eVar != null) {
                eVar.C1(position);
            }
            this.f44408b.f44406i = position;
            if (position != 0) {
                com.transsion.home.adapter.operateUGC.adapter.e eVar2 = this.f44408b.f44405h;
                if (position != ((eVar2 == null || (data = eVar2.getData()) == null) ? -1 : data.size()) - 1) {
                    this.f44408b.K(this.f44409c, position);
                    return;
                }
            }
            this.f44409c.scrollToPosition(position);
        }
    }

    public w(int i11) {
        this.f44402e = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(OperateItem operateItem, w wVar, View view) {
        String deepLink = operateItem.getDeepLink();
        if (deepLink != null) {
            ak.k.h(deepLink, null, 1, null);
        }
        wVar.J(operateItem);
    }

    private final void F(RecyclerView recyclerView, RecyclerView recyclerView2, OperateItem operateItem) {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        com.transsion.home.adapter.operateUGC.adapter.d dVar = new com.transsion.home.adapter.operateUGC.adapter.d(0, operateItem, this.f44402e, 1, null);
        this.f44404g = dVar;
        RankingListData rankingListData = operateItem.getRankingListData();
        dVar.n1(rankingListData != null ? rankingListData.getItems() : null);
        recyclerView.setAdapter(this.f44404g);
        recyclerView.scrollToPosition(this.f44406i);
        recyclerView.setOnFlingListener(null);
        com.transsion.home.view.d dVar2 = new com.transsion.home.view.d(com.blankj.utilcode.util.a0.a(12.0f));
        dVar2.attachToRecyclerView(recyclerView);
        recyclerView.addOnScrollListener(new a(dVar2, this, recyclerView2));
    }

    private final void G(final RecyclerView recyclerView, final RecyclerView recyclerView2, OperateItem operateItem) {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        com.transsion.home.adapter.operateUGC.adapter.e eVar = new com.transsion.home.adapter.operateUGC.adapter.e(0, 1, null);
        this.f44405h = eVar;
        eVar.C1(this.f44406i);
        com.transsion.home.adapter.operateUGC.adapter.e eVar2 = this.f44405h;
        if (eVar2 != null) {
            RankingListData rankingListData = operateItem.getRankingListData();
            eVar2.n1(rankingListData != null ? rankingListData.getItems() : null);
        }
        com.transsion.home.adapter.operateUGC.adapter.e eVar3 = this.f44405h;
        if (eVar3 != null) {
            eVar3.w1(new p6.d() { // from class: com.transsion.home.adapter.operateUGC.provider.v
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    w.H(this.f44399a, recyclerView2, recyclerView, baseQuickAdapter, view, i11);
                }
            });
        }
        recyclerView.setAdapter(this.f44405h);
        recyclerView.scrollToPosition(this.f44406i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    public static final void H(w wVar, RecyclerView recyclerView, RecyclerView recyclerView2, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<Object> data;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        wVar.f44406i = i11;
        if (i11 == 0) {
            recyclerView.scrollToPosition(i11);
        } else {
            com.transsion.home.adapter.operateUGC.adapter.d dVar = wVar.f44404g;
            if (i11 == ((dVar == null || (data = dVar.getData()) == null) ? -1 : data.size()) - 1) {
                recyclerView.scrollToPosition(i11);
            } else {
                wVar.K(recyclerView, i11);
            }
        }
        com.transsion.home.adapter.operateUGC.adapter.e eVar = wVar.f44405h;
        if (eVar != null) {
            eVar.C1(wVar.f44406i);
        }
        recyclerView2.scrollToPosition(i11);
    }

    private final void I(OperateItem operateItem) {
        List<Object> data;
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f44402e));
        il.b.a(operateItem, map);
        hj.i.f64505a.D(SubTabFragment.INSTANCE.a(this.f44402e), map);
    }

    private final void J(OperateItem operateItem) {
        List<Object> data;
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f44402e));
        il.b.a(operateItem, map);
        hj.i.f64505a.p(SubTabFragment.INSTANCE.a(this.f44402e), map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(RecyclerView recyclerView, int i11) {
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        View viewFindViewByPosition = layoutManager != null ? layoutManager.findViewByPosition(i11) : null;
        if (viewFindViewByPosition == null) {
            recyclerView.scrollToPosition(i11);
        } else {
            recyclerView.scrollBy(viewFindViewByPosition.getLeft() - ((recyclerView.getWidth() / 2) - (viewFindViewByPosition.getWidth() / 2)), 0);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        this.f44403f = item;
        helper.setText(R$id.sub_operation_ranklist_title_text, item.getTitle());
        helper.getView(R$id.sub_operation_ranklist_title_linear).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.provider.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                w.E(item, this, view);
            }
        });
        View view = helper.getView(R$id.sub_operation_ranklist_all);
        String deepLink = item.getDeepLink();
        view.setVisibility((deepLink == null || deepLink.length() == 0) ? 4 : 0);
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_ranklist_recycler);
        RecyclerView recyclerView2 = (RecyclerView) helper.getView(R$id.sub_operation_ranklist_title_tab_recycler);
        F(recyclerView, recyclerView2, item);
        G(recyclerView2, recyclerView, item);
        I(item);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.UGC_RANKING_LIST.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_sub_operation_rank_list;
    }
}
