package com.transsion.home.adapter.suboperate.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.hisavana.common.bean.TAdNativeInfo;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.gslb.GslbSdk;
import com.transsion.gslb.Utils;
import com.transsion.home.R$id;
import com.transsion.home.adapter.trending.BannerADDataHelper;
import com.transsion.home.bean.BannerData;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class SubBannerADViewHolder extends RecyclerView.b0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f44422h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f44423i = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f44424j = Color.parseColor("#101114");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f44425k = a0.a(237.0f);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f44426l = a0.a(37.0f);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f44427m = a0.a(57.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f44428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f44429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f44430c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FrameLayout f44431d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final NativeWrapperAdView f44432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.transsion.ad.bidding.base.r f44433f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private n0 f44434g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubBannerADViewHolder(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.home_sub_pager_items_status);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f44428a = viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.home_sub_pager_items_space);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f44429b = viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.home_sub_pager_items_top_mask);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f44430c = viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.home_sub_pager_items_container);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f44431d = (FrameLayout) viewFindViewById4;
        View viewFindViewById5 = itemView.findViewById(R$id.nativeView);
        Intrinsics.g(viewFindViewById5, "findViewById(...)");
        this.f44432e = (NativeWrapperAdView) viewFindViewById5;
    }

    private final GradientDrawable j(String str) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setGradientType(0);
        gradientDrawable.setColors(new int[]{Color.parseColor(StringsKt.Q(str, Utils.SEPARATOR, "#ff", false, 4, null)), Color.parseColor(StringsKt.Q(str, Utils.SEPARATOR, "#ff", false, 4, null)), Color.parseColor(StringsKt.Q(str, Utils.SEPARATOR, "#00", false, 4, null))});
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        return gradientDrawable;
    }

    private final void l(TAdNativeInfo tAdNativeInfo) {
        TAdNativeInfo.Image image;
        ViewGroup.LayoutParams layoutParams = this.f44432e.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = -2;
        }
        List<TAdNativeInfo.Image> imageList = tAdNativeInfo.getImageList();
        String url = (imageList == null || (image = (TAdNativeInfo.Image) CollectionsKt.k0(imageList)) == null) ? null : image.getUrl();
        if (url == null || StringsKt.q0(url)) {
            m(ViewCompat.MEASURED_STATE_MASK);
        } else {
            Glide.with(GslbSdk.context).asBitmap().load2(url).into(new CustomTarget() { // from class: com.transsion.home.adapter.suboperate.adapter.SubBannerADViewHolder$renderHiADMask$1
                @Override // com.bumptech.glide.request.target.Target
                public void onLoadCleared(Drawable drawable) {
                }

                @Override // com.bumptech.glide.request.target.CustomTarget, com.bumptech.glide.request.target.Target
                public void onLoadFailed(Drawable drawable) {
                    lg.a.C0828a.f(lg.a.f68839a, "BannerADDataHelper", "onLoadFailed", false, 4, null);
                    this.f44435a.m(ViewCompat.MEASURED_STATE_MASK);
                }

                @Override // com.bumptech.glide.request.target.Target
                public void onResourceReady(Bitmap resource, Transition transition) {
                    Intrinsics.h(resource, "resource");
                    n0 n0Var = this.f44435a.f44434g;
                    if (n0Var != null) {
                        kotlinx.coroutines.k.d(n0Var, y0.b(), null, new SubBannerADViewHolder$renderHiADMask$1$onResourceReady$1(resource, this.f44435a, null), 2, null);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(int i11) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format(Locale.ROOT, "#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(16777215 & i11)}, 1));
        Intrinsics.g(str, "format(...)");
        this.f44428a.setBackgroundColor(i11);
        this.f44429b.setBackgroundColor(i11);
        this.f44430c.setBackground(j(str));
        this.f44432e.post(new Runnable() { // from class: com.transsion.home.adapter.suboperate.adapter.f
            @Override // java.lang.Runnable
            public final void run() {
                SubBannerADViewHolder.n(this.f44479a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(SubBannerADViewHolder subBannerADViewHolder) {
        int i11;
        int measuredHeight = subBannerADViewHolder.f44432e.getMeasuredHeight();
        if (measuredHeight == 0) {
            i11 = f44426l;
        } else {
            i11 = measuredHeight < 10 ? 1 : f44425k - measuredHeight;
        }
        subBannerADViewHolder.f44429b.getLayoutParams().height = RangesKt.m(i11, 1, f44427m);
        lg.a.C0828a.f(lg.a.f68839a, "BannerADDataHelper", "nativeViewHeight: " + measuredHeight + ", space height: " + i11 + ", space.layoutParams.height: " + subBannerADViewHolder.f44429b.getLayoutParams().height, false, 4, null);
        subBannerADViewHolder.f44429b.requestLayout();
        jg.c.k(subBannerADViewHolder.f44429b);
    }

    public final void i(BannerData bannerData) {
        BiddingIntermediateMaterialBean biddingAdData;
        n0 n0Var = this.f44434g;
        if (n0Var == null || !o0.g(n0Var)) {
            this.f44434g = o0.a(y0.c().plus(JobKt__JobKt.b(null, 1, null)));
        }
        this.f44428a.getLayoutParams().height = com.blankj.utilcode.util.d.c();
        this.f44431d.getLayoutParams().height = ((y.e() * 9) / 16) + a0.a(44.0f);
        if (this.f44433f == null) {
            cy.b bVar = cy.b.f60940a;
            Context context = this.itemView.getContext();
            Intrinsics.g(context, "getContext(...)");
            this.f44433f = bVar.a(context, "TrendingNativeBannerScene");
        }
        BannerADDataHelper.f44654a.i(this.f44432e, this.f44433f, bannerData != null ? bannerData.getBiddingAdData() : null);
        if (bannerData == null || (biddingAdData = bannerData.getBiddingAdData()) == null) {
            return;
        }
        this.f44429b.getLayoutParams().height = 0;
        jg.c.g(this.f44429b);
        TAdNativeInfo nativeInfo = biddingAdData.getNativeInfo();
        if (nativeInfo != null) {
            l(nativeInfo);
            return;
        }
        AdPlans plans = biddingAdData.getPlans();
        if (plans != null) {
            ViewGroup.LayoutParams layoutParams = this.f44432e.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = -1;
            }
            MbAdImage mbAdImageB = com.transsion.ad.monopoly.plan.b.f42169a.b(plans);
            String averageHueDark = mbAdImageB != null ? mbAdImageB.getAverageHueDark() : null;
            if (averageHueDark != null && StringsKt.c0(averageHueDark, Utils.SEPARATOR, false, 2, null)) {
                this.f44428a.setBackgroundColor(Color.parseColor(averageHueDark));
                this.f44430c.setBackground(j(averageHueDark));
                return;
            }
            int i11 = f44424j;
            this.f44428a.setBackgroundColor(i11);
            View view = this.f44430c;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format(Locale.ROOT, "#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(i11 & 16777215)}, 1));
            Intrinsics.g(str, "format(...)");
            view.setBackground(j(str));
        }
    }

    public final void k() {
        BannerADDataHelper.f44654a.n();
        n0 n0Var = this.f44434g;
        if (n0Var != null) {
            o0.d(n0Var, null, 1, null);
        }
    }
}
