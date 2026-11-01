package com.transsion.shorttv.ui.adapter.provider;

import android.net.Uri;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.bean.BannerData;
import com.transsion.shorttv.bean.CustomData;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.ShortTvItemType;
import com.transsion.shorttv.ui.adapter.ShortTvOpCustomAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class p extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f53200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f53201f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f53202g;

    public static final class a extends RecyclerView.s {
        a() {
            m(0, 16);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void k(RecyclerView.b0 b0Var) {
            super.k(b0Var);
        }
    }

    public p(String pageName, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        this.f53200e = pageName;
        this.f53201f = z10;
        this.f53202g = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.ui.adapter.provider.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return p.C();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(OperateItem operateItem, p pVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<BannerData> items;
        BannerData bannerData;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        CustomData customData = operateItem.getCustomData();
        if (customData == null || (items = customData.getItems()) == null || (bannerData = items.get(i11)) == null) {
            return;
        }
        pVar.G(bannerData);
        pVar.F(bannerData, i11, operateItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a C() {
        return new a();
    }

    private final a D() {
        return (a) this.f53202g.getValue();
    }

    private final void E(OperateItem operateItem) {
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
        if (operateItem != null) {
            com.transsion.shorttv.utils.i.a(operateItem, map);
        }
        ks.b.f68390a.a();
        hj.i.f64505a.D(this.f53200e, map);
    }

    private final void F(BannerData bannerData, int i11, OperateItem operateItem) {
        HashMap map = new HashMap();
        map.put("event_type", "click_custom_item");
        map.put("sequence", String.valueOf(i11));
        CustomData customData = operateItem.getCustomData();
        map.put("rowCount", String.valueOf(customData != null ? Integer.valueOf(customData.getRowCount()) : null));
        if (bannerData != null) {
            com.transsion.shorttv.utils.i.b(bannerData, map);
        }
        com.transsion.shorttv.utils.i.a(operateItem, map);
        ks.b.f68390a.a();
        hj.i.f64505a.p(this.f53200e, map);
    }

    private final void G(BannerData bannerData) {
        String deepLink = bannerData.getDeepLink();
        if (deepLink != null) {
            Uri uriA = zr.a.f79450a.a(Uri.parse(deepLink + "&module_name=opt_custom&ops=" + bannerData.getOps()));
            if (uriA != null) {
                ds.c.j(uriA);
            }
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        List<BannerData> items;
        List<BannerData> items2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TextView) helper.getView(R$id.sub_operation_variable_title)).setText(item.getTitle());
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_variable_recycle);
        String str = this.f53200e;
        CustomData customData = item.getCustomData();
        CustomData customData2 = item.getCustomData();
        ShortTvOpCustomAdapter shortTvOpCustomAdapter = new ShortTvOpCustomAdapter(0, str, customData, (customData2 == null || (items2 = customData2.getItems()) == null) ? null : items2.get(0), this.f53201f, 1, null);
        recyclerView.setAdapter(shortTvOpCustomAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(k(), 0, false));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new com.transsion.shorttv.base.widget.m(8.0f, 0.0f, 12.0f, 2, null));
        }
        if (!Intrinsics.c(recyclerView.getRecycledViewPool(), D())) {
            recyclerView.setRecycledViewPool(D());
        }
        CustomData customData3 = item.getCustomData();
        shortTvOpCustomAdapter.n1((customData3 == null || (items = customData3.getItems()) == null) ? new ArrayList<>() : items);
        shortTvOpCustomAdapter.w1(new p6.d() { // from class: com.transsion.shorttv.ui.adapter.provider.n
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                p.B(item, this, baseQuickAdapter, view, i11);
            }
        });
        E(item);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return ShortTvItemType.CUSTOM_DATA.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.short_tv_op_custom;
    }
}
