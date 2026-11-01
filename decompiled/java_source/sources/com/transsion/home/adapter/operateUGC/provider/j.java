package com.transsion.home.adapter.operateUGC.provider;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.FilterItem;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class j extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Integer f44367e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f44368f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f44369g = LazyKt.b(new Function0() { // from class: com.transsion.home.adapter.operateUGC.provider.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return j.A();
        }
    });

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ!\u0010\r\u001a\u00020\f2\b\u0010\n\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u000f\u001a\u00020\f2\b\u0010\n\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/transsion/home/adapter/operateUGC/provider/j$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/FilterItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "tabId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "<init>", "(Ljava/lang/Integer;Lcom/transsion/home/bean/OperateItem;)V", WebConstants.FIELD_ITEM, RequestParameters.POSITION, "", "F1", "(Lcom/transsion/home/bean/FilterItem;I)V", "E1", "holder", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/FilterItem;)V", "F", "Ljava/lang/Integer;", "G", "Lcom/transsion/home/bean/OperateItem;", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends BaseQuickAdapter {
        public static final int H = 8;

        /* JADX INFO: renamed from: F, reason: from kotlin metadata */
        private final Integer tabId;

        /* JADX INFO: renamed from: G, reason: from kotlin metadata */
        private final OperateItem operateItem;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Integer num, OperateItem operateItem) {
            super(R$layout.item_ugc_education_filter, null, 2, null);
            Intrinsics.h(operateItem, "operateItem");
            this.tabId = num;
            this.operateItem = operateItem;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void D1(FilterItem filterItem, a aVar, BaseViewHolder baseViewHolder, View view) {
            String deepLink = filterItem.getDeepLink();
            if (deepLink != null) {
                ak.k.h(deepLink, null, 1, null);
            }
            aVar.F1(filterItem, baseViewHolder.getLayoutPosition());
        }

        private final void E1(FilterItem item, int position) {
            String title;
            HashMap map = new HashMap();
            map.put("module_name", WebConstants.FIELD_ITEM);
            if (item == null || (title = item.getTitle()) == null) {
                title = "";
            }
            map.put(CampaignEx.JSON_KEY_TITLE, title);
            map.put(RequestParameters.POSITION, String.valueOf(position));
            il.b.a(this.operateItem, map);
            hj.i iVar = hj.i.f64505a;
            SubTabFragment.Companion companion = SubTabFragment.INSTANCE;
            Integer num = this.tabId;
            iVar.D(companion.a(num != null ? num.intValue() : 1), map);
        }

        private final void F1(FilterItem item, int position) {
            String title;
            HashMap map = new HashMap();
            map.put("module_name", WebConstants.FIELD_ITEM);
            if (item == null || (title = item.getTitle()) == null) {
                title = "";
            }
            map.put(CampaignEx.JSON_KEY_TITLE, title);
            map.put(RequestParameters.POSITION, String.valueOf(position));
            il.b.a(this.operateItem, map);
            hj.i iVar = hj.i.f64505a;
            SubTabFragment.Companion companion = SubTabFragment.INSTANCE;
            Integer num = this.tabId;
            iVar.p(companion.a(num != null ? num.intValue() : 1), map);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
        public void F(final BaseViewHolder holder, final FilterItem item) {
            String url;
            String thumbnail;
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            holder.setText(R$id.tv_op_ugc_item_filter, item.getTitle());
            ej.f.b bVarM = ej.f.f61882a.m(getContext());
            Cover image = item.getImage();
            String str = "";
            if (image == null || (url = image.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            Cover image2 = item.getImage();
            if (image2 != null && (thumbnail = image2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarG.l(str).m(com.blankj.utilcode.util.a0.a(32.0f)).d((ImageView) holder.getView(R$id.iv_op_ugc_item_filter));
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.provider.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    j.a.D1(item, this, holder, view);
                }
            });
            E1(item, holder.getLayoutPosition());
        }
    }

    public static final class b extends RecyclerView.s {
        b() {
            m(0, 4);
        }
    }

    public j(Integer num, boolean z10) {
        this.f44367e = num;
        this.f44368f = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b A() {
        return new b();
    }

    private final b B() {
        return (b) this.f44369g.getValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.UGC_FILTER.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_sub_operation_filter;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        List<FilterItem> filters = item.getFilters();
        if (filters == null) {
            filters = new ArrayList<>();
        }
        if (filters.isEmpty()) {
            View itemView = helper.itemView;
            Intrinsics.g(itemView, "itemView");
            jg.c.g(itemView);
            return;
        }
        View itemView2 = helper.itemView;
        Intrinsics.g(itemView2, "itemView");
        jg.c.k(itemView2);
        TextView textView = (TextView) helper.getView(R$id.sub_operation_filter_title);
        String title = item.getTitle();
        String string = title != null ? StringsKt.n1(title).toString() : null;
        if (string == null || string.length() == 0) {
            jg.c.g(textView);
        } else {
            textView.setText(item.getTitle());
            jg.c.k(textView);
        }
        RecyclerView recyclerView = (RecyclerView) helper.itemView.findViewById(R$id.sub_operation_filter_recycler);
        recyclerView.setLayoutManager(new GridLayoutManager(k(), 5));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.b(com.blankj.utilcode.util.a0.a(12.0f), com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(8.0f), com.blankj.utilcode.util.a0.a(8.0f)));
        }
        if (!Intrinsics.c(recyclerView.getRecycledViewPool(), B())) {
            recyclerView.setRecycledViewPool(B());
        }
        a aVar = new a(this.f44367e, item);
        aVar.n1(filters);
        recyclerView.setAdapter(aVar);
    }
}
