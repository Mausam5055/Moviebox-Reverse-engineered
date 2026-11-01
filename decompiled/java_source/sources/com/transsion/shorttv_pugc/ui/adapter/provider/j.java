package com.transsion.shorttv_pugc.ui.adapter.provider;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.bean.BannerBean;
import com.transsion.shorttv_pugc.bean.BannerData;
import com.transsion.shorttv_pugc.bean.Image;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import com.transsion.shorttv_pugc.ui.adapter.ShortTVBannerAdapter;
import com.transsion.shorttv_pugc.ui.widget.ShortTVBannerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class j extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Fragment f54072e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f54073f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f54074g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f54075h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f54076i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ShortTVBannerAdapter f54077j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f54078k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f54079l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f54080m;

    public static final class a extends ViewPager2.OnPageChangeCallback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f54082b;

        a(View view) {
            this.f54082b = view;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            j jVar = j.this;
            jVar.O(this.f54082b, i11, jVar.f54079l, f11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            if (j.this.f54072e.isResumed()) {
                j.this.M();
                j.this.f54080m = System.currentTimeMillis();
            }
            j.this.f54079l = i11;
        }
    }

    public j(Fragment fragment, String pageName, boolean z10, boolean z11) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(pageName, "pageName");
        this.f54072e = fragment;
        this.f54073f = pageName;
        this.f54074g = z10;
        this.f54075h = z11;
        this.f54076i = com.blankj.utilcode.util.d.c();
        this.f54078k = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.ui.adapter.provider.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return j.H(this.f54068a);
            }
        });
        this.f54079l = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.shorttv_pugc.utils.a H(j jVar) {
        return new com.transsion.shorttv_pugc.utils.a(jVar.f54073f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J(j jVar, View view, int i11, BannerData item) {
        Intrinsics.h(view, "<unused var>");
        Intrinsics.h(item, "item");
        jVar.N(i11, item);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(j jVar, View view) {
        jVar.O(view, 0, 0, 0.0f);
    }

    private final com.transsion.shorttv_pugc.utils.a L() {
        return (com.transsion.shorttv_pugc.utils.a) this.f54078k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M() {
        List data;
        BannerData bannerData;
        List data2;
        int i11 = this.f54079l;
        if (i11 >= 0) {
            ShortTVBannerAdapter shortTVBannerAdapter = this.f54077j;
            if (i11 >= ((shortTVBannerAdapter == null || (data2 = shortTVBannerAdapter.getData()) == null) ? 0 : data2.size())) {
                return;
            }
            long jCurrentTimeMillis = this.f54080m > 0 ? System.currentTimeMillis() - this.f54080m : 0L;
            ShortTVBannerAdapter shortTVBannerAdapter2 = this.f54077j;
            if (shortTVBannerAdapter2 == null || (data = shortTVBannerAdapter2.getData()) == null || (bannerData = (BannerData) data.get(this.f54079l)) == null) {
                return;
            }
            com.transsion.shorttv_pugc.utils.a aVarL = L();
            String str = this.f54073f;
            String value = ShortTvItemType.BANNER.getValue();
            String subjectId = bannerData.getSubjectId();
            Boolean hasResource = bannerData.getHasResource();
            String deepLink = bannerData.getDeepLink();
            Integer numValueOf = Integer.valueOf(this.f54079l);
            Image image = bannerData.getImage();
            aVarL.a((4144 & 1) != 0 ? null : str, (4144 & 2) != 0 ? null : "opt", (4144 & 4) != 0 ? null : value, (4144 & 8) != 0 ? null : subjectId, (4144 & 16) != 0 ? null : null, (4144 & 32) != 0 ? null : null, (4144 & 64) != 0 ? null : hasResource, (4144 & 128) != 0 ? null : deepLink, (4144 & 256) != 0 ? null : numValueOf, (4144 & 512) != 0 ? null : image != null ? image.getUrl() : null, (4144 & 1024) != 0 ? 0L : jCurrentTimeMillis, (4144 & 2048) != 0 ? Boolean.FALSE : Boolean.valueOf(bannerData.getBuiltIn()), (4144 & 4096) == 0 ? null : null);
        }
    }

    private final void N(int i11, BannerData bannerData) {
        com.transsion.shorttv_pugc.utils.a aVarL = L();
        String str = this.f54073f;
        ShortTvItemType shortTvItemType = ShortTvItemType.BANNER;
        String value = shortTvItemType.getValue();
        String subjectId = bannerData.getSubjectId();
        Boolean hasResource = bannerData.getHasResource();
        String deepLink = bannerData.getDeepLink();
        Integer numValueOf = Integer.valueOf(i11);
        Image image = bannerData.getImage();
        aVarL.c(str, "opt", value, (4272 & 8) != 0 ? null : subjectId, (4272 & 16) != 0 ? null : null, (4272 & 32) != 0 ? null : null, (4272 & 64) != 0 ? null : hasResource, (4272 & 128) != 0 ? null : null, (4272 & 256) != 0 ? null : deepLink, (4272 & 512) != 0 ? null : numValueOf, (4272 & 1024) != 0 ? null : image != null ? image.getUrl() : null, (4272 & 2048) != 0 ? Boolean.FALSE : Boolean.valueOf(bannerData.getBuiltIn()), (4272 & 4096) != 0 ? null : null);
        String deepLink2 = bannerData.getDeepLink();
        if (deepLink2 != null) {
            Uri uriA = dt.a.f61432a.a(Uri.parse(deepLink2 + "&ops=" + shortTvItemType.getValue()));
            if (uriA != null) {
                ds.c.j(uriA);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O(View view, int i11, int i12, float f11) {
        Image image;
        String averageHueDark;
        Image image2;
        String averageHueDark2;
        List data;
        List data2;
        ShortTVBannerAdapter shortTVBannerAdapter = this.f54077j;
        BannerData bannerData = null;
        BannerData bannerData2 = (shortTVBannerAdapter == null || (data2 = shortTVBannerAdapter.getData()) == null) ? null : (BannerData) data2.get(i11);
        ShortTVBannerAdapter shortTVBannerAdapter2 = this.f54077j;
        if (shortTVBannerAdapter2 != null && (data = shortTVBannerAdapter2.getData()) != null) {
            bannerData = (BannerData) data.get(i12);
        }
        if (bannerData2 == null || (image = bannerData2.getImage()) == null || (averageHueDark = image.getAverageHueDark()) == null || bannerData == null || (image2 = bannerData.getImage()) == null || (averageHueDark2 = image2.getAverageHueDark()) == null) {
            return;
        }
        view.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{i11 == i12 ? Color.parseColor(averageHueDark) : i00.a.a(f11, Color.parseColor(averageHueDark), Color.parseColor(averageHueDark2)), 0}));
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, OperateItem item) {
        List<BannerData> banners;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        BannerBean banner = item.getBanner();
        if (banner == null || (banners = banner.getBanners()) == null) {
            return;
        }
        final View view = helper.getView(R$id.v_banner_bg);
        helper.getView(R$id.v_top_space);
        View view2 = helper.getView(R$id.v_bar_space);
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).height = this.f54076i + ct.a.a(this.f54075h ? 50 : 10);
        view2.setLayoutParams(bVar);
        ShortTVBannerView shortTVBannerView = (ShortTVBannerView) helper.getView(R$id.banner);
        ShortTVBannerAdapter shortTVBannerAdapter = new ShortTVBannerAdapter();
        shortTVBannerAdapter.k(new Function3() { // from class: com.transsion.shorttv_pugc.ui.adapter.provider.h
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return j.J(this.f54069a, (View) obj, ((Integer) obj2).intValue(), (BannerData) obj3);
            }
        });
        shortTVBannerView.setAutoTurningTime(4000L);
        shortTVBannerView.setPagerScrollDuration(1000L);
        shortTVBannerView.setPageMargin(a0.a((this.f54074g ? 3 : 1) * 44.0f), a0.a(16.0f));
        shortTVBannerView.addPageTransformer(new com.to.aboomy.pager2banner.b());
        shortTVBannerView.setOuterPageChangeListener(new a(view));
        shortTVBannerView.setAdapter(shortTVBannerAdapter);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(banners);
        shortTVBannerAdapter.setData(arrayList);
        shortTVBannerView.post(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.adapter.provider.i
            @Override // java.lang.Runnable
            public final void run() {
                j.K(this.f54070a, view);
            }
        });
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return ShortTvItemType.BANNER.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.pugc_short_tv_view_banner;
    }
}
