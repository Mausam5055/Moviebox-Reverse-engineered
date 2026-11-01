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
import com.transsion.home.adapter.operateUGC.adapter.UGCOptFeedsListAdapter;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class f0 extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44356e;

    public f0(int i11) {
        this.f44356e = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(f0 f0Var, OperateItem operateItem, View view) {
        f0Var.D(operateItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(f0 f0Var, OperateItem operateItem, View view) {
        f0Var.D(operateItem);
    }

    private final void D(OperateItem operateItem) {
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
        map.put("tabId", String.valueOf(this.f44356e));
        il.b.a(operateItem, map);
        hj.i.f64505a.p(SubTabFragment.INSTANCE.a(this.f44356e), map);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
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
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.provider.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    f0.B(this.f44350a, item, view);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.provider.e0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    f0.C(this.f44353a, item, view);
                }
            });
        }
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.provider_ugc_common_recycler);
        UGCOptFeedsListAdapter uGCOptFeedsListAdapter = new UGCOptFeedsListAdapter(item, this.f44356e);
        recyclerView.setAdapter(uGCOptFeedsListAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(k(), 1, false));
        recyclerView.setNestedScrollingEnabled(false);
        uGCOptFeedsListAdapter.n1(item.getContentList());
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(item))));
        String title = item.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f44356e));
        il.b.a(item, map);
        hj.i.f64505a.D(SubTabFragment.INSTANCE.a(this.f44356e), map);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.UGC_VERTICAL_OPT_LIST.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_ugc_op_common;
    }
}
