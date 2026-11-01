package com.transsion.home.adapter.operateUGC.provider;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.operateUGC.adapter.MovieRankUGCAdapter;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class p extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44383e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f44384f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f44385g = LazyKt.b(new Function0() { // from class: com.transsion.home.adapter.operateUGC.provider.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return p.E();
        }
    });

    public static final class a extends RecyclerView.s {
        a() {
            m(0, 16);
        }
    }

    public p(int i11, boolean z10) {
        this.f44383e = i11;
        this.f44384f = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(p pVar, OperateItem operateItem, View view) {
        pVar.G(operateItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(p pVar, OperateItem operateItem, View view) {
        pVar.G(operateItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a E() {
        return new a();
    }

    private final a F() {
        return (a) this.f44385g.getValue();
    }

    private final void G(OperateItem operateItem) {
        List<Object> data;
        String deepLink = operateItem.getDeepLink();
        Integer numValueOf = null;
        if (deepLink != null) {
            ak.k.h(deepLink, null, 1, null);
        }
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        if (baseProviderMultiAdapterG != null && (data = baseProviderMultiAdapterG.getData()) != null) {
            numValueOf = Integer.valueOf(data.indexOf(operateItem));
        }
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        map.put(RequestParameters.POSITION, String.valueOf(numValueOf));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f44383e));
        il.b.a(operateItem, map);
        hj.i.f64505a.p(SubTabFragment.INSTANCE.a(this.f44383e), map);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) helper.getView(R$id.provider_ugc_common_title);
        textView.setText(item.getTitle());
        TextView textView2 = (TextView) helper.getView(R$id.provider_ugc_common_more_text);
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            jg.c.h(textView2);
        } else {
            jg.c.k(textView2);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.provider.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    p.C(this.f44379a, item, view);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.provider.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    p.D(this.f44381a, item, view);
                }
            });
        }
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.provider_ugc_common_recycler);
        MovieRankUGCAdapter movieRankUGCAdapter = new MovieRankUGCAdapter(0, item, this.f44383e, this.f44384f, 1, null);
        recyclerView.setAdapter(movieRankUGCAdapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        Intrinsics.c(recyclerView.getRecycledViewPool(), F());
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        movieRankUGCAdapter.n1(item.getContentList());
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(item))));
        String title = item.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f44383e));
        il.b.a(item, map);
        hj.i.f64505a.D(SubTabFragment.INSTANCE.a(this.f44383e), map);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.UGC_MOVIE_RANK.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_ugc_op_common;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
    }
}
