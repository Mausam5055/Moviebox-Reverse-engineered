package com.transsion.home.adapter.suboperate.provider;

import android.view.View;
import android.widget.TextView;
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
import com.transsion.home.adapter.suboperate.adapter.SubCustomAdapter;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.CustomData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class k extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f44614f;

    public k(int i11, boolean z10) {
        this.f44613e = i11;
        this.f44614f = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(OperateItem operateItem, k kVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<BannerData> items;
        BannerData bannerData;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        CustomData customData = operateItem.getCustomData();
        if (customData == null || (items = customData.getItems()) == null || (bannerData = items.get(i11)) == null) {
            return;
        }
        kVar.D(bannerData, operateItem.getOpId());
        kVar.C(bannerData, i11, operateItem);
    }

    private final void B(OperateItem operateItem) {
        String title;
        String opId;
        String title2;
        List<Object> data;
        String str = "";
        if (ak.g.f639a.b()) {
            HashMap map = new HashMap();
            map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            map.put(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(CollectionsKt.n0(data, operateItem))));
            if (operateItem != null && (title2 = operateItem.getTitle()) != null) {
                str = title2;
            }
            map.put(CampaignEx.JSON_KEY_TITLE, str);
            map.put("tabId", String.valueOf(this.f44613e));
            if (operateItem != null) {
                il.b.a(operateItem, map);
            }
            hj.i.f64505a.D(SubTabFragment.INSTANCE.a(this.f44613e), map);
            return;
        }
        HashMap map2 = new HashMap();
        map2.put("event_type", "browse_custom");
        if (operateItem == null || (title = operateItem.getTitle()) == null) {
            title = "";
        }
        map2.put(CampaignEx.JSON_KEY_TITLE, title);
        if (operateItem != null && (opId = operateItem.getOpId()) != null) {
            str = opId;
        }
        map2.put("opId", str);
        map2.put("tabId", String.valueOf(this.f44613e));
        if (operateItem != null) {
            il.b.a(operateItem, map2);
        }
        com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.f44613e), map2);
    }

    private final void C(BannerData bannerData, int i11, OperateItem operateItem) {
        if (ak.g.f639a.b()) {
            hl.d.f64525c.b(this.f44613e, i11, operateItem, bannerData);
            return;
        }
        HashMap map = new HashMap();
        map.put("event_type", "click_custom_item");
        map.put("sequence", String.valueOf(i11));
        CustomData customData = operateItem.getCustomData();
        map.put("rowCount", String.valueOf(customData != null ? Integer.valueOf(customData.getRowCount()) : null));
        map.put("tabId", String.valueOf(this.f44613e));
        if (bannerData != null) {
            il.b.c(bannerData, map);
        }
        il.b.a(operateItem, map);
        com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.f44613e), map);
    }

    private final void D(BannerData bannerData, String str) {
        String deepLink = bannerData.getDeepLink();
        if (deepLink != null) {
            ak.k.g(deepLink, "&module_name=opt_custom&from_opt_id=" + str + "&ops=" + bannerData.getOps() + "&tab_id=" + this.f44613e);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.CUSTOM_DATA.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_sub_operation_variable;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        List<BannerData> items;
        List<BannerData> items2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TextView) helper.getView(R$id.sub_operation_variable_title)).setText(item.getTitle());
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_variable_recycle);
        CustomData customData = item.getCustomData();
        CustomData customData2 = item.getCustomData();
        SubCustomAdapter subCustomAdapter = new SubCustomAdapter(0, item, customData, (customData2 == null || (items2 = customData2.getItems()) == null) ? null : items2.get(0), this.f44613e, this.f44614f, 1, null);
        recyclerView.setAdapter(subCustomAdapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        CustomData customData3 = item.getCustomData();
        subCustomAdapter.n1((customData3 == null || (items = customData3.getItems()) == null) ? new ArrayList<>() : items);
        subCustomAdapter.w1(new p6.d() { // from class: com.transsion.home.adapter.suboperate.provider.j
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                k.A(item, this, baseQuickAdapter, view, i11);
            }
        });
        B(item);
    }
}
