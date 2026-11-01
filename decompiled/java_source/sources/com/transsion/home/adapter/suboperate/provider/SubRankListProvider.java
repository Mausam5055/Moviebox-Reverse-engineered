package com.transsion.home.adapter.suboperate.provider;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingListData;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SubRankListProvider extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private t1 f44544f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private OperateItem f44545g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.transsion.home.adapter.suboperate.adapter.q f44546h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.transsion.home.adapter.suboperate.adapter.r f44547i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f44548j;

    public static final class a extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.recyclerview.widget.n f44549a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SubRankListProvider f44550b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RecyclerView f44551c;

        a(androidx.recyclerview.widget.n nVar, SubRankListProvider subRankListProvider, RecyclerView recyclerView) {
            this.f44549a = nVar;
            this.f44550b = subRankListProvider;
            this.f44551c = recyclerView;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            View viewFindSnapView;
            List<Object> data;
            Intrinsics.h(recyclerView, "recyclerView");
            if (i11 != 0 || (viewFindSnapView = this.f44549a.findSnapView(recyclerView.getLayoutManager())) == null) {
                return;
            }
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            int position = layoutManager != null ? layoutManager.getPosition(viewFindSnapView) : 0;
            com.transsion.home.adapter.suboperate.adapter.r rVar = this.f44550b.f44547i;
            if (rVar != null) {
                rVar.C1(position);
            }
            this.f44550b.f44548j = position;
            if (position != 0) {
                com.transsion.home.adapter.suboperate.adapter.r rVar2 = this.f44550b.f44547i;
                if (position != ((rVar2 == null || (data = rVar2.getData()) == null) ? -1 : data.size()) - 1) {
                    this.f44550b.L(this.f44551c, position);
                    return;
                }
            }
            this.f44551c.scrollToPosition(position);
        }
    }

    public SubRankListProvider(int i11) {
        this.f44543e = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(OperateItem operateItem, View view) {
        String deepLink = operateItem.getDeepLink();
        if (deepLink != null) {
            ak.k.h(deepLink, null, 1, null);
        }
    }

    private final void H(RecyclerView recyclerView, RecyclerView recyclerView2, OperateItem operateItem) {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        com.transsion.home.adapter.suboperate.adapter.q qVar = new com.transsion.home.adapter.suboperate.adapter.q(0, operateItem, this.f44543e, 1, null);
        this.f44546h = qVar;
        RankingListData rankingListData = operateItem.getRankingListData();
        qVar.n1(rankingListData != null ? rankingListData.getItems() : null);
        recyclerView.setAdapter(this.f44546h);
        recyclerView.scrollToPosition(this.f44548j);
        recyclerView.setOnFlingListener(null);
        androidx.recyclerview.widget.n nVar = new androidx.recyclerview.widget.n();
        nVar.attachToRecyclerView(recyclerView);
        recyclerView.addOnScrollListener(new a(nVar, this, recyclerView2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void I(final RecyclerView recyclerView, final RecyclerView recyclerView2, OperateItem operateItem) {
        int i11 = 0;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        int i12 = 1;
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        com.transsion.home.adapter.suboperate.adapter.r rVar = new com.transsion.home.adapter.suboperate.adapter.r(i11, i12, 0 == true ? 1 : 0);
        this.f44547i = rVar;
        rVar.C1(this.f44548j);
        com.transsion.home.adapter.suboperate.adapter.r rVar2 = this.f44547i;
        if (rVar2 != null) {
            RankingListData rankingListData = operateItem.getRankingListData();
            rVar2.n1(rankingListData != null ? rankingListData.getItems() : null);
        }
        com.transsion.home.adapter.suboperate.adapter.r rVar3 = this.f44547i;
        if (rVar3 != null) {
            rVar3.w1(new p6.d() { // from class: com.transsion.home.adapter.suboperate.provider.m0
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i13) {
                    SubRankListProvider.J(this.f44622a, recyclerView2, recyclerView, baseQuickAdapter, view, i13);
                }
            });
        }
        recyclerView.setAdapter(this.f44547i);
        recyclerView.scrollToPosition(this.f44548j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    public static final void J(SubRankListProvider subRankListProvider, RecyclerView recyclerView, RecyclerView recyclerView2, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<Object> data;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        subRankListProvider.f44548j = i11;
        if (i11 == 0) {
            recyclerView.scrollToPosition(i11);
        } else {
            com.transsion.home.adapter.suboperate.adapter.q qVar = subRankListProvider.f44546h;
            if (i11 == ((qVar == null || (data = qVar.getData()) == null) ? -1 : data.size()) - 1) {
                recyclerView.scrollToPosition(i11);
            } else {
                subRankListProvider.L(recyclerView, i11);
            }
        }
        com.transsion.home.adapter.suboperate.adapter.r rVar = subRankListProvider.f44547i;
        if (rVar != null) {
            rVar.C1(subRankListProvider.f44548j);
        }
        recyclerView2.scrollToPosition(i11);
    }

    private final void K() {
        if (HomeTabId.INSTANCE.h(Integer.valueOf(this.f44543e), true)) {
            this.f44544f = kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new SubRankListProvider$registerCourse$1(this, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(RecyclerView recyclerView, int i11) {
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        View viewFindViewByPosition = layoutManager != null ? layoutManager.findViewByPosition(i11) : null;
        if (viewFindViewByPosition == null) {
            recyclerView.scrollToPosition(i11);
        } else {
            recyclerView.scrollBy(viewFindViewByPosition.getLeft() - ((recyclerView.getWidth() / 2) - (viewFindViewByPosition.getWidth() / 2)), 0);
        }
    }

    private final void M() {
        t1 t1Var = this.f44544f;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f44544f = null;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        this.f44545g = item;
        helper.setText(R$id.sub_operation_ranklist_title_text, item.getTitle());
        helper.getView(R$id.sub_operation_ranklist_title_linear).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubRankListProvider.G(item, view);
            }
        });
        View view = helper.getView(R$id.sub_operation_ranklist_all);
        String deepLink = item.getDeepLink();
        view.setVisibility((deepLink == null || deepLink.length() == 0) ? 4 : 0);
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_ranklist_recycler);
        RecyclerView recyclerView2 = (RecyclerView) helper.getView(R$id.sub_operation_ranklist_title_tab_recycler);
        H(recyclerView, recyclerView2, item);
        I(recyclerView2, recyclerView, item);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.RANKING_LIST.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_sub_operation_rank_list;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.t(holder);
        K();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        M();
    }
}
