package com.transsion.home.view.filter.linear;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.p009lifecycle.b0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.HorizontalRecyclerview;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.home.R$layout;
import com.transsion.home.bean.FilterVal;
import com.transsion.home.bean.Item;
import com.transsion.home.viewmodel.MovieViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import jg.c;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import p6.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ+\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\r\u001a\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002¢\u0006\u0004\b\u0013\u0010\u0014JA\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00110\u00162\u0006\u0010\r\u001a\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010\"\u001a\u00020\u001d2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u000e¢\u0006\u0004\b\"\u0010#JC\u0010'\u001a\u00020\u001d2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u000e2&\u0010&\u001a\"\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010$j\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u0001`%¢\u0006\u0004\b'\u0010(J\u001b\u0010)\u001a\u00020\u001d2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u000e¢\u0006\u0004\b)\u0010#J%\u0010*\u001a\u00020\u001d2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\b\b\u0002\u0010\u001b\u001a\u00020\t¢\u0006\u0004\b*\u0010+R\"\u00103\u001a\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R$\u0010;\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006<"}, d2 = {"Lcom/transsion/home/view/filter/linear/FilterView;", "Landroidx/appcompat/widget/LinearLayoutCompat;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "filterType", "", "Lcom/transsion/home/bean/FilterVal;", "filterList", "", "Ltl/a;", "f", "(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;", "selectedVal", "Lkotlin/Pair;", "g", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lkotlin/Pair;", "Lcom/tn/lib/view/HorizontalRecyclerview;", "recyclerview", "selectIndex", "size", "", "h", "(Lcom/tn/lib/view/HorizontalRecyclerview;II)V", "Lcom/transsion/home/bean/Item;", "datas", "setDatas", "(Ljava/util/List;)V", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "selectItems", "updateSelectedFilterItems", "(Ljava/util/List;Ljava/util/HashMap;)V", "updateDatas", "createTabs", "(Ljava/util/List;I)V", "", "a", "Z", "getHasInit", "()Z", "setHasInit", "(Z)V", "hasInit", "Lcom/transsion/home/viewmodel/MovieViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/home/viewmodel/MovieViewModel;", "getMovieModel", "()Lcom/transsion/home/viewmodel/MovieViewModel;", "setMovieModel", "(Lcom/transsion/home/viewmodel/MovieViewModel;)V", "movieModel", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class FilterView extends LinearLayoutCompat {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private boolean hasInit;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private MovieViewModel movieModel;

    public static final class a extends DiffUtil.e {
        a() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(tl.a oldItem, tl.a newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.c(), newItem.c());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(tl.a oldItem, tl.a newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.b(), newItem.b());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilterView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        setOrientation(1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilterView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        setOrientation(1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilterView(Context context, AttributeSet attrs, int i11) {
        super(context, attrs, i11);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        setOrientation(1);
    }

    public static /* synthetic */ void createTabs$default(FilterView filterView, List list, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createTabs");
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        filterView.createTabs(list, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(FilterView filterView, BaseQuickAdapter adapter, View view, int i11) {
        MovieViewModel movieViewModel;
        b0 b0VarN;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        int i12 = 0;
        for (Object obj : adapter.getData()) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.u();
            }
            if (obj instanceof tl.a) {
                ((tl.a) obj).e(i12 == i11);
                if (i12 == i11 && (movieViewModel = filterView.movieModel) != null && (b0VarN = movieViewModel.n()) != null) {
                    b0VarN.q(obj);
                }
            }
            i12 = i13;
        }
        adapter.notifyDataSetChanged();
    }

    private final List f(String filterType, List filterList) {
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        for (Object obj : filterList) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            FilterVal filterVal = (FilterVal) obj;
            arrayList.add(new tl.a(filterVal.getId(), filterVal.getName(), filterType, i11 == 0, null, 16, null));
            i11 = i12;
        }
        return arrayList;
    }

    private final Pair g(String filterType, List filterList, String selectedVal) {
        String lowerCase;
        tl.a aVar;
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        int i12 = 0;
        for (Object obj : filterList) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.u();
            }
            FilterVal filterVal = (FilterVal) obj;
            String id2 = filterVal.getId();
            Locale locale = Locale.ROOT;
            String lowerCase2 = id2.toLowerCase(locale);
            Intrinsics.g(lowerCase2, "toLowerCase(...)");
            if (selectedVal != null) {
                lowerCase = selectedVal.toLowerCase(locale);
                Intrinsics.g(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            if (Intrinsics.c(lowerCase2, lowerCase)) {
                aVar = new tl.a(filterVal.getId(), filterVal.getName(), filterType, true, null, 16, null);
            } else {
                i12 = i11;
                aVar = new tl.a(filterVal.getId(), filterVal.getName(), filterType, false, null, 16, null);
            }
            arrayList.add(aVar);
            i11 = i12;
            i12 = i13;
        }
        return new Pair(Integer.valueOf(i11), arrayList);
    }

    private final void h(HorizontalRecyclerview recyclerview, int selectIndex, int size) {
        if (selectIndex > 5 || selectIndex < size - 3) {
            recyclerview.scrollToPosition(selectIndex - 3);
        } else {
            recyclerview.scrollToPosition(selectIndex);
        }
    }

    public final void createTabs(List<tl.a> datas, int selectIndex) {
        Intrinsics.h(datas, "datas");
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        HorizontalRecyclerview horizontalRecyclerview = new HorizontalRecyclerview(context);
        horizontalRecyclerview.setLayoutParams(new LinearLayoutCompat.a(-1, -2));
        horizontalRecyclerview.setLayoutManager(new NpaLinearLayoutManager(getContext(), 0, false));
        com.transsion.home.view.filter.linear.a aVar = new com.transsion.home.view.filter.linear.a(R$layout.adapter_filter_item, datas);
        aVar.w1(new d() { // from class: com.transsion.home.view.filter.linear.b
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                FilterView.e(this.f45759a, baseQuickAdapter, view, i11);
            }
        });
        aVar.R0(new a());
        horizontalRecyclerview.setAdapter(aVar);
        h(horizontalRecyclerview, selectIndex, datas.size());
        addView(horizontalRecyclerview);
    }

    public final boolean getHasInit() {
        return this.hasInit;
    }

    public final MovieViewModel getMovieModel() {
        return this.movieModel;
    }

    public final void setDatas(List<Item> datas) {
        Intrinsics.h(datas, "datas");
        for (Item item : datas) {
            createTabs$default(this, f(item.getFilterType(), item.getFilterValsV2()), 0, 2, null);
        }
        this.hasInit = true;
    }

    public final void setHasInit(boolean z10) {
        this.hasInit = z10;
    }

    public final void setMovieModel(MovieViewModel movieViewModel) {
        this.movieModel = movieViewModel;
    }

    public final void updateDatas(List<Item> datas) {
        Intrinsics.h(datas, "datas");
        if (datas.size() > getChildCount()) {
            int size = datas.size();
            for (int childCount = getChildCount(); childCount < size; childCount++) {
                createTabs$default(this, f(datas.get(childCount).getFilterType(), datas.get(childCount).getFilterValsV2()), 0, 2, null);
            }
            return;
        }
        int childCount2 = getChildCount();
        for (int i11 = 0; i11 < childCount2; i11++) {
            View childAt = getChildAt(i11);
            Intrinsics.f(childAt, "null cannot be cast to non-null type com.tn.lib.view.HorizontalRecyclerview");
            HorizontalRecyclerview horizontalRecyclerview = (HorizontalRecyclerview) childAt;
            if (i11 < datas.size()) {
                c.k(horizontalRecyclerview);
                RecyclerView.Adapter adapter = horizontalRecyclerview.getAdapter();
                Intrinsics.f(adapter, "null cannot be cast to non-null type com.transsion.home.view.filter.linear.FilterItemAdapter");
                ((com.transsion.home.view.filter.linear.a) adapter).q1(f(datas.get(i11).getFilterType(), datas.get(i11).getFilterValsV2()));
                horizontalRecyclerview.scrollToPosition(0);
            } else {
                c.g(horizontalRecyclerview);
            }
        }
    }

    public final void updateSelectedFilterItems(List<Item> datas, HashMap<String, String> selectItems) {
        Intrinsics.h(datas, "datas");
        this.hasInit = true;
        if (datas.size() > getChildCount()) {
            int size = datas.size();
            for (int childCount = getChildCount(); childCount < size; childCount++) {
                Pair pairG = g(datas.get(childCount).getFilterType(), datas.get(childCount).getFilterValsV2(), selectItems != null ? selectItems.get(datas.get(childCount).getFilterType()) : null);
                createTabs((List) pairG.getSecond(), ((Number) pairG.getFirst()).intValue());
            }
            return;
        }
        int childCount2 = getChildCount();
        for (int i11 = 0; i11 < childCount2; i11++) {
            View childAt = getChildAt(i11);
            Intrinsics.f(childAt, "null cannot be cast to non-null type com.tn.lib.view.HorizontalRecyclerview");
            HorizontalRecyclerview horizontalRecyclerview = (HorizontalRecyclerview) childAt;
            if (i11 < datas.size()) {
                c.k(horizontalRecyclerview);
                Pair pairG2 = g(datas.get(i11).getFilterType(), datas.get(i11).getFilterValsV2(), selectItems != null ? selectItems.get(datas.get(i11).getFilterType()) : null);
                RecyclerView.Adapter adapter = horizontalRecyclerview.getAdapter();
                Intrinsics.f(adapter, "null cannot be cast to non-null type com.transsion.home.view.filter.linear.FilterItemAdapter");
                ((com.transsion.home.view.filter.linear.a) adapter).q1((List) pairG2.getSecond());
                h(horizontalRecyclerview, ((Number) pairG2.getFirst()).intValue(), datas.size());
            } else {
                c.g(horizontalRecyclerview);
            }
        }
    }
}
