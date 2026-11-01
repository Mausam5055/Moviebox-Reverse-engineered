package com.transsion.home.adapter.suboperate.provider;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.suboperate.adapter.SubFilterAdapter;
import com.transsion.home.bean.FilterItem;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class w extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Integer f44647e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f44648f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f44649g = LazyKt.b(new Function0() { // from class: com.transsion.home.adapter.suboperate.provider.v
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return w.A();
        }
    });

    public static final class a extends RecyclerView.s {
        a() {
            m(0, 4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void k(RecyclerView.b0 b0Var) {
            super.k(b0Var);
        }
    }

    public w(Integer num, boolean z10) {
        this.f44647e = num;
        this.f44648f = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a A() {
        return new a();
    }

    private final a B() {
        return (a) this.f44649g.getValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.FILTER.ordinal();
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
        if (title == null || title.length() == 0) {
            jg.c.g(textView);
        } else {
            textView.setText(item.getTitle());
            jg.c.k(textView);
        }
        RecyclerView recyclerView = (RecyclerView) helper.itemView.findViewById(R$id.sub_operation_filter_recycler);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        if (!Intrinsics.c(recyclerView.getRecycledViewPool(), B())) {
            recyclerView.setRecycledViewPool(B());
        }
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        SubFilterAdapter subFilterAdapter = adapter instanceof SubFilterAdapter ? (SubFilterAdapter) adapter : null;
        if (subFilterAdapter == null) {
            subFilterAdapter = new SubFilterAdapter(0, this.f44647e, item, this.f44648f, 1, null);
            recyclerView.setAdapter(subFilterAdapter);
        }
        subFilterAdapter.n1(filters);
    }
}
