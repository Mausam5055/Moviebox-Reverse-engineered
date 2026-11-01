package com.transsion.home.fragment.tab;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.HomePreferencesRefreshType;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.dialog.HomePreferencesDialog;
import com.transsion.home.viewmodel.HomePreferencesViewModel;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Function;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class HomePreferencesUiHelperKt {

    public static final class a extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f45273a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecyclerView.m f45274b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f45275c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ BaseHomeSubFragment f45276d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ HomePreferencesViewModel f45277e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f45278f;

        a(Ref.BooleanRef booleanRef, RecyclerView.m mVar, Ref.ObjectRef objectRef, BaseHomeSubFragment baseHomeSubFragment, HomePreferencesViewModel homePreferencesViewModel, Ref.IntRef intRef) {
            this.f45273a = booleanRef;
            this.f45274b = mVar;
            this.f45275c = objectRef;
            this.f45276d = baseHomeSubFragment;
            this.f45277e = homePreferencesViewModel;
            this.f45278f = intRef;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit f(HomePreferencesViewModel homePreferencesViewModel, HomePreferencesConfig homePreferencesConfig, BaseHomeSubFragment baseHomeSubFragment, List selected) {
            Intrinsics.h(selected, "selected");
            homePreferencesViewModel.B(homePreferencesConfig);
            homePreferencesViewModel.L(homePreferencesConfig, selected);
            rl.c cVar = rl.c.f74547a;
            int mTabId = baseHomeSubFragment.getMTabId();
            String mTabCode = baseHomeSubFragment.getMTabCode();
            if (mTabCode == null) {
                mTabCode = "";
            }
            cVar.k(mTabId, mTabCode, homePreferencesConfig, selected);
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit g(HomePreferencesViewModel homePreferencesViewModel, HomePreferencesConfig homePreferencesConfig, BaseHomeSubFragment baseHomeSubFragment) {
            homePreferencesViewModel.C(homePreferencesConfig);
            rl.c cVar = rl.c.f74547a;
            int mTabId = baseHomeSubFragment.getMTabId();
            String mTabCode = baseHomeSubFragment.getMTabCode();
            if (mTabCode == null) {
                mTabCode = "";
            }
            cVar.j(mTabId, mTabCode, homePreferencesConfig);
            return Unit.f67061a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView rv2, int i11, int i12) {
            int iU;
            Intrinsics.h(rv2, "rv");
            super.onScrolled(rv2, i11, i12);
            if (this.f45273a.element || i12 <= 0) {
                return;
            }
            RecyclerView.m mVar = this.f45274b;
            if (mVar instanceof LinearLayoutManager) {
                iU = ((LinearLayoutManager) mVar).findFirstVisibleItemPosition();
            } else if (mVar instanceof StaggeredGridLayoutManager) {
                int[] iArrD = ((StaggeredGridLayoutManager) mVar).D(null);
                Intrinsics.g(iArrD, "findFirstVisibleItemPositions(...)");
                iU = ArraysKt.U(iArrD);
            } else {
                iU = 0;
            }
            if (this.f45275c.element == 0) {
                String mTabCode = this.f45276d.getMTabCode();
                if (mTabCode == null) {
                    return;
                } else {
                    this.f45277e.J(mTabCode);
                }
            }
            final HomePreferencesConfig homePreferencesConfig = (HomePreferencesConfig) this.f45275c.element;
            if (homePreferencesConfig != null && iU > this.f45278f.element) {
                this.f45273a.element = true;
                HomePreferencesDialog homePreferencesDialogA = HomePreferencesDialog.INSTANCE.a();
                homePreferencesDialogA.z0(homePreferencesConfig);
                rl.c cVar = rl.c.f74547a;
                int mTabId = this.f45276d.getMTabId();
                String mTabCode2 = this.f45276d.getMTabCode();
                if (mTabCode2 == null) {
                    mTabCode2 = "";
                }
                cVar.l(mTabId, mTabCode2, homePreferencesConfig);
                final HomePreferencesViewModel homePreferencesViewModel = this.f45277e;
                final BaseHomeSubFragment baseHomeSubFragment = this.f45276d;
                homePreferencesDialogA.B0(new Function1() { // from class: com.transsion.home.fragment.tab.g
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return HomePreferencesUiHelperKt.a.f(homePreferencesViewModel, homePreferencesConfig, baseHomeSubFragment, (List) obj);
                    }
                });
                final HomePreferencesViewModel homePreferencesViewModel2 = this.f45277e;
                final BaseHomeSubFragment baseHomeSubFragment2 = this.f45276d;
                homePreferencesDialogA.A0(new Function0() { // from class: com.transsion.home.fragment.tab.h
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return HomePreferencesUiHelperKt.a.g(homePreferencesViewModel2, homePreferencesConfig, baseHomeSubFragment2);
                    }
                });
                this.f45277e.D(homePreferencesConfig);
                homePreferencesDialogA.l0(this.f45276d, "HomePreferencesDialog");
            }
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f45279a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45279a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f45279a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45279a.invoke(obj);
        }
    }

    public static final void f(String str, HomePreferencesViewModel viewModel, List baseList) {
        Intrinsics.h(viewModel, "viewModel");
        Intrinsics.h(baseList, "baseList");
        if (str == null || baseList.isEmpty()) {
            return;
        }
        viewModel.E(str, baseList);
        List listT = viewModel.t(str, baseList);
        if (listT.isEmpty()) {
            return;
        }
        for (el.a aVar : CollectionsKt.I0(listT, new Comparator() { // from class: com.transsion.home.fragment.tab.HomePreferencesUiHelperKt$applyHomePreferencesInsertToList$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(Integer.valueOf(((el.a) t11).b()), Integer.valueOf(((el.a) t12).b()));
            }
        })) {
            int iM = RangesKt.m(aVar.b(), 0, baseList.size());
            OperateItem operateItem = new OperateItem(null, PostItemType.PREFERENCES.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483645, null);
            operateItem.setHomePreferencesConfig(aVar.a());
            Unit unit = Unit.f67061a;
            baseList.add(iM, operateItem);
        }
    }

    public static final void g(List data, List blockList, List instructions) {
        int iIndexOf;
        HomePreferencesConfig homePreferencesConfig;
        String labelId;
        Intrinsics.h(data, "data");
        Intrinsics.h(blockList, "blockList");
        Intrinsics.h(instructions, "instructions");
        if (data.isEmpty() || blockList.isEmpty() || instructions.isEmpty()) {
            return;
        }
        List listU0 = CollectionsKt.U0(data);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = data.iterator();
        while (it.hasNext()) {
            OperateItem operateItem = (OperateItem) it.next();
            if (Intrinsics.c(operateItem.getType(), PostItemType.PREFERENCES.getValue()) && (homePreferencesConfig = operateItem.getHomePreferencesConfig()) != null && (labelId = homePreferencesConfig.getLabelId()) != null) {
                linkedHashSet.add(labelId);
            }
        }
        for (el.a aVar : CollectionsKt.I0(instructions, new Comparator() { // from class: com.transsion.home.fragment.tab.HomePreferencesUiHelperKt$applyPreferencesInsertWithBlocksForUgc$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(Integer.valueOf(((el.a) t11).b()), Integer.valueOf(((el.a) t12).b()));
            }
        })) {
            int iM = RangesKt.m(aVar.b(), 2, blockList.size());
            HomePreferencesConfig homePreferencesConfigA = aVar.a();
            if (!linkedHashSet.contains(homePreferencesConfigA.getLabelId())) {
                if (iM >= blockList.size()) {
                    iIndexOf = listU0.size();
                } else {
                    OperateItem operateItem2 = (OperateItem) blockList.get(iM);
                    if (Intrinsics.c(operateItem2.getType(), PostItemType.UGC_PORTRAIT_GRID.getValue())) {
                        Iterator it2 = listU0.iterator();
                        int i11 = 0;
                        while (true) {
                            if (!it2.hasNext()) {
                                iIndexOf = -1;
                                break;
                            } else {
                                if (((OperateItem) it2.next()) == operateItem2) {
                                    iIndexOf = i11;
                                    break;
                                }
                                i11++;
                            }
                        }
                        if (iIndexOf < 0) {
                            iIndexOf = listU0.size();
                        }
                    } else {
                        OperateItem originalOperateItem = operateItem2.getOriginalOperateItem();
                        if (Intrinsics.c(operateItem2.getType(), PostItemType.FEEDS_TITLE.getValue()) || originalOperateItem == null) {
                            iIndexOf = listU0.indexOf(operateItem2);
                        } else {
                            Iterator it3 = listU0.iterator();
                            int i12 = 0;
                            while (true) {
                                if (!it3.hasNext()) {
                                    iIndexOf = -1;
                                    break;
                                } else {
                                    if (((OperateItem) it3.next()).getOriginalOperateItem() == originalOperateItem) {
                                        iIndexOf = i12;
                                        break;
                                    }
                                    i12++;
                                }
                            }
                        }
                        if (iIndexOf < 0) {
                            iIndexOf = listU0.size();
                        }
                    }
                }
                int i13 = iIndexOf - 1;
                int i14 = i13 >= 0 ? i13 : 0;
                lg.a.C0828a.f(lg.a.f68839a, "HomePreferences", "applyPreferencesInsertWithBlocksForUgc, 插入运营位 targetPos:" + i14, false, 4, null);
                OperateItem operateItem3 = new OperateItem(null, PostItemType.PREFERENCES.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483645, null);
                operateItem3.setHomePreferencesConfig(aVar.a());
                Unit unit = Unit.f67061a;
                listU0.add(i14, operateItem3);
                linkedHashSet.add(homePreferencesConfigA.getLabelId());
            }
        }
        data.clear();
        data.addAll(listU0);
    }

    public static final void h(final BaseHomeSubFragment baseHomeSubFragment, RecyclerView recyclerView, RecyclerView.m layoutManager, HomePreferencesViewModel viewModel, final Function0 currentListSize) {
        Intrinsics.h(baseHomeSubFragment, "<this>");
        Intrinsics.h(recyclerView, "recyclerView");
        Intrinsics.h(layoutManager, "layoutManager");
        Intrinsics.h(viewModel, "viewModel");
        Intrinsics.h(currentListSize, "currentListSize");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = Integer.MAX_VALUE;
        viewModel.v().j(baseHomeSubFragment.getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.home.fragment.tab.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HomePreferencesUiHelperKt.i(baseHomeSubFragment, booleanRef, objectRef, intRef, currentListSize, (Pair) obj);
            }
        }));
        recyclerView.addOnScrollListener(new a(booleanRef, layoutManager, objectRef, baseHomeSubFragment, viewModel, intRef));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r6v2, types: [T, com.transsion.home.bean.HomePreferencesConfig] */
    public static final Unit i(BaseHomeSubFragment baseHomeSubFragment, Ref.BooleanRef booleanRef, Ref.ObjectRef objectRef, Ref.IntRef intRef, Function0 function0, Pair pair) {
        String str = (String) pair.component1();
        ?? r11 = (HomePreferencesConfig) pair.component2();
        if (!Intrinsics.c(str, baseHomeSubFragment.getMTabCode())) {
            return Unit.f67061a;
        }
        if (booleanRef.element || objectRef.element != 0) {
            return Unit.f67061a;
        }
        if (Intrinsics.c(r11.getRefreshType(), HomePreferencesRefreshType.NO_REFRESH.getValue())) {
            objectRef.element = r11;
            Integer pos = r11.getPos();
            intRef.element = RangesKt.m(pos != null ? pos.intValue() : ((Number) function0.invoke()).intValue(), 0, ((Number) function0.invoke()).intValue());
            return Unit.f67061a;
        }
        objectRef.element = r11;
        Integer pos2 = r11.getPos();
        intRef.element = RangesKt.m(pos2 != null ? pos2.intValue() : ((Number) function0.invoke()).intValue(), 0, ((Number) function0.invoke()).intValue());
        return Unit.f67061a;
    }

    public static final void j(com.transsion.home.adapter.trending.provider.e provider, final HomePreferencesViewModel viewModel, final BaseProviderMultiAdapter adapter, final int i11, final String tabCode) {
        Intrinsics.h(provider, "provider");
        Intrinsics.h(viewModel, "viewModel");
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(tabCode, "tabCode");
        provider.L(new Function3() { // from class: com.transsion.home.fragment.tab.b
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return HomePreferencesUiHelperKt.k(viewModel, i11, tabCode, (HomePreferencesConfig) obj, (List) obj2, (String) obj3);
            }
        });
        provider.J(new Function1() { // from class: com.transsion.home.fragment.tab.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HomePreferencesUiHelperKt.l(viewModel, i11, tabCode, adapter, (HomePreferencesConfig) obj);
            }
        });
        provider.K(new Function1() { // from class: com.transsion.home.fragment.tab.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HomePreferencesUiHelperKt.m(viewModel, i11, tabCode, (HomePreferencesConfig) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(HomePreferencesViewModel homePreferencesViewModel, int i11, String str, HomePreferencesConfig config, List selectOptions, String scene) {
        Intrinsics.h(config, "config");
        Intrinsics.h(selectOptions, "selectOptions");
        Intrinsics.h(scene, "scene");
        homePreferencesViewModel.M(config, selectOptions, scene);
        rl.c.f74547a.r(i11, str, config, selectOptions);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(HomePreferencesViewModel homePreferencesViewModel, int i11, String str, BaseProviderMultiAdapter baseProviderMultiAdapter, HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        homePreferencesViewModel.C(config);
        rl.c.f74547a.p(i11, str, config);
        Iterator<Object> it = baseProviderMultiAdapter.getData().iterator();
        int i12 = 0;
        while (true) {
            if (!it.hasNext()) {
                i12 = -1;
                break;
            }
            OperateItem operateItem = (OperateItem) it.next();
            if (Intrinsics.c(operateItem.getType(), PostItemType.PREFERENCES.getValue())) {
                HomePreferencesConfig homePreferencesConfig = operateItem.getHomePreferencesConfig();
                if (Intrinsics.c(homePreferencesConfig != null ? homePreferencesConfig.getLabelId() : null, config.getLabelId())) {
                    break;
                }
            }
            i12++;
        }
        if (i12 >= 0) {
            baseProviderMultiAdapter.C0(i12);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(HomePreferencesViewModel homePreferencesViewModel, int i11, String str, HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        homePreferencesViewModel.D(config);
        rl.c.f74547a.q(i11, str, config);
        return Unit.f67061a;
    }

    public static final List n(List flatList) {
        Object next;
        Intrinsics.h(flatList, "flatList");
        if (flatList.isEmpty()) {
            return CollectionsKt.l();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < flatList.size()) {
            OperateItem operateItem = (OperateItem) flatList.get(i11);
            if (!Intrinsics.c(operateItem.getType(), PostItemType.TRENDING_MARGIN.getValue())) {
                if (Intrinsics.c(operateItem.getType(), PostItemType.FEEDS_TITLE.getValue())) {
                    int i12 = i11 + 1;
                    Iterator it = flatList.subList(i12, flatList.size()).iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (((OperateItem) next).getOriginalOperateItem() == null);
                    OperateItem operateItem2 = (OperateItem) next;
                    OperateItem originalOperateItem = operateItem2 != null ? operateItem2.getOriginalOperateItem() : null;
                    if (originalOperateItem != null) {
                        if (linkedHashSet.add(originalOperateItem)) {
                            arrayList.add(operateItem);
                        }
                        i11 = i12;
                    }
                }
                OperateItem originalOperateItem2 = operateItem.getOriginalOperateItem();
                if (originalOperateItem2 == null) {
                    originalOperateItem2 = operateItem;
                }
                if (linkedHashSet.add(originalOperateItem2)) {
                    arrayList.add(operateItem);
                }
            }
            i11++;
        }
        return arrayList;
    }

    public static final void o(final BaseHomeSubFragment fragment, HomePreferencesViewModel viewModel, final BaseProviderMultiAdapter adapter) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(viewModel, "viewModel");
        Intrinsics.h(adapter, "adapter");
        viewModel.u().j(fragment.getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.home.fragment.tab.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HomePreferencesUiHelperKt.p(fragment, adapter, (Pair) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p(BaseHomeSubFragment baseHomeSubFragment, BaseProviderMultiAdapter baseProviderMultiAdapter, Pair pair) {
        List list;
        String str = (String) pair.component1();
        List list2 = (List) pair.component2();
        if (!Intrinsics.c(str, baseHomeSubFragment.getMTabCode()) || (list = list2) == null || list.isEmpty()) {
            return Unit.f67061a;
        }
        List<Object> data = baseProviderMultiAdapter.getData();
        ArrayList arrayList = new ArrayList();
        for (Object obj : data) {
            if (Intrinsics.c(((OperateItem) obj).getType(), PostItemType.PREFERENCES.getValue())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            HomePreferencesConfig homePreferencesConfig = ((OperateItem) it.next()).getHomePreferencesConfig();
            String labelId = homePreferencesConfig != null ? homePreferencesConfig.getLabelId() : null;
            if (labelId != null) {
                arrayList2.add(labelId);
            }
        }
        HashSet hashSetP0 = CollectionsKt.P0(arrayList2);
        int i11 = 0;
        for (el.a aVar : CollectionsKt.I0(list2, new Comparator() { // from class: com.transsion.home.fragment.tab.HomePreferencesUiHelperKt$observeHomePreferencesInsertInstructions$lambda$12$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(Integer.valueOf(((el.a) t11).b()), Integer.valueOf(((el.a) t12).b()));
            }
        })) {
            String labelId2 = aVar.a().getLabelId();
            if (!hashSetP0.contains(labelId2)) {
                hashSetP0.add(labelId2);
                int iM = RangesKt.m((aVar.b() - 1) + i11, 4, baseProviderMultiAdapter.getData().size());
                OperateItem operateItem = new OperateItem(null, PostItemType.PREFERENCES.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483645, null);
                operateItem.setHomePreferencesConfig(aVar.a());
                Unit unit = Unit.f67061a;
                baseProviderMultiAdapter.n(iM, operateItem);
                i11++;
            }
        }
        return Unit.f67061a;
    }
}
