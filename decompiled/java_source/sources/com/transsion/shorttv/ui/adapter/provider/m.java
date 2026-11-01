package com.transsion.shorttv.ui.adapter.provider;

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
import com.transsion.shorttv.bean.BannerBean;
import com.transsion.shorttv.bean.BannerData;
import com.transsion.shorttv.bean.Image;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.ShortTvItemType;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.ui.adapter.ShortTVBannerAdapter;
import com.transsion.shorttv.ui.widget.ShortTVBannerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class m extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Fragment f53187e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f53188f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f53189g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f53190h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f53191i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ShortTVBannerAdapter f53192j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f53193k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f53194l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f53195m;

    public static final class a extends ViewPager2.OnPageChangeCallback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f53197b;

        a(View view) {
            this.f53197b = view;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            m mVar = m.this;
            mVar.O(this.f53197b, i11, mVar.f53194l, f11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            if (m.this.f53187e.isResumed()) {
                m.this.M();
                m.this.f53195m = System.currentTimeMillis();
            }
            m.this.f53194l = i11;
        }
    }

    public m(Fragment fragment, String pageName, boolean z10, boolean z11) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(pageName, "pageName");
        this.f53187e = fragment;
        this.f53188f = pageName;
        this.f53189g = z10;
        this.f53190h = z11;
        this.f53191i = com.blankj.utilcode.util.d.c();
        this.f53193k = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.ui.adapter.provider.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return m.H(this.f53186a);
            }
        });
        this.f53194l = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.shorttv.utils.a H(m mVar) {
        return new com.transsion.shorttv.utils.a(mVar.f53188f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J(m mVar, View view, int i11, BannerData item) {
        Intrinsics.h(view, "<unused var>");
        Intrinsics.h(item, "item");
        mVar.N(i11, item);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(m mVar, View view) {
        mVar.O(view, 0, 0, 0.0f);
    }

    private final com.transsion.shorttv.utils.a L() {
        return (com.transsion.shorttv.utils.a) this.f53193k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:30:0x006d A[PHI: r3
  0x006d: PHI (r3v5 java.lang.String) = (r3v4 java.lang.String), (r3v8 java.lang.String) binds: [B:23:0x0057, B:28:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    public final void M() {
        List data;
        BannerData bannerData;
        String value;
        List data2;
        int i11 = this.f53194l;
        if (i11 >= 0) {
            ShortTVBannerAdapter shortTVBannerAdapter = this.f53192j;
            if (i11 >= ((shortTVBannerAdapter == null || (data2 = shortTVBannerAdapter.getData()) == null) ? 0 : data2.size())) {
                return;
            }
            long jCurrentTimeMillis = this.f53195m > 0 ? System.currentTimeMillis() - this.f53195m : 0L;
            ShortTVBannerAdapter shortTVBannerAdapter2 = this.f53192j;
            if (shortTVBannerAdapter2 == null || (data = shortTVBannerAdapter2.getData()) == null || (bannerData = (BannerData) data.get(this.f53194l)) == null) {
                return;
            }
            com.transsion.shorttv.utils.a aVarL = L();
            String str = this.f53188f;
            ShortTvItemType shortTvItemType = ShortTvItemType.BANNER;
            String value2 = shortTvItemType.getValue();
            String subjectId = bannerData.getSubjectId();
            String ops = bannerData.getOps();
            if (ops != null) {
                value = ops;
            } else {
                Subject subject = bannerData.getSubject();
                ops = subject != null ? subject.getOps() : null;
                if (ops == null) {
                    value = shortTvItemType.getValue();
                } else {
                    value = ops;
                }
            }
            Boolean hasResource = bannerData.getHasResource();
            String deepLink = bannerData.getDeepLink();
            Integer numValueOf = Integer.valueOf(this.f53194l);
            Image image = bannerData.getImage();
            aVarL.a((4112 & 1) != 0 ? null : str, (4112 & 2) != 0 ? null : "opt", (4112 & 4) != 0 ? null : value2, (4112 & 8) != 0 ? null : subjectId, (4112 & 16) != 0 ? null : null, (4112 & 32) != 0 ? null : value, (4112 & 64) != 0 ? null : hasResource, (4112 & 128) != 0 ? null : deepLink, (4112 & 256) != 0 ? null : numValueOf, (4112 & 512) != 0 ? null : image != null ? image.getUrl() : null, (4112 & 1024) != 0 ? 0L : jCurrentTimeMillis, (4112 & 2048) != 0 ? Boolean.FALSE : Boolean.valueOf(bannerData.getBuiltIn()), (4112 & 4096) == 0 ? null : null);
        }
    }

    private final void N(int i11, BannerData bannerData) {
        com.transsion.shorttv.utils.a aVarL = L();
        String str = this.f53188f;
        ShortTvItemType shortTvItemType = ShortTvItemType.BANNER;
        String value = shortTvItemType.getValue();
        String subjectId = bannerData.getSubjectId();
        Boolean hasResource = bannerData.getHasResource();
        String deepLink = bannerData.getDeepLink();
        Integer numValueOf = Integer.valueOf(i11);
        Image image = bannerData.getImage();
        aVarL.c(str, "opt", value, (4240 & 8) != 0 ? null : subjectId, (4240 & 16) != 0 ? null : null, (4240 & 32) != 0 ? null : null, (4240 & 64) != 0 ? null : hasResource, (4240 & 128) != 0 ? null : null, (4240 & 256) != 0 ? null : deepLink, (4240 & 512) != 0 ? null : numValueOf, (4240 & 1024) != 0 ? null : image != null ? image.getUrl() : null, (4240 & 2048) != 0 ? Boolean.FALSE : Boolean.valueOf(bannerData.getBuiltIn()), (4240 & 4096) != 0 ? null : null);
        String deepLink2 = bannerData.getDeepLink();
        if (deepLink2 != null) {
            Uri uriA = zr.a.f79450a.a(Uri.parse(deepLink2 + "&ops=" + shortTvItemType.getValue()));
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
        ShortTVBannerAdapter shortTVBannerAdapter = this.f53192j;
        BannerData bannerData = null;
        BannerData bannerData2 = (shortTVBannerAdapter == null || (data2 = shortTVBannerAdapter.getData()) == null) ? null : (BannerData) data2.get(i11);
        ShortTVBannerAdapter shortTVBannerAdapter2 = this.f53192j;
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
        ((ViewGroup.MarginLayoutParams) bVar).height = this.f53191i + yr.a.a(this.f53190h ? 50 : 10);
        view2.setLayoutParams(bVar);
        ShortTVBannerView shortTVBannerView = (ShortTVBannerView) helper.getView(R$id.banner);
        ShortTVBannerAdapter shortTVBannerAdapter = new ShortTVBannerAdapter();
        shortTVBannerAdapter.k(new Function3() { // from class: com.transsion.shorttv.ui.adapter.provider.j
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return m.J(this.f53183a, (View) obj, ((Integer) obj2).intValue(), (BannerData) obj3);
            }
        });
        shortTVBannerView.setAutoTurningTime(4000L);
        shortTVBannerView.setPagerScrollDuration(1000L);
        shortTVBannerView.setPageMargin(a0.a((this.f53189g ? 3 : 1) * 44.0f), a0.a(16.0f));
        shortTVBannerView.addPageTransformer(new com.to.aboomy.pager2banner.b());
        shortTVBannerView.setOuterPageChangeListener(new a(view));
        shortTVBannerView.setAdapter(shortTVBannerAdapter);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(banners);
        shortTVBannerAdapter.setData(arrayList);
        shortTVBannerView.post(new Runnable() { // from class: com.transsion.shorttv.ui.adapter.provider.k
            @Override // java.lang.Runnable
            public final void run() {
                m.K(this.f53184a, view);
            }
        });
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return ShortTvItemType.BANNER.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.short_tv_view_banner;
    }
}
