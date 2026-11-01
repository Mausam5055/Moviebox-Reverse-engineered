package com.transsion.home.tv.adapter;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.base.report.athena.BrowseType;
import com.transsion.base.report.athena.ClickType;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.CustomData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.tv.fragment.TVChannelHomeFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class n extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f45603e;

    public n(int i11) {
        this.f45603e = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(OperateItem operateItem, n nVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<BannerData> items;
        BannerData bannerData;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        CustomData customData = operateItem.getCustomData();
        if (customData == null || (items = customData.getItems()) == null || (bannerData = (BannerData) CollectionsKt.l0(items, i11)) == null) {
            return;
        }
        nVar.D(bannerData, operateItem.getOpId());
        nVar.C(bannerData, i11, operateItem);
    }

    private final void B(OperateItem operateItem) {
        String title;
        String opId;
        HashMap map = new HashMap();
        map.put("event_type", "browse_custom");
        String str = "";
        if (operateItem == null || (title = operateItem.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        if (operateItem != null && (opId = operateItem.getOpId()) != null) {
            str = opId;
        }
        map.put("opId", str);
        map.put("tabId", String.valueOf(this.f45603e));
        if (operateItem != null) {
            il.b.b(operateItem, map);
        }
        hj.i.f64505a.E(TVChannelHomeFragment.INSTANCE.b(this.f45603e), map, BrowseType.CONTENT);
    }

    private final void C(BannerData bannerData, int i11, OperateItem operateItem) {
        String deepLink;
        HashMap map = new HashMap();
        map.put("event_type", "click_custom_item");
        map.put(RequestParameters.POSITION, String.valueOf(i11));
        CustomData customData = operateItem.getCustomData();
        map.put("rowCount", String.valueOf(customData != null ? Integer.valueOf(customData.getRowCount()) : null));
        map.put("tabId", String.valueOf(this.f45603e));
        if (bannerData == null || (deepLink = bannerData.getDeepLink()) == null) {
            deepLink = "";
        }
        map.put("content_id", deepLink);
        if (bannerData != null) {
            il.b.g(bannerData, map);
        }
        il.b.b(operateItem, map);
        hj.i.f64505a.q(TVChannelHomeFragment.INSTANCE.b(this.f45603e), map, ClickType.CONTENT);
    }

    private final void D(BannerData bannerData, String str) {
        String deepLink = bannerData.getDeepLink();
        if (deepLink != null) {
            ak.k.g(deepLink, "&module_name=opt_custom&from_opt_id=" + str + "&ops=" + bannerData.getOps() + "&tab_id=" + this.f45603e);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.MULTILINE_SUBJECTS_LIST.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_tv_multiline_subjects;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        Integer showLine;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        int i11 = R$id.tvMultilineTitle;
        String title = item.getTitle();
        if (title == null) {
            title = "";
        }
        helper.setText(i11, title);
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.tvMultilineRecycler);
        CustomData customData = item.getCustomData();
        int iF = RangesKt.f((customData == null || (showLine = customData.getShowLine()) == null) ? 1 : showLine.intValue(), 1);
        TvMultilineSubjectsCardAdapter tvMultilineSubjectsCardAdapter = new TvMultilineSubjectsCardAdapter(item, this.f45603e);
        recyclerView.setAdapter(tvMultilineSubjectsCardAdapter);
        NpaGridLayoutManager npaGridLayoutManager = new NpaGridLayoutManager(k(), iF, 0, false);
        npaGridLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(npaGridLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.a(dk.a.b(8), dk.a.b(8), dk.a.b(12), dk.a.b(12)));
        }
        CustomData customData2 = item.getCustomData();
        List<BannerData> items = customData2 != null ? customData2.getItems() : null;
        if (items == null) {
            items = CollectionsKt.l();
        }
        tvMultilineSubjectsCardAdapter.n1(items);
        tvMultilineSubjectsCardAdapter.w1(new p6.d() { // from class: com.transsion.home.tv.adapter.m
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                n.A(item, this, baseQuickAdapter, view, i12);
            }
        });
        B(item);
    }
}
