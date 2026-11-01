package com.transsion.home.adapter.suboperate.provider;

import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.CompositePageTransformer;
import androidx.viewpager2.widget.ViewPager2;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baseui.widget.OperateScrollableHost;
import com.transsion.gslb.Utils;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.suboperate.adapter.SubHorizontalViewPagerAdapter;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SubHorizontalBannerProvider extends BaseItemProvider implements androidx.p009lifecycle.f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f44522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final BaseHomeSubFragment f44523f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set f44524g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f44525h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewPager2 f44526i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f44527j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f44528k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f44529l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f44530m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private t1 f44531n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private OperateItem f44532o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private SubHorizontalViewPagerAdapter f44533p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Runnable f44534q;

    public static final class a extends ViewPager2.OnPageChangeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ OperateItem f44535a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SubHorizontalBannerProvider f44536b;

        a(OperateItem operateItem, SubHorizontalBannerProvider subHorizontalBannerProvider) {
            this.f44535a = operateItem;
            this.f44536b = subHorizontalBannerProvider;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            List<BannerData> banners;
            BannerData bannerData;
            Image image;
            String averageHueLight;
            List<BannerData> banners2;
            BannerBean banner = this.f44535a.getBanner();
            if (banner != null ? Intrinsics.c(banner.getAutoPlay(), Boolean.TRUE) : false) {
                Handler handler = this.f44536b.f44525h;
                if (handler != null) {
                    handler.removeCallbacks(this.f44536b.f44534q);
                }
                Handler handler2 = this.f44536b.f44525h;
                if (handler2 != null) {
                    handler2.postDelayed(this.f44536b.f44534q, this.f44536b.f44528k);
                }
            }
            this.f44536b.f44527j = i11;
            BannerBean banner2 = this.f44535a.getBanner();
            int size = i11 % ((banner2 == null || (banners2 = banner2.getBanners()) == null) ? 1 : banners2.size());
            BannerBean banner3 = this.f44535a.getBanner();
            if (banner3 != null && (banners = banner3.getBanners()) != null && (bannerData = banners.get(size)) != null && (image = bannerData.getImage()) != null && (averageHueLight = image.getAverageHueLight()) != null) {
                SubHorizontalBannerProvider subHorizontalBannerProvider = this.f44536b;
                View view = null;
                GradientDrawable gradientDrawableC = il.a.c(StringsKt.Q(averageHueLight, Utils.SEPARATOR, "#ff", false, 4, null), StringsKt.Q(averageHueLight, Utils.SEPARATOR, "#00", false, 4, null), null, 4, null);
                View view2 = subHorizontalBannerProvider.f44529l;
                if (view2 == null) {
                    Intrinsics.z("bgColorView");
                } else {
                    view = view2;
                }
                view.setBackground(gradientDrawableC);
            }
            this.f44536b.L(this.f44535a, size);
        }
    }

    public SubHorizontalBannerProvider(int i11, BaseHomeSubFragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f44522e = i11;
        this.f44523f = fragment;
        this.f44524g = new LinkedHashSet();
        this.f44527j = -1;
        this.f44528k = 5000L;
        this.f44534q = new Runnable() { // from class: com.transsion.home.adapter.suboperate.provider.x
            @Override // java.lang.Runnable
            public final void run() {
                SubHorizontalBannerProvider.M(this.f44650a);
            }
        };
    }

    private final void H() {
        Handler handler = this.f44525h;
        if (handler != null) {
            handler.postDelayed(this.f44534q, this.f44528k);
        }
    }

    private final boolean J(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return this.f44524g.add(str);
    }

    private final void K() {
        if (HomeTabId.INSTANCE.h(Integer.valueOf(this.f44522e), true)) {
            this.f44531n = kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new SubHorizontalBannerProvider$registerCourse$1(this, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(OperateItem operateItem, int i11) {
        List<BannerData> banners;
        BannerBean banner = operateItem.getBanner();
        BannerData bannerData = (banner == null || (banners = banner.getBanners()) == null) ? null : banners.get(i11);
        if (J(bannerData != null ? bannerData.getSubjectId() : null)) {
            HashMap map = new HashMap();
            map.put("event_type", "browse_banner");
            map.put("sequence", String.valueOf(i11));
            map.put("tabId", String.valueOf(this.f44522e));
            if (bannerData != null) {
                il.b.c(bannerData, map);
            }
            il.b.a(operateItem, map);
            com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.f44522e), map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(SubHorizontalBannerProvider subHorizontalBannerProvider) {
        if (!subHorizontalBannerProvider.f44523f.isVisible()) {
            if (subHorizontalBannerProvider.f44523f.isAdded()) {
                subHorizontalBannerProvider.H();
                return;
            }
            return;
        }
        ViewPager2 viewPager2 = subHorizontalBannerProvider.f44526i;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        ViewPager2 viewPager3 = subHorizontalBannerProvider.f44526i;
        if (viewPager3 == null) {
            Intrinsics.z("viewPager2");
            viewPager3 = null;
        }
        int currentItem = viewPager3.getCurrentItem() + 1;
        ViewPager2 viewPager4 = subHorizontalBannerProvider.f44526i;
        if (viewPager4 == null) {
            Intrinsics.z("viewPager2");
            viewPager4 = null;
        }
        RecyclerView.Adapter adapter = viewPager4.getAdapter();
        Integer numValueOf = adapter != null ? Integer.valueOf(adapter.getItemCount()) : null;
        Intrinsics.e(numValueOf);
        viewPager2.setCurrentItem(currentItem % numValueOf.intValue());
    }

    private final void N() {
        t1 t1Var = this.f44531n;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f44531n = null;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, OperateItem item) {
        List<BannerData> arrayList;
        String interval;
        Integer numV;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        this.f44526i = (ViewPager2) helper.getView(R$id.sub_operation_horizontal_view_pager);
        this.f44529l = helper.getView(R$id.sub_operation_banner_bg);
        int iMin = Math.min(com.blankj.utilcode.util.y.e(), com.blankj.utilcode.util.y.c()) - com.blankj.utilcode.util.a0.a(112.0f);
        int i11 = (int) ((iMin * 9.0f) / 16);
        ViewPager2 viewPager2 = this.f44526i;
        ViewPager2 viewPager3 = null;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        viewPager2.getLayoutParams().height = i11;
        ((OperateScrollableHost) helper.getView(R$id.sub_operation_view_scroll_helper)).interceptAllEvent(true);
        int iH0 = this.f44523f.h0();
        helper.getView(R$id.sub_operation_banner_space).getLayoutParams().height = iH0;
        View view = this.f44529l;
        if (view == null) {
            Intrinsics.z("bgColorView");
            view = null;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewPager2 viewPager4 = this.f44526i;
        if (viewPager4 == null) {
            Intrinsics.z("viewPager2");
            viewPager4 = null;
        }
        layoutParams.height = iH0 + viewPager4.getLayoutParams().height;
        BannerBean banner = item.getBanner();
        if (banner == null || (arrayList = banner.getBanners()) == null) {
            arrayList = new ArrayList<>();
        }
        ViewPager2 viewPager5 = this.f44526i;
        if (viewPager5 == null) {
            Intrinsics.z("viewPager2");
            viewPager5 = null;
        }
        viewPager5.setPageTransformer(new CompositePageTransformer());
        ViewPager2 viewPager6 = this.f44526i;
        if (viewPager6 == null) {
            Intrinsics.z("viewPager2");
            viewPager6 = null;
        }
        viewPager6.setOffscreenPageLimit(3);
        ViewPager2 viewPager7 = this.f44526i;
        if (viewPager7 == null) {
            Intrinsics.z("viewPager2");
            viewPager7 = null;
        }
        viewPager7.setAdapter(new SubHorizontalViewPagerAdapter(arrayList, this.f44522e, item, iMin, i11));
        if (arrayList.isEmpty()) {
            return;
        }
        Handler handler = this.f44525h;
        if (handler != null) {
            handler.removeCallbacks(this.f44534q);
        }
        this.f44525h = new Handler(Looper.getMainLooper());
        ViewPager2 viewPager8 = this.f44526i;
        if (viewPager8 == null) {
            Intrinsics.z("viewPager2");
            viewPager8 = null;
        }
        viewPager8.registerOnPageChangeCallback(new a(item, this));
        BannerBean banner2 = item.getBanner();
        long jIntValue = ((long) ((banner2 == null || (interval = banner2.getInterval()) == null || (numV = StringsKt.v(interval)) == null) ? 0 : numV.intValue())) * 1000;
        if (jIntValue <= 0) {
            jIntValue = this.f44528k;
        }
        this.f44528k = jIntValue;
        int size = this.f44527j;
        if (size < 0) {
            size = 1073741823 - (1073741823 % arrayList.size());
        }
        ViewPager2 viewPager9 = this.f44526i;
        if (viewPager9 == null) {
            Intrinsics.z("viewPager2");
            viewPager9 = null;
        }
        viewPager9.setCurrentItem(size, false);
        ViewPager2 viewPager10 = this.f44526i;
        if (viewPager10 == null) {
            Intrinsics.z("viewPager2");
        } else {
            viewPager3 = viewPager10;
        }
        RecyclerView.Adapter adapter = viewPager3.getAdapter();
        Intrinsics.f(adapter, "null cannot be cast to non-null type com.transsion.home.adapter.suboperate.adapter.SubHorizontalViewPagerAdapter");
        this.f44533p = (SubHorizontalViewPagerAdapter) adapter;
        this.f44532o = item;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.HORIZONTAL_BANNER.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_sub_operation_horizontal_banner;
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
        if (!this.f44530m || (handler = this.f44525h) == null) {
            return;
        }
        handler.removeCallbacks(this.f44534q);
    }

    @Override // androidx.p009lifecycle.f
    public void onResume(androidx.p009lifecycle.u owner) {
        Handler handler;
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.d(this, owner);
        if (!this.f44530m || (handler = this.f44525h) == null) {
            return;
        }
        handler.postDelayed(this.f44534q, this.f44528k);
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
        this.f44530m = true;
        Handler handler = this.f44525h;
        if (handler != null) {
            handler.postDelayed(this.f44534q, this.f44528k);
        }
        K();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        this.f44530m = false;
        Handler handler = this.f44525h;
        if (handler != null) {
            handler.removeCallbacks(this.f44534q);
        }
        N();
    }
}
