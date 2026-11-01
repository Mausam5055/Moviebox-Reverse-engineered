package com.transsion.home.adapter.trending.provider;

import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.view.OpRankingView;
import com.transsion.moviedetailapi.bean.PostItemType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class q extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.transsion.home.preload.b f44821e;

    public q(com.transsion.home.preload.b bVar) {
        this.f44821e = bVar;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.OP_RANKING.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.post_list_item_op_ranking;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public BaseViewHolder r(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        com.transsion.home.preload.b bVar = this.f44821e;
        if (bVar == null || bVar.b() || this.f44821e.d() == null) {
            return super.r(parent, i11);
        }
        lg.a.C0828a.f(lg.a.f68839a, "MainXMLPreload", "ranking", false, 4, null);
        View viewD = this.f44821e.d();
        if (viewD == null) {
            return super.r(parent, i11);
        }
        viewD.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new BaseViewHolder(viewD);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        OpRankingView opRankingView = (OpRankingView) helper.getViewOrNull(R$id.ranking_view);
        if (opRankingView == null || item.getRankings() == null) {
            return;
        }
        opRankingView.setDatas(item);
    }
}
