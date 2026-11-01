package com.transsion.home.adapter.suboperate.provider;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewTreeObserver;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.CompositePageTransformer;
import androidx.viewpager2.widget.ViewPager2;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.baseui.recycler.InterceptView;
import com.transsion.baseui.widget.OperateScrollableHost;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.suboperate.adapter.SubBannerChildPagerAdapter;
import com.transsion.home.adapter.trending.BannerADDataHelper;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.DownloadDialogShowEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class i extends BaseItemProvider implements androidx.p009lifecycle.f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final BaseHomeSubFragment f44588f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set f44589g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f44590h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewPager2 f44591i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ViewPager2 f44592j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private InterceptView f44593k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f44594l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f44595m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f44596n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.transsion.home.adapter.suboperate.adapter.u f44597o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private SubBannerChildPagerAdapter f44598p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.transsion.home.adapter.suboperate.adapter.u f44599q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Runnable f44600r;

    public static final class a extends ViewPager2.OnPageChangeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ OperateItem f44601a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i f44602b;

        a(OperateItem operateItem, i iVar) {
            this.f44601a = operateItem;
            this.f44602b = iVar;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            BannerBean banner = this.f44601a.getBanner();
            if (banner != null ? Intrinsics.c(banner.getAutoPlay(), Boolean.TRUE) : false) {
                Handler handler = this.f44602b.f44590h;
                if (handler != null) {
                    handler.removeCallbacks(this.f44602b.f44600r);
                }
                Handler handler2 = this.f44602b.f44590h;
                if (handler2 != null) {
                    handler2.postDelayed(this.f44602b.f44600r, this.f44602b.f44595m);
                }
            }
            boolean z10 = this.f44602b.f44594l != -1;
            this.f44602b.f44594l = i11;
            this.f44602b.a0(i11, z10);
        }
    }

    public static final class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            super.onPageSelected(i11);
            int iQ = i.this.Q();
            if (iQ != -1) {
                i.this.W(iQ);
            }
        }
    }

    public static final class c implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f44604a;

        c(BaseViewHolder baseViewHolder) {
            this.f44604a = baseViewHolder;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver = this.f44604a.itemView.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            AppStartReport.f54517a.f(new AppStartDotState(AppStartDotState.TRENDING_END, 0L, 2, null));
            return true;
        }
    }

    public i(int i11, BaseHomeSubFragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f44587e = i11;
        this.f44588f = fragment;
        this.f44589g = new LinkedHashSet();
        this.f44594l = -1;
        this.f44595m = 5000L;
        U();
        this.f44600r = new Runnable() { // from class: com.transsion.home.adapter.suboperate.provider.e
            @Override // java.lang.Runnable
            public final void run() {
                i.Z(this.f44576a);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [T, java.util.List] */
    private final List L(List list, final Function1 function1) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = list;
        boolean zM = BannerADDataHelper.f44654a.m();
        List list2 = list;
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            BannerData bannerData = (BannerData) next;
            if ((bannerData != null ? bannerData.getBiddingAdData() : null) != null) {
                arrayList.add(next);
            }
        }
        List listU0 = CollectionsKt.U0(arrayList);
        if (zM || listU0.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list2) {
                BannerData bannerData2 = (BannerData) obj;
                if ((bannerData2 != null ? bannerData2.getBiddingAdData() : null) == null) {
                    arrayList2.add(obj);
                }
            }
            ?? U0 = CollectionsKt.U0(arrayList2);
            objectRef.element = U0;
            if (((List) U0).isEmpty()) {
                return (List) objectRef.element;
            }
            BannerADDataHelper.f44654a.k(new Function2() { // from class: com.transsion.home.adapter.suboperate.provider.h
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return i.M(objectRef, function1, (BiddingIntermediateMaterialBean) obj2, ((Integer) obj3).intValue());
                }
            });
        }
        return (List) objectRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M(Ref.ObjectRef objectRef, Function1 function1, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, int i11) {
        if (biddingIntermediateMaterialBean == null) {
            return Unit.f67061a;
        }
        if (((List) objectRef.element).size() > i11) {
            ((List) objectRef.element).add(i11, new BannerData(null, null, null, false, null, null, null, null, 0, null, null, biddingIntermediateMaterialBean, 2047, null));
        } else {
            ((List) objectRef.element).add(new BannerData(null, null, null, false, null, null, null, null, 0, null, null, biddingIntermediateMaterialBean, 2047, null));
        }
        function1.invoke(objectRef.element);
        return Unit.f67061a;
    }

    private final void N() {
        Handler handler = this.f44590h;
        if (handler != null) {
            handler.postDelayed(this.f44600r, this.f44595m);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P(i iVar, List data) {
        Intrinsics.h(data, "data");
        iVar.b0(data);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int Q() {
        ViewPager2 viewPager2 = this.f44592j;
        if (viewPager2 == null) {
            Intrinsics.z("cardPager");
            viewPager2 = null;
        }
        return viewPager2.getCurrentItem();
    }

    private final int R(int i11) {
        return 1073741823 - (1073741823 % i11);
    }

    private final void S(List list, OperateItem operateItem) {
        ViewPager2 viewPager2 = this.f44592j;
        ViewPager2 viewPager3 = null;
        if (viewPager2 == null) {
            Intrinsics.z("cardPager");
            viewPager2 = null;
        }
        viewPager2.setPageTransformer(new CompositePageTransformer());
        ViewPager2 viewPager4 = this.f44592j;
        if (viewPager4 == null) {
            Intrinsics.z("cardPager");
            viewPager4 = null;
        }
        viewPager4.setOffscreenPageLimit(3);
        this.f44598p = new SubBannerChildPagerAdapter(list, this.f44587e, operateItem);
        ViewPager2 viewPager5 = this.f44592j;
        if (viewPager5 == null) {
            Intrinsics.z("cardPager");
            viewPager5 = null;
        }
        viewPager5.setAdapter(this.f44598p);
        ViewPager2 viewPager6 = this.f44592j;
        if (viewPager6 == null) {
            Intrinsics.z("cardPager");
        } else {
            viewPager3 = viewPager6;
        }
        viewPager3.registerOnPageChangeCallback(new b());
    }

    private final void U() {
        BaseHomeSubFragment baseHomeSubFragment = this.f44588f;
        Function1 function1 = new Function1() { // from class: com.transsion.home.adapter.suboperate.provider.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.V(this.f44579a, (DownloadDialogShowEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = DownloadDialogShowEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(baseHomeSubFragment, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V(i iVar, DownloadDialogShowEvent value) {
        Intrinsics.h(value, "value");
        if (iVar.f44596n) {
            if (value.getShow()) {
                Handler handler = iVar.f44590h;
                if (handler != null) {
                    handler.removeCallbacks(iVar.f44600r);
                }
            } else {
                Handler handler2 = iVar.f44590h;
                if (handler2 != null) {
                    handler2.postDelayed(iVar.f44600r, iVar.f44595m);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(int i11) {
        ViewPager2 viewPager2 = this.f44591i;
        ViewPager2 viewPager3 = null;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        if (i11 != viewPager2.getCurrentItem()) {
            ViewPager2 viewPager4 = this.f44591i;
            if (viewPager4 == null) {
                Intrinsics.z("viewPager2");
            } else {
                viewPager3 = viewPager4;
            }
            viewPager3.setCurrentItem(i11, true);
        }
    }

    private final void X() {
        List arrayList;
        List listG;
        if (this.f44588f.isAdded() && this.f44588f.isVisible()) {
            ViewPager2 viewPager2 = this.f44591i;
            if (viewPager2 == null) {
                Intrinsics.z("viewPager2");
                viewPager2 = null;
            }
            if (viewPager2.isShown()) {
                com.transsion.home.adapter.suboperate.adapter.u uVar = this.f44599q;
                if (uVar == null || (listG = uVar.g()) == null || (arrayList = CollectionsKt.U0(listG)) == null) {
                    arrayList = new ArrayList();
                }
                L(arrayList, new Function1() { // from class: com.transsion.home.adapter.suboperate.provider.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return i.Y(this.f44577a, (List) obj);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y(i iVar, List data) {
        Intrinsics.h(data, "data");
        iVar.b0(data);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(i iVar) {
        if (!iVar.f44588f.isVisible()) {
            if (iVar.f44588f.isAdded()) {
                iVar.N();
                return;
            }
            return;
        }
        ViewPager2 viewPager2 = iVar.f44591i;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        ViewPager2 viewPager3 = iVar.f44591i;
        if (viewPager3 == null) {
            Intrinsics.z("viewPager2");
            viewPager3 = null;
        }
        int currentItem = viewPager3.getCurrentItem() + 1;
        ViewPager2 viewPager4 = iVar.f44591i;
        if (viewPager4 == null) {
            Intrinsics.z("viewPager2");
            viewPager4 = null;
        }
        RecyclerView.Adapter adapter = viewPager4.getAdapter();
        Integer numValueOf = adapter != null ? Integer.valueOf(adapter.getItemCount()) : null;
        Intrinsics.e(numValueOf);
        viewPager2.setCurrentItem(currentItem % numValueOf.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a0(int i11, boolean z10) {
        if (i11 != Q()) {
            ViewPager2 viewPager2 = this.f44592j;
            if (viewPager2 == null) {
                Intrinsics.z("cardPager");
                viewPager2 = null;
            }
            viewPager2.setCurrentItem(i11, z10);
        }
    }

    private final void b0(List list) {
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.home.adapter.suboperate.adapter.u uVar = this.f44599q;
            if (uVar != null) {
                uVar.i(list);
            }
            com.transsion.home.adapter.suboperate.adapter.u uVar2 = this.f44599q;
            if (uVar2 != null) {
                uVar2.notifyDataSetChanged();
            }
            SubBannerChildPagerAdapter subBannerChildPagerAdapter = this.f44598p;
            if (subBannerChildPagerAdapter != null) {
                subBannerChildPagerAdapter.h(list);
            }
            SubBannerChildPagerAdapter subBannerChildPagerAdapter2 = this.f44598p;
            if (subBannerChildPagerAdapter2 != null) {
                subBannerChildPagerAdapter2.notifyDataSetChanged();
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, OperateItem item) {
        List arrayList;
        String interval;
        Integer numV;
        List<BannerData> banners;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        this.f44591i = (ViewPager2) helper.itemView.findViewById(R$id.sub_operation_view_pager);
        this.f44592j = (ViewPager2) helper.getView(R$id.cardPager);
        InterceptView interceptView = (InterceptView) helper.getView(R$id.interestLayout);
        this.f44593k = interceptView;
        ViewPager2 viewPager2 = null;
        if (interceptView == null) {
            Intrinsics.z("interestLayout");
            interceptView = null;
        }
        ViewPager2 viewPager3 = this.f44592j;
        if (viewPager3 == null) {
            Intrinsics.z("cardPager");
            viewPager3 = null;
        }
        interceptView.setPostView(viewPager3);
        ((OperateScrollableHost) helper.getView(R$id.sub_operation_view_scroll_helper)).interceptAllEvent(true);
        ((OperateScrollableHost) helper.getView(R$id.sub_operation_card_helper)).interceptAllEvent(true);
        BannerBean banner = item.getBanner();
        if (banner == null || (banners = banner.getBanners()) == null || (arrayList = CollectionsKt.U0(banners)) == null) {
            arrayList = new ArrayList();
        }
        List<BannerData> listL = L(arrayList, new Function1() { // from class: com.transsion.home.adapter.suboperate.provider.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.P(this.f44574a, (List) obj);
            }
        });
        BannerBean banner2 = item.getBanner();
        if (banner2 != null) {
            banner2.setBanners(listL);
        }
        if (listL.isEmpty()) {
            return;
        }
        com.transsion.home.adapter.suboperate.adapter.u uVar = this.f44599q;
        if (uVar == null) {
            this.f44599q = new com.transsion.home.adapter.suboperate.adapter.u(listL, this.f44587e, this, item);
        } else if (uVar != null) {
            uVar.i(listL);
        }
        this.f44597o = this.f44599q;
        ViewPager2 viewPager4 = this.f44591i;
        if (viewPager4 == null) {
            Intrinsics.z("viewPager2");
            viewPager4 = null;
        }
        viewPager4.setAdapter(this.f44597o);
        S(listL, item);
        Handler handler = this.f44590h;
        if (handler != null) {
            handler.removeCallbacks(this.f44600r);
        }
        this.f44590h = new Handler(Looper.getMainLooper());
        ViewPager2 viewPager5 = this.f44591i;
        if (viewPager5 == null) {
            Intrinsics.z("viewPager2");
            viewPager5 = null;
        }
        viewPager5.registerOnPageChangeCallback(new a(item, this));
        BannerBean banner3 = item.getBanner();
        long jIntValue = ((long) ((banner3 == null || (interval = banner3.getInterval()) == null || (numV = StringsKt.v(interval)) == null) ? 0 : numV.intValue())) * 1000;
        if (jIntValue <= 0) {
            jIntValue = this.f44595m;
        }
        this.f44595m = jIntValue;
        int iR = this.f44594l;
        if (iR < 0) {
            iR = R(listL.size());
        }
        ViewPager2 viewPager6 = this.f44591i;
        if (viewPager6 == null) {
            Intrinsics.z("viewPager2");
            viewPager6 = null;
        }
        viewPager6.setCurrentItem(iR, false);
        ViewPager2 viewPager7 = this.f44592j;
        if (viewPager7 == null) {
            Intrinsics.z("cardPager");
        } else {
            viewPager2 = viewPager7;
        }
        viewPager2.setCurrentItem(iR, false);
    }

    public final boolean T(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return this.f44589g.add(str);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.BANNER.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_sub_operation_banner;
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onCreate(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onDestroy(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public void onPause(androidx.p009lifecycle.u owner) {
        Handler handler;
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.c(this, owner);
        if (!this.f44596n || (handler = this.f44590h) == null) {
            return;
        }
        handler.removeCallbacks(this.f44600r);
    }

    @Override // androidx.p009lifecycle.f
    public void onResume(androidx.p009lifecycle.u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.d(this, owner);
        if (this.f44596n) {
            Handler handler = this.f44590h;
            if (handler != null) {
                handler.postDelayed(this.f44600r, this.f44595m);
            }
            X();
        }
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onStart(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.e(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onStop(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.f(this, uVar);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.t(holder);
        this.f44596n = true;
        Handler handler = this.f44590h;
        if (handler != null) {
            handler.postDelayed(this.f44600r, this.f44595m);
        }
        holder.itemView.getViewTreeObserver().addOnPreDrawListener(new c(holder));
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        this.f44596n = false;
        Handler handler = this.f44590h;
        if (handler != null) {
            handler.removeCallbacks(this.f44600r);
        }
    }
}
