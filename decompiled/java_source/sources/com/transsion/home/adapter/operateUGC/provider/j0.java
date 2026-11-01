package com.transsion.home.adapter.operateUGC.provider;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.operateUGC.adapter.VerticalContentUGCAdapter;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class j0 extends BaseItemProvider {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f44370f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f44371g = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44372e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public j0(int i11) {
        this.f44372e = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(OperateItem operateItem, j0 j0Var) {
        String deepLink = operateItem.getDeepLink();
        if (deepLink != null && deepLink.length() != 0) {
            j0Var.G(operateItem);
            String deepLink2 = operateItem.getDeepLink();
            if (deepLink2 != null) {
                ak.k.h(deepLink2, null, 1, null);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(Function0 function0, View view) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(Function0 function0, View view) {
        function0.invoke();
    }

    private final void F(OperateItem operateItem) {
        List<Object> data;
        Pair pairA = TuplesKt.a("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        Map mapM = MapsKt.m(pairA, pairA2, TuplesKt.a(CampaignEx.JSON_KEY_TITLE, title), TuplesKt.a("tabId", String.valueOf(this.f44372e)));
        il.b.a(operateItem, mapM);
        hj.i.f64505a.D(SubTabFragment.INSTANCE.a(this.f44372e), mapM);
    }

    private final void G(OperateItem operateItem) {
        List<Object> data;
        Pair pairA = TuplesKt.a("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        Map mapM = MapsKt.m(pairA, pairA2, TuplesKt.a(CampaignEx.JSON_KEY_TITLE, title), TuplesKt.a("tabId", String.valueOf(this.f44372e)));
        il.b.a(operateItem, mapM);
        hj.i.f64505a.p(SubTabFragment.INSTANCE.a(this.f44372e), mapM);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00af  */
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        List listL;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        final Function0 function0 = new Function0() { // from class: com.transsion.home.adapter.operateUGC.provider.g0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return j0.C(item, this);
            }
        };
        ((TextView) helper.getView(R$id.tvProviderVerticalTitle)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.provider.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j0.D(function0, view);
            }
        });
        TextView textView = (TextView) helper.getView(R$id.tvProviderVerticalMore);
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            jg.c.g(textView);
        } else {
            jg.c.k(textView);
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.provider.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j0.E(function0, view);
            }
        });
        F(item);
        String title = item.getTitle();
        if (title != null && title.length() != 0) {
            ((TextView) helper.getView(R$id.tvProviderVerticalTitle)).setText(item.getTitle());
        }
        VerticalContentUGCAdapter verticalContentUGCAdapter = new VerticalContentUGCAdapter(item, this.f44372e, 0, 4, null);
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.rvProviderVerticalPost);
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.a(dk.a.b(8), 0, 0, 0));
        }
        recyclerView.setAdapter(verticalContentUGCAdapter);
        List<UGCContent> contentList = item.getContentList();
        if (contentList != null) {
            listL = CollectionsKt.K0(contentList, (contentList.size() / 3) * 3);
            if (listL == null) {
                listL = CollectionsKt.l();
            }
        } else {
            listL = CollectionsKt.l();
        }
        verticalContentUGCAdapter.n1(listL);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.UGC_PORTRAIT_GRID.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_ugc_vertical_content;
    }
}
