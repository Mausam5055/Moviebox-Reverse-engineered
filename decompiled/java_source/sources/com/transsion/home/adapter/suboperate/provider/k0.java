package com.transsion.home.adapter.suboperate.provider;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.BffCommonOpData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class k0 extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f44616f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f44617g;

    public k0(int i11, boolean z10) {
        this.f44615e = i11;
        this.f44616f = z10;
        int i12 = z10 ? 4 : 3;
        this.f44617g = ((int) (com.blankj.utilcode.util.a0.a(((((com.blankj.utilcode.util.a0.b(RangesKt.i(com.blankj.utilcode.util.y.e(), com.blankj.utilcode.util.y.c())) - 12) - (i12 * 8)) - 12) * 1.0f) / i12) * 1.39f)) + com.blankj.utilcode.util.a0.a(26.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(List list, k0 k0Var, OperateItem operateItem, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        BffCommonOpData bffCommonOpData = (BffCommonOpData) CollectionsKt.l0(list, i11);
        if (bffCommonOpData == null) {
            return;
        }
        if (i11 == list.size() - 1) {
            k0Var.B(operateItem, bffCommonOpData);
            k0Var.D(bffCommonOpData, i11, operateItem);
        } else {
            k0Var.B(operateItem, bffCommonOpData);
            k0Var.D(bffCommonOpData, i11, operateItem);
        }
    }

    private final void B(OperateItem operateItem, BffCommonOpData bffCommonOpData) {
        String deepLink = bffCommonOpData.getDeepLink();
        if (deepLink != null) {
            ak.k.h(deepLink, null, 1, null);
        }
    }

    private final void C(OperateItem operateItem) {
        String title;
        String opId;
        HashMap map = new HashMap();
        map.put("event_type", "browse_post_list");
        String str = "";
        if (operateItem == null || (title = operateItem.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        if (operateItem != null && (opId = operateItem.getOpId()) != null) {
            str = opId;
        }
        map.put("opId", str);
        map.put("tabId", String.valueOf(this.f44615e));
        if (operateItem != null) {
            il.b.a(operateItem, map);
        }
        com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.f44615e), map);
    }

    private final void D(BffCommonOpData bffCommonOpData, int i11, OperateItem operateItem) {
        HashMap map = new HashMap();
        map.put("event_type", "click_post_list_item");
        map.put("sequence", String.valueOf(i11));
        map.put("tabId", String.valueOf(this.f44615e));
        il.b.d(bffCommonOpData, map);
        il.b.a(operateItem, map);
        com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.f44615e), map);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.POST_LIST.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_sub_operation_variable;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        List<BffCommonOpData> postData = item.getPostData();
        if (postData == null) {
            postData = CollectionsKt.l();
        }
        helper.itemView.setVisibility(postData.isEmpty() ? 8 : 0);
        if (postData.isEmpty()) {
            return;
        }
        ((TextView) helper.getView(R$id.sub_operation_variable_title)).setText(item.getTitle());
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_variable_recycle);
        final List listK0 = CollectionsKt.K0(postData, 10);
        if (this.f44617g > 0) {
            ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
            layoutParams.height = this.f44617g;
            recyclerView.setLayoutParams(layoutParams);
        }
        Object tag = recyclerView.getTag();
        com.transsion.home.adapter.suboperate.adapter.n nVar = tag instanceof com.transsion.home.adapter.suboperate.adapter.n ? (com.transsion.home.adapter.suboperate.adapter.n) tag : null;
        if (nVar == null) {
            nVar = new com.transsion.home.adapter.suboperate.adapter.n(0, item, this.f44615e, this.f44616f, 1, null);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
            linearLayoutManager.setItemPrefetchEnabled(true);
            recyclerView.setLayoutManager(linearLayoutManager);
            recyclerView.setAdapter(nVar);
            recyclerView.setTag(nVar);
            if (recyclerView.getItemDecorationCount() == 0) {
                recyclerView.addItemDecoration(new ig.f(8.0f, 0.0f, 12.0f, 2, null));
            }
        } else {
            nVar.E1(item);
        }
        nVar.n1(listK0);
        nVar.w1(new p6.d() { // from class: com.transsion.home.adapter.suboperate.provider.j0
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                k0.A(listK0, this, item, baseQuickAdapter, view, i11);
            }
        });
        C(item);
    }
}
