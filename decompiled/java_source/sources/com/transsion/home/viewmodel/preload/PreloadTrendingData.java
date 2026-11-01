package com.transsion.home.viewmodel.preload;

import android.app.Application;
import android.content.Context;
import androidx.p009lifecycle.b0;
import aq.h;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.google.gson.Gson;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.AppTab;
import com.transsion.home.bean.BottomTabItem;
import com.transsion.home.bean.HomeTabItem;
import com.transsion.home.bean.HotSubjectEntity;
import com.transsion.home.bean.MainOperateData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.home.p004enum.HomeTabType;
import com.transsion.memberapi.IMemberApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class PreloadTrendingData {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f45886n = new a(null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f45887o = 8;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Lazy f45888p = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsion.home.viewmodel.preload.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PreloadTrendingData.P();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f45890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f45891c;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AppTab f45899k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List f45900l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f45889a = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ol.e f45892d = (ol.e) zg.c.f79414e.a().h(ol.e.class);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f45893e = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.preload.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PreloadTrendingData.w();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f45894f = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.preload.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PreloadTrendingData.S();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f45895g = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.preload.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PreloadTrendingData.R();
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f45896h = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.preload.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PreloadTrendingData.v();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f45897i = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.preload.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PreloadTrendingData.u();
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f45898j = LazyKt.b(new Function0() { // from class: com.transsion.home.viewmodel.preload.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PreloadTrendingData.N();
        }
    });

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final j0 f45901m = new b(j0.f67892k1);

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PreloadTrendingData a() {
            return (PreloadTrendingData) PreloadTrendingData.f45888p.getValue();
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class b extends AbstractCoroutineContextElement implements j0 {
        public b(j0.a aVar) {
            super(aVar);
        }

        @Override // kotlinx.coroutines.j0
        public void o(CoroutineContext coroutineContext, Throwable th2) {
            lg.a.f68839a.i("PreloadTrending", "coroutineExceptionHandler " + th2.getMessage(), true);
            th2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppTab B() {
        try {
            String strY = Y("app_tab");
            if (strY == null || strY.length() == 0) {
                PreloadTrendingBuiltInHelper preloadTrendingBuiltInHelperE = E();
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                strY = preloadTrendingBuiltInHelperE.d(applicationA);
                if (strY == null) {
                    strY = "";
                }
            }
            if (strY.length() > 0) {
                return (AppTab) o.d(strY, AppTab.class);
            }
            return null;
        } catch (Throwable th2) {
            lg.a.f68839a.i("PreloadTrending", "getAppTabCache error: " + th2.getMessage(), true);
            com.transsion.baselib.report.launch.b.f43370a.b().M("app_tab");
            th2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PreloadTrendingBuiltInHelper E() {
        return (PreloadTrendingBuiltInHelper) this.f45893e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HotSubjectEntity I() {
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("hot_search_words", null);
        if (string != null) {
            return (HotSubjectEntity) o.d(string, HotSubjectEntity.class);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 N() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O(AppTab appTab) {
        BottomTabItem bottomTabItem;
        BottomTabItem bottomTabItem2;
        List<BottomTabItem> bottomTabs;
        Object next;
        List<BottomTabItem> bottomTabs2;
        Object next2;
        Object obj = null;
        if (appTab == null || (bottomTabs2 = appTab.getBottomTabs()) == null) {
            bottomTabItem = null;
        } else {
            Iterator<T> it = bottomTabs2.iterator();
            do {
                if (!it.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it.next();
            } while (!Intrinsics.c(((BottomTabItem) next2).getBtTabCode(), BottomTabType.TAB_CODE_COMMUNITY));
            bottomTabItem = (BottomTabItem) next2;
        }
        if (bottomTabItem != null) {
            lg.a.C0828a.f(lg.a.f68839a, "PreloadTrending", "has bottom room tab", false, 4, null);
            h.f16093a.l(true);
            return;
        }
        if (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) {
            bottomTabItem2 = null;
        } else {
            Iterator<T> it2 = bottomTabs.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!Intrinsics.c(((BottomTabItem) next).getBtTabCode(), BottomTabType.TAB_CODE_HOME));
            bottomTabItem2 = (BottomTabItem) next;
        }
        if (bottomTabItem2 == null) {
            lg.a.C0828a.f(lg.a.f68839a, "PreloadTrending", "has no room tab", false, 4, null);
            h.f16093a.l(false);
            return;
        }
        List<HomeTabItem> subTabs = bottomTabItem2.getSubTabs();
        if (subTabs != null) {
            for (Object obj2 : subTabs) {
                HomeTabItem homeTabItem = (HomeTabItem) obj2;
                if (Intrinsics.c(homeTabItem != null ? homeTabItem.getTabCode() : null, "Community")) {
                    obj = obj2;
                    break;
                }
            }
            obj = (HomeTabItem) obj;
        }
        lg.a.C0828a.f(lg.a.f68839a, "PreloadTrending", "has top room tab:" + (obj != null), false, 4, null);
        h.f16093a.l(obj != null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PreloadTrendingData P() {
        return new PreloadTrendingData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 R() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 S() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object T(String str, Continuation continuation) throws Throwable {
        PreloadTrendingData$preloadMainOperation$1 preloadTrendingData$preloadMainOperation$1;
        List<OperateItem> items;
        List<OperateItem> items2;
        if (continuation instanceof PreloadTrendingData$preloadMainOperation$1) {
            preloadTrendingData$preloadMainOperation$1 = (PreloadTrendingData$preloadMainOperation$1) continuation;
            int i11 = preloadTrendingData$preloadMainOperation$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                preloadTrendingData$preloadMainOperation$1.label = i11 - Integer.MIN_VALUE;
            } else {
                preloadTrendingData$preloadMainOperation$1 = new PreloadTrendingData$preloadMainOperation$1(this, continuation);
            }
        } else {
            preloadTrendingData$preloadMainOperation$1 = new PreloadTrendingData$preloadMainOperation$1(this, continuation);
        }
        PreloadTrendingData$preloadMainOperation$1 preloadTrendingData$preloadMainOperation$2 = preloadTrendingData$preloadMainOperation$1;
        Object objB = preloadTrendingData$preloadMainOperation$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = preloadTrendingData$preloadMainOperation$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objB);
                ol.e eVar = this.f45892d;
                int i13 = this.f45889a;
                preloadTrendingData$preloadMainOperation$2.L$0 = str;
                preloadTrendingData$preloadMainOperation$2.label = 1;
                objB = ol.e.a.b(eVar, null, i13, 0, str, preloadTrendingData$preloadMainOperation$2, 5, null);
                if (objB == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) preloadTrendingData$preloadMainOperation$2.L$0;
                ResultKt.b(objB);
            }
            BaseDto baseDto = (BaseDto) objB;
            lg.a.C0828a c0828a = lg.a.f68839a;
            MainOperateData mainOperateData = (MainOperateData) baseDto.getData();
            c0828a.c("PreloadTrending", "get operating data from net size = " + ((mainOperateData == null || (items2 = mainOperateData.getItems()) == null) ? null : Boxing.d(items2.size())), true);
            if (!Intrinsics.c(baseDto.getCode(), "0") || baseDto.getData() == null) {
                K().n(null);
            } else {
                MainOperateData mainOperateData2 = (MainOperateData) baseDto.getData();
                if (mainOperateData2 != null) {
                    mainOperateData2.setSourceFrom("from_net");
                    K().n(mainOperateData2);
                    if (mainOperateData2.getVersion() != null && !Intrinsics.c(mainOperateData2.getVersion(), str) && (items = mainOperateData2.getItems()) != null && !items.isEmpty()) {
                        Z(mainOperateData2);
                    }
                }
                int i14 = this.f45889a;
                this.f45889a = i14 + 1;
                Boxing.d(i14);
            }
        } catch (Exception e11) {
            lg.a.f68839a.i("PreloadTrending", "get Operating List msg=" + e11.getMessage() + " cause=" + e11.getCause(), true);
            K().n(null);
        }
        return Unit.f67061a;
    }

    private final void V(Context context) {
        k.d(o0.a(y0.b()), null, null, new PreloadTrendingData$preloadSkuDataCache$1(context, null), 3, null);
    }

    private final void W(Context context) {
        k.d(o0.a(y0.b()), null, null, new PreloadTrendingData$preloadVideoCache$1(this, context, null), 3, null);
    }

    private final String Y(String str) {
        try {
            byte[] bArrE = com.transsion.baselib.report.launch.b.f43370a.b().e(str);
            if (bArrE == null) {
                return null;
            }
            if (bArrE.length == 0) {
                return null;
            }
            return new String(bArrE, Charsets.UTF_8);
        } catch (Throwable th2) {
            lg.a.f68839a.i("PreloadTrending", "safeGetMmkvString failed for key: " + str + ", " + th2.getMessage(), true);
            return null;
        }
    }

    private final void Z(MainOperateData mainOperateData) {
        List<OperateItem> items = mainOperateData.getItems();
        if (items == null || !(!items.isEmpty())) {
            return;
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putString("main_operating_data", new Gson().toJson(mainOperateData));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a0(AppTab appTab) {
        List<BottomTabItem> bottomTabs = appTab != null ? appTab.getBottomTabs() : null;
        if (bottomTabs == null || bottomTabs.isEmpty()) {
            return;
        }
        com.transsion.baselib.report.launch.b.f43370a.b().putString("app_tab", o.j(appTab));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 u() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 v() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PreloadTrendingBuiltInHelper w() {
        return new PreloadTrendingBuiltInHelper();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List x(AppTab appTab) {
        List<BottomTabItem> bottomTabs;
        ArrayList arrayList = new ArrayList();
        for (BottomTabType bottomTabType : BottomTabType.values()) {
            CollectionsKt.B(arrayList, CollectionsKt.e(bottomTabType.getValue()));
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        boolean zB = iMemberApi != null ? iMemberApi.B() : false;
        if (!zB) {
            lg.a.C0828a.f(lg.a.f68839a, "co_mem", "MainActivity --> getTabEntities() --> 当前没有开启会员功能 --> 不展示会员Tab", false, 4, null);
        }
        if (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : bottomTabs) {
            BottomTabItem bottomTabItem = (BottomTabItem) obj;
            if (Intrinsics.c(bottomTabItem.getBtTabType(), BottomTabType.PREMIUM.getValue()) ? CollectionsKt.b0(arrayList, bottomTabItem.getBtTabType()) && zB : CollectionsKt.b0(arrayList, bottomTabItem.getBtTabType())) {
                arrayList2.add(obj);
            }
        }
        return CollectionsKt.U0(arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List y(List list) {
        ArrayList arrayList = new ArrayList();
        for (HomeTabType homeTabType : HomeTabType.values()) {
            CollectionsKt.B(arrayList, CollectionsKt.e(homeTabType.getValue()));
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            HomeTabItem homeTabItem = (HomeTabItem) obj;
            if (homeTabItem != null && CollectionsKt.b0(arrayList, homeTabItem.getType())) {
                arrayList2.add(obj);
            }
        }
        return CollectionsKt.U0(arrayList2);
    }

    public final AppTab A(Context context) {
        Intrinsics.h(context, "context");
        try {
            String strD = E().d(context);
            if (strD != null && strD.length() != 0) {
                return (AppTab) o.d(strD, AppTab.class);
            }
            return null;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public final b0 C() {
        return (b0) this.f45897i.getValue();
    }

    public final b0 D() {
        return (b0) this.f45896h.getValue();
    }

    public final AppTab F() {
        return this.f45899k;
    }

    public final void G() {
        k.d(o0.a(y0.b()), null, null, new PreloadTrendingData$getHotSearch$1(this, null), 3, null);
    }

    public final b0 H() {
        return (b0) this.f45898j.getValue();
    }

    public final b0 J() {
        return (b0) this.f45895g.getValue();
    }

    public final b0 K() {
        return (b0) this.f45894f.getValue();
    }

    public final List L() {
        List list = this.f45900l;
        this.f45900l = null;
        return list;
    }

    public final boolean M() {
        return this.f45891c;
    }

    public final boolean Q(String version) {
        Intrinsics.h(version, "version");
        if (this.f45890b) {
            return false;
        }
        this.f45890b = true;
        k.d(o0.a(y0.b()), this.f45901m, null, new PreloadTrendingData$loadOperatingDataFromNet$1(this, version, null), 2, null);
        return true;
    }

    public final void U(Context context) {
        Intrinsics.h(context, "context");
        lg.a.f68839a.c("PreloadTrending", "preloadOperatingCache() called", true);
        k.d(o0.a(y0.b()), null, null, new PreloadTrendingData$preloadOperating$1(this, context, null), 3, null);
        W(context);
        V(context);
    }

    public final boolean X(Context context, String operationVersion) {
        Intrinsics.h(context, "context");
        Intrinsics.h(operationVersion, "operationVersion");
        if (J().f() != null) {
            return Q(operationVersion);
        }
        U(context);
        return true;
    }

    public final void b0(List list) {
        Intrinsics.h(list, "list");
        this.f45900l = list;
    }

    public final void z() {
        this.f45891c = true;
        lg.a.f68839a.c("PreloadTrending", "getAppTab() called", true);
        k.d(o0.a(y0.b()), null, null, new PreloadTrendingData$getAppTab$1(this, null), 3, null);
    }
}
