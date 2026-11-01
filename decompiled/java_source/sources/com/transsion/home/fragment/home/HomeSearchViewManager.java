package com.transsion.home.fragment.home;

import android.content.Context;
import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextSwitcher;
import android.widget.ViewSwitcher;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import com.tn.lib.view.GradientLinePagerIndicator;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.CustomPagerTitleView;
import com.transsion.home.R$layout;
import com.transsion.home.bean.AppTab;
import com.transsion.home.bean.HomeTabItem;
import com.transsion.home.bean.HotSearchKeyWord;
import com.transsion.home.bean.HotSubjectEntity;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.view.CustomTabAdView;
import com.transsion.home.viewmodel.preload.PreloadTrendingData;
import com.transsion.usercenterapi.UpdateResultEvent;
import com.transsion.version.update.UpdateManager;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import net.lucode.hackware.magicindicator.R$id;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;

/* JADX INFO: loaded from: classes5.dex */
public final class HomeSearchViewManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final gl.r f45132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HomeFragment f45133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private t f45134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f45135d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayList f45136e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f45137f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f45138g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CommonNavigator f45139h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f45140i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f45141j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ConstraintLayout.b f45142k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private n0 f45143l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Handler f45144m;

    private final class a extends j00.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private AppTab f45145b;

        /* JADX INFO: renamed from: com.transsion.home.fragment.home.HomeSearchViewManager$a$a, reason: collision with other inner class name */
        public static final class C0631a extends com.transsion.baseui.util.f {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ HomeSearchViewManager f45147e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ int f45148f;

            C0631a(HomeSearchViewManager homeSearchViewManager, int i11) {
                this.f45147e = homeSearchViewManager;
                this.f45148f = i11;
            }

            @Override // com.transsion.baseui.util.f
            public void c(View view) {
            }

            @Override // com.transsion.baseui.util.f
            public void d(View view) {
                this.f45147e.f45132a.f63833s.setCurrentItem(this.f45148f, false);
                this.f45147e.f45132a.f63825k.onPageScrolled(this.f45148f, 0.0f, 0);
            }
        }

        public static final class b extends com.transsion.baseui.util.f {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ HomeSearchViewManager f45149e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ int f45150f;

            b(HomeSearchViewManager homeSearchViewManager, int i11) {
                this.f45149e = homeSearchViewManager;
                this.f45150f = i11;
            }

            @Override // com.transsion.baseui.util.f
            public void c(View view) {
            }

            @Override // com.transsion.baseui.util.f
            public void d(View view) {
                this.f45149e.f45132a.f63833s.setCurrentItem(this.f45150f, false);
                this.f45149e.f45132a.f63825k.onPageScrolled(this.f45150f, 0.0f, 0);
            }
        }

        public a(AppTab appTab) {
            this.f45145b = appTab;
        }

        @Override // j00.a
        public int a() {
            List<HomeTabItem> homeTabs;
            AppTab appTab = this.f45145b;
            if (appTab == null || (homeTabs = appTab.getHomeTabs()) == null) {
                return 1;
            }
            return homeTabs.size();
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            Context context2 = HomeSearchViewManager.this.f45135d;
            if (context2 == null) {
                Intrinsics.z("context");
                context2 = null;
            }
            GradientLinePagerIndicator gradientLinePagerIndicator = new GradientLinePagerIndicator(context2);
            gradientLinePagerIndicator.setMode(2);
            gradientLinePagerIndicator.setLineHeight(com.blankj.utilcode.util.i.e(3.0f));
            gradientLinePagerIndicator.setLineWidth(com.blankj.utilcode.util.i.e(24.0f));
            gradientLinePagerIndicator.setRoundRadius(com.blankj.utilcode.util.i.e(1.5f));
            gradientLinePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
            gradientLinePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
            int color = androidx.core.content.b.getColor(context, R$color.transparent);
            gradientLinePagerIndicator.setColors(color, color, color);
            return gradientLinePagerIndicator;
        }

        @Override // j00.a
        public j00.d c(Context context, int i11) {
            List<HomeTabItem> homeTabs;
            HomeTabItem homeTabItem;
            List<HomeTabItem> homeTabs2;
            List<HomeTabItem> homeTabs3;
            HomeTabItem homeTabItem2;
            AppTab appTab = this.f45145b;
            String name = null;
            homeTabItem = null;
            HomeTabItem homeTabItem3 = null;
            name = null;
            name = null;
            if (((appTab == null || (homeTabs3 = appTab.getHomeTabs()) == null || (homeTabItem2 = homeTabs3.get(i11)) == null) ? null : homeTabItem2.getNameImage()) != null) {
                Context context2 = HomeSearchViewManager.this.f45135d;
                if (context2 == null) {
                    Intrinsics.z("context");
                    context2 = null;
                }
                CustomTabAdView customTabAdView = new CustomTabAdView(context2);
                customTabAdView.setOnClickListener(new C0631a(HomeSearchViewManager.this, i11));
                AppTab appTab2 = this.f45145b;
                if (appTab2 != null && (homeTabs2 = appTab2.getHomeTabs()) != null) {
                    homeTabItem3 = homeTabs2.get(i11);
                }
                customTabAdView.showData(homeTabItem3);
                return customTabAdView;
            }
            int iA = com.blankj.utilcode.util.a0.a(10.0f);
            Context context3 = HomeSearchViewManager.this.f45135d;
            if (context3 == null) {
                Intrinsics.z("context");
                context3 = null;
            }
            CustomPagerTitleView customPagerTitleView = new CustomPagerTitleView(context3, 17, iA);
            HomeSearchViewManager homeSearchViewManager = HomeSearchViewManager.this;
            AppTab appTab3 = this.f45145b;
            if (appTab3 != null && (homeTabs = appTab3.getHomeTabs()) != null && (homeTabItem = homeTabs.get(i11)) != null) {
                name = homeTabItem.getName();
            }
            customPagerTitleView.setText(name);
            customPagerTitleView.setTextSize(16.0f);
            customPagerTitleView.setOnClickListener(new b(homeSearchViewManager, i11));
            return customPagerTitleView;
        }

        public final void h(AppTab appTab) {
            this.f45145b = appTab;
            e();
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f45151a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45151a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f45151a;
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
            this.f45151a.invoke(obj);
        }
    }

    public HomeSearchViewManager(gl.r mViewBinding, HomeFragment mFragment) {
        Intrinsics.h(mViewBinding, "mViewBinding");
        Intrinsics.h(mFragment, "mFragment");
        this.f45132a = mViewBinding;
        this.f45133b = mFragment;
        this.f45136e = new ArrayList();
        this.f45143l = o0.a(y0.b());
        this.f45144m = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.transsion.home.fragment.home.w
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return HomeSearchViewManager.H(this.f45190a, message);
            }
        });
    }

    private final void A(List list) {
        this.f45132a.f63830p.setTextWithString("");
        this.f45136e.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            HotSearchKeyWord hotSearchKeyWord = (HotSearchKeyWord) it.next();
            ArrayList arrayList = this.f45136e;
            String title = hotSearchKeyWord.getTitle();
            if (title == null) {
                title = "";
            }
            arrayList.add(title);
        }
        TextSwitcher textSwitcher = this.f45132a.f63827m;
        if (textSwitcher.getChildCount() == 0) {
            textSwitcher.setFactory(new ViewSwitcher.ViewFactory() { // from class: com.transsion.home.fragment.home.d0
                @Override // android.widget.ViewSwitcher.ViewFactory
                public final View makeView() {
                    return HomeSearchViewManager.B(this.f45158a);
                }
            });
        }
        int i11 = this.f45137f;
        if (i11 >= 0 && i11 < this.f45136e.size()) {
            String str = (String) this.f45136e.get(this.f45137f);
            this.f45138g = str;
            textSwitcher.setText(str);
        }
        textSwitcher.setInAnimation(q());
        textSwitcher.setOutAnimation(J());
        N(this, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View B(HomeSearchViewManager homeSearchViewManager) {
        return LayoutInflater.from(homeSearchViewManager.f45133b.requireContext()).inflate(R$layout.view_text, (ViewGroup) null);
    }

    private final void E(boolean z10) {
        String str;
        com.transsion.home.view.g.f45784a.b(false);
        yj.b bVar = (yj.b) yj.a.f79022a.a(yj.b.class);
        if (z10) {
            if (bVar != null) {
                String str2 = this.f45138g;
                String str3 = str2 == null ? "" : str2;
                str = str2 != null ? str2 : "";
                ArrayList arrayList = this.f45136e;
                Context contextRequireContext = this.f45133b.requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                bVar.a(str3, str, arrayList, contextRequireContext);
            }
        } else if (bVar != null) {
            String str4 = this.f45138g;
            str = str4 != null ? str4 : "";
            ArrayList arrayList2 = this.f45136e;
            Context contextRequireContext2 = this.f45133b.requireContext();
            Intrinsics.g(contextRequireContext2, "requireContext(...)");
            bVar.b(str, arrayList2, contextRequireContext2);
        }
        K(z10);
    }

    static /* synthetic */ void F(HomeSearchViewManager homeSearchViewManager, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        homeSearchViewManager.E(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean H(HomeSearchViewManager homeSearchViewManager, Message it) {
        String str;
        Intrinsics.h(it, "it");
        if (it.what == 100) {
            homeSearchViewManager.f45137f++;
            if (homeSearchViewManager.f45136e.isEmpty()) {
                str = "";
            } else {
                ArrayList arrayList = homeSearchViewManager.f45136e;
                str = (String) arrayList.get(homeSearchViewManager.f45137f % arrayList.size());
            }
            homeSearchViewManager.f45138g = str;
            homeSearchViewManager.f45132a.f63827m.setText(str);
            N(homeSearchViewManager, false, 1, null);
        }
        return true;
    }

    private final AnimationSet J() {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, -1.0f);
        translateAnimation.setDuration(1000L);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(1000L);
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    private final void K(boolean z10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", z10 ? "search_button" : "search");
        String str = this.f45138g;
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("hot_search_word", str);
        com.transsion.baselib.helper.a.f43262a.i(SubTabFragment.INSTANCE.a(HomeTabId.INSTANCE.g()), linkedHashMap);
    }

    public static /* synthetic */ void N(HomeSearchViewManager homeSearchViewManager, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        homeSearchViewManager.M(z10);
    }

    private final void m(boolean z10) {
        LinearLayout linearLayout;
        CommonNavigator commonNavigator = this.f45139h;
        if (commonNavigator != null) {
            int color = androidx.core.content.b.getColor(commonNavigator.getContext(), R$color.common_white);
            int color2 = androidx.core.content.b.getColor(commonNavigator.getContext(), R$color.transparent);
            LinearLayout linearLayout2 = (LinearLayout) commonNavigator.findViewById(R$id.title_container);
            int childCount = linearLayout2.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = linearLayout2.getChildAt(i11);
                if (childAt instanceof CustomPagerTitleView) {
                    CustomPagerTitleView customPagerTitleView = (CustomPagerTitleView) childAt;
                    customPagerTitleView.setNormalColor(androidx.core.content.b.getColor(linearLayout2.getContext(), R$color.white_60));
                    customPagerTitleView.setSelectedColor(color);
                    if (i11 == this.f45133b.getMSelectTabIndex()) {
                        customPagerTitleView.setTextColor(color);
                    } else {
                        customPagerTitleView.setTextColor(androidx.core.content.b.getColor(linearLayout2.getContext(), R$color.white_60));
                    }
                    ViewGroup.LayoutParams layoutParams = customPagerTitleView.getLayoutParams();
                    Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                    layoutParams2.width = -2;
                    layoutParams2.height = -1;
                    customPagerTitleView.setLayoutParams(layoutParams2);
                } else if (childAt instanceof CustomTabAdView) {
                    CustomTabAdView customTabAdView = (CustomTabAdView) childAt;
                    customTabAdView.changeTextColor(androidx.core.content.b.getColor(linearLayout2.getContext(), R$color.white_60), androidx.core.content.b.getColor(linearLayout2.getContext(), R$color.common_white));
                    if (i11 == this.f45133b.getMSelectTabIndex()) {
                        customTabAdView.setTextColor(color);
                    } else {
                        customTabAdView.setTextColor(androidx.core.content.b.getColor(linearLayout2.getContext(), R$color.white_60));
                    }
                }
            }
            CommonNavigator commonNavigator2 = this.f45139h;
            if (commonNavigator2 == null || (linearLayout = (LinearLayout) commonNavigator2.findViewById(R$id.indicator_container)) == null) {
                return;
            }
            int childCount2 = linearLayout.getChildCount();
            for (int i12 = 0; i12 < childCount2; i12++) {
                View childAt2 = linearLayout.getChildAt(i12);
                if (childAt2 instanceof GradientLinePagerIndicator) {
                    ((GradientLinePagerIndicator) childAt2).setColors(color2, color2, color2);
                }
            }
        }
    }

    private final void o() {
        if (!UpdateManager.f57518f.a().g()) {
            this.f45132a.f63823i.setVisibility(8);
        } else {
            this.f45132a.f63823i.setVisibility(0);
            this.f45132a.f63823i.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.home.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HomeSearchViewManager.p(this.f45156a, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(HomeSearchViewManager homeSearchViewManager, View view) {
        kotlinx.coroutines.k.d(homeSearchViewManager.f45143l, null, null, new HomeSearchViewManager$handleUpdateIcon$1$1(homeSearchViewManager, null), 3, null);
    }

    private final AnimationSet q() {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
        translateAnimation.setDuration(1000L);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(1000L);
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    private final void r() {
        Intent intent;
        this.f45132a.f63830p.setLocalChangeListener(new Function0() { // from class: com.transsion.home.fragment.home.e0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HomeSearchViewManager.s();
            }
        });
        FragmentActivity activity = this.f45133b.getActivity();
        boolean booleanExtra = false;
        if (activity != null && (intent = activity.getIntent()) != null) {
            booleanExtra = intent.getBooleanExtra("extra_language_activity_restart", false);
        }
        if (booleanExtra) {
            PreloadTrendingData.f45886n.a().z();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s() {
        PreloadTrendingData.f45886n.a().z();
        return Unit.f67061a;
    }

    private final void t() {
        this.f45132a.f63832r.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.home.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeSearchViewManager.u(this.f45191a, view);
            }
        });
        this.f45132a.f63831q.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.home.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeSearchViewManager.v(this.f45192a, view);
            }
        });
        this.f45132a.f63821g.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.home.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeSearchViewManager.w(view);
            }
        });
        r();
        PreloadTrendingData.f45886n.a().H().j(this.f45133b, new b(new Function1() { // from class: com.transsion.home.fragment.home.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HomeSearchViewManager.x(this.f45152a, (HotSubjectEntity) obj);
            }
        }));
        HomeFragment homeFragment = this.f45133b;
        Function1 function1 = new Function1() { // from class: com.transsion.home.fragment.home.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HomeSearchViewManager.y(this.f45154a, (UpdateResultEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = UpdateResultEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(homeFragment, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(HomeSearchViewManager homeSearchViewManager, View view) {
        F(homeSearchViewManager, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(HomeSearchViewManager homeSearchViewManager, View view) {
        homeSearchViewManager.E(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x(HomeSearchViewManager homeSearchViewManager, HotSubjectEntity hotSubjectEntity) {
        List<HotSearchKeyWord> everyoneSearch;
        if (hotSubjectEntity != null && (everyoneSearch = hotSubjectEntity.getEveryoneSearch()) != null) {
            homeSearchViewManager.A(everyoneSearch);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y(HomeSearchViewManager homeSearchViewManager, UpdateResultEvent it) {
        Intrinsics.h(it, "it");
        homeSearchViewManager.o();
        return Unit.f67061a;
    }

    private final void z(AppTab appTab) {
        Context context = this.f45135d;
        if (context == null) {
            Intrinsics.z("context");
            context = null;
        }
        this.f45139h = new CommonNavigator(context);
        a aVar = new a(appTab);
        this.f45140i = aVar;
        CommonNavigator commonNavigator = this.f45139h;
        if (commonNavigator != null) {
            commonNavigator.setAdapter(aVar);
        }
        this.f45132a.f63825k.setNavigator(this.f45139h);
    }

    public final void C(AppTab appTab) {
        Object objM454constructorimpl;
        this.f45135d = this.f45133b.requireContext();
        ViewGroup.LayoutParams layoutParams = this.f45132a.f63832r.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).topMargin = com.blankj.utilcode.util.a0.a(4.0f) + com.blankj.utilcode.util.d.c();
        this.f45132a.f63832r.setLayoutParams(bVar);
        this.f45142k = bVar;
        o();
        z(appTab);
        t();
        try {
            Result.Companion companion = Result.INSTANCE;
            t tVar = new t();
            this.f45134c = tVar;
            FrameLayout flGameCenter = this.f45132a.f63817c;
            Intrinsics.g(flGameCenter, "flGameCenter");
            FrameLayout flPhoneCenter = this.f45132a.f63818d;
            Intrinsics.g(flPhoneCenter, "flPhoneCenter");
            AppCompatImageView ivMbLogo = this.f45132a.f63821g;
            Intrinsics.g(ivMbLogo, "ivMbLogo");
            tVar.b(flGameCenter, flPhoneCenter, ivMbLogo, androidx.p009lifecycle.v.a(this.f45133b));
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "zxb_icon", "HomeSearchViewManager --> initGameCenter() --> it --> " + thM457exceptionOrNullimpl, false, 4, null);
        }
        AppCompatImageView ivNovelEnter = this.f45132a.f63822h;
        Intrinsics.g(ivNovelEnter, "ivNovelEnter");
        new v(ivNovelEnter);
    }

    public final boolean D() {
        return this.f45141j;
    }

    public final void G() {
        t tVar = this.f45134c;
        if (tVar != null) {
            tVar.c();
        }
    }

    public final void I(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        if (this.f45136e.isEmpty()) {
            PreloadTrendingData.f45886n.a().G();
        }
    }

    public final void L() {
        this.f45144m.removeCallbacksAndMessages(null);
    }

    public final void M(boolean z10) {
        if (this.f45136e.size() <= 0) {
            return;
        }
        if (this.f45137f >= this.f45136e.size()) {
            this.f45137f %= this.f45136e.size();
        }
        if (z10) {
            L();
            this.f45144m.sendEmptyMessageDelayed(100, 500L);
        } else {
            L();
            this.f45144m.sendEmptyMessageDelayed(100, 5000L);
        }
    }

    public final void O(AppTab appTab) {
        Intrinsics.h(appTab, "appTab");
        a aVar = this.f45140i;
        if (aVar != null) {
            aVar.h(appTab);
        }
        if (this.f45141j) {
            m(true);
        }
    }

    public final void l(boolean z10) {
        this.f45141j = z10;
        m(z10);
    }

    public final void n() {
        t tVar = this.f45134c;
        if (tVar != null) {
            tVar.a();
        }
    }
}
