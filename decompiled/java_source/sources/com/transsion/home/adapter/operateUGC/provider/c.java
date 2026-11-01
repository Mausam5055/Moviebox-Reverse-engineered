package com.transsion.home.adapter.operateUGC.provider;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewTreeObserver;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.view.indicator.BannerIndicator;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.OperateScrollableHost;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.operateUGC.adapter.BannerUGCAdapter;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends BaseItemProvider implements androidx.p009lifecycle.f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44333e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final BaseHomeSubFragment f44334f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set f44335g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f44336h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewPager2 f44337i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BannerIndicator f44338j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f44339k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f44340l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f44341m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Runnable f44342n;

    public static final class a extends ViewPager2.OnPageChangeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ OperateItem f44343a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f44344b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f44345c;

        a(OperateItem operateItem, c cVar, List list) {
            this.f44343a = operateItem;
            this.f44344b = cVar;
            this.f44345c = list;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            BannerBean banner = this.f44343a.getBanner();
            if (banner != null ? Intrinsics.c(banner.getAutoPlay(), Boolean.TRUE) : false) {
                Handler handler = this.f44344b.f44336h;
                if (handler != null) {
                    handler.removeCallbacks(this.f44344b.f44342n);
                }
                Handler handler2 = this.f44344b.f44336h;
                if (handler2 != null) {
                    handler2.postDelayed(this.f44344b.f44342n, this.f44344b.f44340l);
                }
            }
            this.f44344b.f44339k = i11;
            BannerIndicator bannerIndicator = this.f44344b.f44338j;
            if (bannerIndicator == null) {
                Intrinsics.z("circleIndicator");
                bannerIndicator = null;
            }
            bannerIndicator.onPageSelected(i11 % this.f44345c.size());
        }
    }

    public static final class b implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f44346a;

        b(BaseViewHolder baseViewHolder) {
            this.f44346a = baseViewHolder;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver = this.f44346a.itemView.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            AppStartReport.f54517a.f(new AppStartDotState(AppStartDotState.TRENDING_END, 0L, 2, null));
            return true;
        }
    }

    public c(int i11, BaseHomeSubFragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f44333e = i11;
        this.f44334f = fragment;
        this.f44335g = new LinkedHashSet();
        this.f44339k = -1;
        this.f44340l = 5000L;
        this.f44342n = new Runnable() { // from class: com.transsion.home.adapter.operateUGC.provider.b
            @Override // java.lang.Runnable
            public final void run() {
                c.J(this.f44329a);
            }
        };
    }

    private final void F() {
        Handler handler = this.f44336h;
        if (handler != null) {
            handler.postDelayed(this.f44342n, this.f44340l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(c cVar) {
        BannerIndicator bannerIndicator = cVar.f44338j;
        if (bannerIndicator == null) {
            Intrinsics.z("circleIndicator");
            bannerIndicator = null;
        }
        bannerIndicator.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(c cVar) {
        if (!cVar.f44334f.isVisible()) {
            if (cVar.f44334f.isAdded()) {
                cVar.F();
                return;
            }
            return;
        }
        ViewPager2 viewPager2 = cVar.f44337i;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        ViewPager2 viewPager3 = cVar.f44337i;
        if (viewPager3 == null) {
            Intrinsics.z("viewPager2");
            viewPager3 = null;
        }
        int currentItem = viewPager3.getCurrentItem() + 1;
        ViewPager2 viewPager4 = cVar.f44337i;
        if (viewPager4 == null) {
            Intrinsics.z("viewPager2");
            viewPager4 = null;
        }
        RecyclerView.Adapter adapter = viewPager4.getAdapter();
        Integer numValueOf = adapter != null ? Integer.valueOf(adapter.getItemCount()) : null;
        Intrinsics.e(numValueOf);
        viewPager2.setCurrentItem(currentItem % numValueOf.intValue());
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, OperateItem item) {
        List<BannerData> arrayList;
        String interval;
        Integer numV;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        this.f44337i = (ViewPager2) helper.itemView.findViewById(R$id.provider_ugc_banner_view_pager);
        ((OperateScrollableHost) helper.itemView.findViewById(R$id.provider_ugc_banner_view_scroll_helper)).interceptAllEvent(true);
        this.f44338j = (BannerIndicator) helper.itemView.findViewById(R$id.provider_ugc_banner_view_pager_indicator);
        BannerBean banner = item.getBanner();
        if (banner == null || (arrayList = banner.getBanners()) == null) {
            arrayList = new ArrayList<>();
        }
        ViewPager2 viewPager2 = this.f44337i;
        ViewPager2 viewPager3 = null;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        viewPager2.setAdapter(new BannerUGCAdapter(arrayList, this.f44333e, this, item));
        if (arrayList.isEmpty()) {
            return;
        }
        Handler handler = this.f44336h;
        if (handler != null) {
            handler.removeCallbacks(this.f44342n);
        }
        this.f44336h = new Handler(Looper.getMainLooper());
        ViewPager2 viewPager4 = this.f44337i;
        if (viewPager4 == null) {
            Intrinsics.z("viewPager2");
            viewPager4 = null;
        }
        viewPager4.registerOnPageChangeCallback(new a(item, this, arrayList));
        BannerIndicator bannerIndicator = this.f44338j;
        if (bannerIndicator == null) {
            Intrinsics.z("circleIndicator");
            bannerIndicator = null;
        }
        com.tn.lib.view.indicator.a indicatorConfig = bannerIndicator.getIndicatorConfig();
        indicatorConfig.s(-1);
        indicatorConfig.q(androidx.core.content.b.getColor(k(), R$color.white_20));
        indicatorConfig.r(com.blankj.utilcode.util.a0.a(4.0f));
        indicatorConfig.t(com.blankj.utilcode.util.a0.a(8.0f));
        indicatorConfig.o(com.blankj.utilcode.util.a0.a(4.0f));
        indicatorConfig.n(arrayList.size());
        BannerIndicator bannerIndicator2 = this.f44338j;
        if (bannerIndicator2 == null) {
            Intrinsics.z("circleIndicator");
            bannerIndicator2 = null;
        }
        bannerIndicator2.post(new Runnable() { // from class: com.transsion.home.adapter.operateUGC.provider.a
            @Override // java.lang.Runnable
            public final void run() {
                c.H(this.f44324a);
            }
        });
        BannerBean banner2 = item.getBanner();
        long jIntValue = ((long) ((banner2 == null || (interval = banner2.getInterval()) == null || (numV = StringsKt.v(interval)) == null) ? 0 : numV.intValue())) * 1000;
        if (jIntValue <= 0) {
            jIntValue = this.f44340l;
        }
        this.f44340l = jIntValue;
        int size = this.f44339k;
        if (size < 0) {
            size = 1073741823 - (1073741823 % arrayList.size());
        }
        ViewPager2 viewPager5 = this.f44337i;
        if (viewPager5 == null) {
            Intrinsics.z("viewPager2");
        } else {
            viewPager3 = viewPager5;
        }
        viewPager3.setCurrentItem(size, false);
    }

    public final boolean I(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return this.f44335g.add(str);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.UGC_BANNER.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_ugc_item_banner;
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
        if (!this.f44341m || (handler = this.f44336h) == null) {
            return;
        }
        handler.removeCallbacks(this.f44342n);
    }

    @Override // androidx.p009lifecycle.f
    public void onResume(androidx.p009lifecycle.u owner) {
        Handler handler;
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.d(this, owner);
        if (!this.f44341m || (handler = this.f44336h) == null) {
            return;
        }
        handler.postDelayed(this.f44342n, this.f44340l);
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
        this.f44341m = true;
        Handler handler = this.f44336h;
        if (handler != null) {
            handler.postDelayed(this.f44342n, this.f44340l);
        }
        holder.itemView.getViewTreeObserver().addOnPreDrawListener(new b(holder));
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        this.f44341m = false;
        Handler handler = this.f44336h;
        if (handler != null) {
            handler.removeCallbacks(this.f44342n);
        }
    }
}
