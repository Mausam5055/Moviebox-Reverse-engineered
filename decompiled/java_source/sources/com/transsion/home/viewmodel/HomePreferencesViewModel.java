package com.transsion.home.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.HomePreferencesShowStyle;
import com.transsion.home.bean.HomePreferencesState;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.repository.HomePreferencesRepository;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class HomePreferencesViewModel extends t0 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final a f45792q = new a(null);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f45793r = 8;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HomePreferencesState f45801h;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f45809p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f45794a = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HomePreferencesViewModel.n();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f45795b = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HomePreferencesViewModel.I(this.f45879a);
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f45796c = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HomePreferencesViewModel.G();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f45797d = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HomePreferencesViewModel.z();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f45798e = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HomePreferencesViewModel.F();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f45799f = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HomePreferencesViewModel.H();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f45800g = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HomePreferencesViewModel.q();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map f45802i = new LinkedHashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Set f45803j = new LinkedHashSet();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Set f45804k = new LinkedHashSet();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Set f45805l = new LinkedHashSet();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Set f45806m = new LinkedHashSet();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Map f45807n = new LinkedHashMap();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Map f45808o = new LinkedHashMap();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 F() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 G() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 H() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HomePreferencesRepository I(HomePreferencesViewModel homePreferencesViewModel) {
        Application applicationA = Utils.a();
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Intrinsics.e(applicationA);
        return new HomePreferencesRepository(homePreferencesViewModel.r(), companion.b(applicationA));
    }

    private final void K(HomePreferencesConfig homePreferencesConfig, List list, String str, boolean z10) {
        String labelId = homePreferencesConfig.getLabelId();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!StringsKt.q0((String) obj)) {
                arrayList.add(obj);
            }
        }
        List listH0 = CollectionsKt.H0(CollectionsKt.c0(arrayList));
        if (listH0.isEmpty()) {
            lg.a.C0828a.f(lg.a.f68839a, "HomePreferencesViewModel", "submitPreferences skip: empty selection, labelId=" + labelId + ", scene=" + str, false, 4, null);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        List list2 = (List) this.f45807n.get(labelId);
        Long l11 = (Long) this.f45808o.get(labelId);
        long jLongValue = l11 != null ? l11.longValue() : 0L;
        if (!z10) {
            if (list2 != null && list2.size() == listH0.size() && Intrinsics.c(CollectionsKt.W0(list2), CollectionsKt.W0(listH0))) {
                lg.a.C0828a.f(lg.a.f68839a, "HomePreferencesViewModel", "submitPreferences skip: same as last, labelId=" + labelId + ", scene=" + str, false, 4, null);
                return;
            }
            if (jCurrentTimeMillis - jLongValue < 5000) {
                lg.a.C0828a.f(lg.a.f68839a, "HomePreferencesViewModel", "submitPreferences skip: interval < 5000ms, labelId=" + labelId + ", scene=" + str, false, 4, null);
                return;
            }
        }
        this.f45807n.put(labelId, listH0);
        this.f45808o.put(labelId, Long.valueOf(jCurrentTimeMillis));
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HomePreferencesViewModel$submitPreferencesInternal$1(this, labelId, listH0, z10, homePreferencesConfig, str, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(HomePreferencesState homePreferencesState) {
        Object next;
        if (this.f45809p) {
            return;
        }
        Iterator<T> it = homePreferencesState.getEnterPopConfigs().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            HomePreferencesConfig homePreferencesConfig = (HomePreferencesConfig) next;
            if (!this.f45804k.contains(homePreferencesConfig.getLabelId()) && !this.f45805l.contains(homePreferencesConfig.getLabelId()) && !this.f45806m.contains(homePreferencesConfig.getLabelId())) {
                break;
            }
        }
        HomePreferencesConfig homePreferencesConfig2 = (HomePreferencesConfig) next;
        if (homePreferencesConfig2 == null) {
            return;
        }
        this.f45809p = true;
        s().n(homePreferencesConfig2);
    }

    private final void O(String str) {
        HomePreferencesState homePreferencesState;
        Object next;
        if (this.f45803j.contains(str) || (homePreferencesState = this.f45801h) == null) {
            return;
        }
        List<HomePreferencesConfig> allConfigs = homePreferencesState.getAllConfigs();
        ArrayList arrayList = new ArrayList();
        for (Object obj : allConfigs) {
            if (StringsKt.H(((HomePreferencesConfig) obj).getTabCode(), str, true)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            HomePreferencesConfig homePreferencesConfig = (HomePreferencesConfig) next;
            if (Intrinsics.c(homePreferencesConfig.getShowStyle(), HomePreferencesShowStyle.POPUP.getValue()) && !this.f45804k.contains(homePreferencesConfig.getLabelId()) && !this.f45805l.contains(homePreferencesConfig.getLabelId()) && !this.f45806m.contains(homePreferencesConfig.getLabelId())) {
                break;
            }
        }
        HomePreferencesConfig homePreferencesConfig2 = (HomePreferencesConfig) next;
        if (homePreferencesConfig2 != null && Intrinsics.c(homePreferencesConfig2.getShowStyle(), HomePreferencesShowStyle.POPUP.getValue())) {
            this.f45803j.add(str);
            v().n(TuplesKt.a(str, homePreferencesConfig2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ol.b n() {
        return (ol.b) zg.c.f79414e.a().h(ol.b.class);
    }

    private final List o(String str, List list, HomePreferencesState homePreferencesState) {
        List<HomePreferencesConfig> allConfigs = homePreferencesState.getAllConfigs();
        ArrayList arrayList = new ArrayList();
        for (Object obj : allConfigs) {
            if (StringsKt.H(((HomePreferencesConfig) obj).getTabCode(), str, true)) {
                arrayList.add(obj);
            }
        }
        ArrayList<HomePreferencesConfig> arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            HomePreferencesConfig homePreferencesConfig = (HomePreferencesConfig) obj2;
            if (Intrinsics.c(homePreferencesConfig.getShowStyle(), HomePreferencesShowStyle.OPT_INSERT.getValue()) && !this.f45804k.contains(homePreferencesConfig.getLabelId()) && !this.f45805l.contains(homePreferencesConfig.getLabelId()) && !this.f45806m.contains(homePreferencesConfig.getLabelId())) {
                arrayList2.add(obj2);
            }
        }
        if (arrayList2.isEmpty()) {
            return CollectionsKt.l();
        }
        ArrayList arrayList3 = new ArrayList();
        for (HomePreferencesConfig homePreferencesConfig2 : arrayList2) {
            Integer pos = homePreferencesConfig2.getPos();
            Integer numValueOf = Integer.valueOf(pos != null ? pos.intValue() : -1);
            if (numValueOf.intValue() < 0) {
                numValueOf = null;
            }
            boolean z10 = false;
            int iM = RangesKt.m(numValueOf != null ? numValueOf.intValue() : list.size(), 0, list.size());
            List<OperateItem> list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                for (OperateItem operateItem : list2) {
                    if (Intrinsics.c(operateItem.getType(), PostItemType.PREFERENCES.getValue())) {
                        HomePreferencesConfig homePreferencesConfig3 = operateItem.getHomePreferencesConfig();
                        if (Intrinsics.c(homePreferencesConfig3 != null ? homePreferencesConfig3.getLabelId() : null, homePreferencesConfig2.getLabelId())) {
                            z10 = true;
                            break;
                        }
                    }
                }
            }
            lg.a.C0828a.f(lg.a.f68839a, "HomePreferencesViewModel", "运营位插入 有配置, tabCode:" + str + ", pos:" + homePreferencesConfig2.getPos() + "， alreadyExists：" + z10, false, 4, null);
            if (!z10) {
                arrayList3.add(new el.a(iM, homePreferencesConfig2));
            }
        }
        return arrayList3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(String str) {
        List list = (List) this.f45802i.get(str);
        if (list == null) {
            return;
        }
        HomePreferencesState homePreferencesState = this.f45801h;
        if (homePreferencesState == null) {
            u().n(TuplesKt.a(str, CollectionsKt.l()));
            return;
        }
        List listO = o(str, list, homePreferencesState);
        lg.a.C0828a.f(lg.a.f68839a, "HomePreferencesViewModel", "computeInsertForTab, tabCode:" + str + ", size:" + listO.size(), false, 4, null);
        u().n(TuplesKt.a(str, listO));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 q() {
        return new androidx.p009lifecycle.b0();
    }

    private final ol.b r() {
        return (ol.b) this.f45794a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HomePreferencesRepository y() {
        return (HomePreferencesRepository) this.f45795b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 z() {
        return new androidx.p009lifecycle.b0();
    }

    public final void A() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HomePreferencesViewModel$loadHomePreferencesConfig$1(this, null), 2, null);
    }

    public final void B(HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        this.f45806m.add(config.getLabelId());
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HomePreferencesViewModel$markChosen$1(this, config, null), 2, null);
    }

    public final void C(HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        this.f45805l.add(config.getLabelId());
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HomePreferencesViewModel$markClosed$1(this, config, null), 2, null);
    }

    public final void D(HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        String labelId = config.getLabelId();
        if (!this.f45804k.contains(labelId)) {
            this.f45804k.add(labelId);
            kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HomePreferencesViewModel$markShown$1(this, config, null), 2, null);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "HomePreferencesViewModel", "markShown skip, already marked, labelId=" + labelId, false, 4, null);
    }

    public final void E(String tabCode, List list) {
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(list, "list");
        this.f45802i.put(tabCode, list);
        p(tabCode);
    }

    public final void J(String tabCode) {
        Intrinsics.h(tabCode, "tabCode");
        O(tabCode);
    }

    public final void L(HomePreferencesConfig config, List selectOptions) {
        Intrinsics.h(config, "config");
        Intrinsics.h(selectOptions, "selectOptions");
        K(config, selectOptions, "popup_confirm", true);
    }

    public final void M(HomePreferencesConfig config, List selectOptions, String scene) {
        Intrinsics.h(config, "config");
        Intrinsics.h(selectOptions, "selectOptions");
        Intrinsics.h(scene, "scene");
        K(config, selectOptions, scene, false);
    }

    public final androidx.p009lifecycle.b0 s() {
        return (androidx.p009lifecycle.b0) this.f45800g.getValue();
    }

    public final List t(String tabCode, List list) {
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(list, "list");
        HomePreferencesState homePreferencesState = this.f45801h;
        return homePreferencesState == null ? CollectionsKt.l() : o(tabCode, list, homePreferencesState);
    }

    public final androidx.p009lifecycle.b0 u() {
        return (androidx.p009lifecycle.b0) this.f45797d.getValue();
    }

    public final androidx.p009lifecycle.b0 v() {
        return (androidx.p009lifecycle.b0) this.f45798e.getValue();
    }

    public final androidx.p009lifecycle.b0 w() {
        return (androidx.p009lifecycle.b0) this.f45796c.getValue();
    }

    public final androidx.p009lifecycle.b0 x() {
        return (androidx.p009lifecycle.b0) this.f45799f.getValue();
    }
}
