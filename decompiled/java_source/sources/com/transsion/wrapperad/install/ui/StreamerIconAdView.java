package com.transsion.wrapperad.install.ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.icon.BiddingIconAdManager;
import com.transsion.ad.bidding.icon.BiddingWrapperIconBean;
import com.transsion.ad.bidding.icon.BiddingWrapperIconView;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 R2\u00020\u0001:\u0001+B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0018H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\rH\u0002¢\u0006\u0004\b\"\u0010\u001dJ\u0017\u0010%\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#H\u0014¢\u0006\u0004\b%\u0010&J\u0017\u0010'\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b'\u0010\u001aJ\r\u0010(\u001a\u00020\u000f¢\u0006\u0004\b(\u0010\u0017J\r\u0010)\u001a\u00020\u000f¢\u0006\u0004\b)\u0010\u0017R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00103\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010,R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u0010:\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u00109R\u0014\u0010=\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010<R\u0016\u0010@\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010C\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010BR\u0014\u0010E\u001a\u00020\n8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\"\u0010DR\u001b\u0010I\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010F\u001a\u0004\bG\u0010HR\u001b\u0010M\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010F\u001a\u0004\bK\u0010LR\u0014\u0010Q\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010P¨\u0006S"}, d2 = {"Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "getClassTag", "()Ljava/lang/String;", "", "wasShown", "", "h", "(Z)V", "Landroidx/appcompat/app/AppCompatActivity;", "activity", "n", "(Landroidx/appcompat/app/AppCompatActivity;)V", "e", "()V", "Landroid/app/Activity;", "j", "(Landroid/app/Activity;)V", "isAutoClose", "f", "(Landroid/app/Activity;Z)V", "widthPX", "o", "(I)V", "autoClose", "i", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onActivityResume", "onActivityPause", "onDestroy", "Landroid/view/View;", "a", "Landroid/view/View;", "adView", "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;", "iconView", "c", "closeView", "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;", "wrapperIconBean", "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "adManager", "Lfy/c;", "Lfy/c;", "viewBinderProvider", "g", "Z", "isShowingNotified", "Lkotlinx/coroutines/t1;", "Lkotlinx/coroutines/t1;", "countDownJob", "Ljava/lang/String;", "sceneId", "Lkotlin/Lazy;", "getShowClose", "()Z", "showClose", CampaignEx.JSON_KEY_AD_K, "getCountDownSeconds", "()I", "countDownSeconds", "Ldi/a;", "l", "Ldi/a;", "adListener", "Companion", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class StreamerIconAdView extends FrameLayout {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static long f58183m;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private View adView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private BiddingWrapperIconView iconView;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private View closeView;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private BiddingWrapperIconBean wrapperIconBean;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final BiddingIconAdManager adManager;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final fy.c viewBinderProvider;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean isShowingNotified;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private t1 countDownJob;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final String sceneId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy showClose;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy countDownSeconds;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final di.a adListener;

    public static final class b extends di.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Context f58197e;

        b(Context context) {
            this.f58197e = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit y(StreamerIconAdView streamerIconAdView) {
            lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", streamerIconAdView.getClassTag() + " --> 高优抢占，关闭广告", false, 4, null);
            streamerIconAdView.e();
            streamerIconAdView.setVisibility(8);
            streamerIconAdView.isShowingNotified = false;
            ii.b.f65248a.e(streamerIconAdView.sceneId, true);
            return Unit.f67061a;
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", StreamerIconAdView.this.getClassTag() + " --> onWrapperIconReady() --> 数据为空，加载失败", false, 4, null);
            StreamerIconAdView.this.h(false);
        }

        @Override // di.a
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.m(biddingIntermediateMaterialBean);
            StreamerIconAdView.this.wrapperIconBean = null;
            StreamerIconAdView.this.h(true);
            lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", StreamerIconAdView.this.getClassTag() + " --> onBiddingWrapperAdClose() --> 广告关闭", false, 4, null);
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            StreamerIconAdView.this.wrapperIconBean = null;
            StreamerIconAdView.this.h(false);
            lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", StreamerIconAdView.this.getClassTag() + " --> onBiddingWrapperAdShowError() --> 广告展示失败", false, 4, null);
        }

        @Override // di.a
        public void w(List list) {
            StreamerIconAdView streamerIconAdView;
            BiddingWrapperIconView biddingWrapperIconView;
            super.w(list);
            if (list == null || !(!list.isEmpty())) {
                lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", StreamerIconAdView.this.getClassTag() + " --> onWrapperIconReady() --> 数据为空，加载失败", false, 4, null);
                StreamerIconAdView.this.h(false);
                return;
            }
            ii.b bVar = ii.b.f65248a;
            if (bVar.a(StreamerIconAdView.this.sceneId)) {
                StreamerIconAdView.this.setVisibility(0);
                StreamerIconAdView.this.wrapperIconBean = (BiddingWrapperIconBean) list.get(0);
                BiddingWrapperIconBean biddingWrapperIconBean = StreamerIconAdView.this.wrapperIconBean;
                if (biddingWrapperIconBean != null && (biddingWrapperIconView = (streamerIconAdView = StreamerIconAdView.this).iconView) != null) {
                    biddingWrapperIconView.showData(streamerIconAdView.adManager, biddingWrapperIconBean, streamerIconAdView.viewBinderProvider);
                }
                lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", StreamerIconAdView.this.getClassTag() + " --> onWrapperIconReady() --> 广告加载成功", false, 4, null);
                StreamerIconAdView.f58183m = System.currentTimeMillis();
                StreamerIconAdView.this.isShowingNotified = true;
                String str = StreamerIconAdView.this.sceneId;
                final StreamerIconAdView streamerIconAdView2 = StreamerIconAdView.this;
                bVar.f(str, new Function0() { // from class: com.transsion.wrapperad.install.ui.k
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return StreamerIconAdView.b.y(streamerIconAdView2);
                    }
                });
                Context context = this.f58197e;
                AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
                if (appCompatActivity != null) {
                    StreamerIconAdView.this.n(appCompatActivity);
                }
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public StreamerIconAdView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public StreamerIconAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public StreamerIconAdView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.adManager = new BiddingIconAdManager();
        this.viewBinderProvider = new fy.c(context);
        this.sceneId = "StreamerIconAdScene";
        this.showClose = LazyKt.b(new Function0() { // from class: com.transsion.wrapperad.install.ui.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(StreamerIconAdView.m(this.f58209a));
            }
        });
        this.countDownSeconds = LazyKt.b(new Function0() { // from class: com.transsion.wrapperad.install.ui.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(StreamerIconAdView.g(this.f58210a));
            }
        });
        this.adListener = new b(context);
    }

    public /* synthetic */ StreamerIconAdView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        t1 t1Var = this.countDownJob;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.countDownJob = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(Activity activity, boolean isAutoClose) {
        e();
        setVisibility(8);
        this.adManager.I();
        h(true);
        i(activity, isAutoClose);
        this.wrapperIconBean = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int g(StreamerIconAdView streamerIconAdView) {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b(streamerIconAdView.sceneId);
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("delayClose")) == null) {
            return 15;
        }
        return jsonElement.getAsInt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClassTag() {
        String simpleName = StreamerIconAdView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getCountDownSeconds() {
        return ((Number) this.countDownSeconds.getValue()).intValue();
    }

    private final boolean getShowClose() {
        return ((Boolean) this.showClose.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(boolean wasShown) {
        if (this.isShowingNotified) {
            this.isShowingNotified = false;
            ii.b.f65248a.e(this.sceneId, wasShown);
        }
        setVisibility(8);
    }

    private final void i(Activity activity, boolean autoClose) {
        Pair pair;
        String packageName;
        Pair pair2;
        String packageName2;
        BiddingWrapperIconBean biddingWrapperIconBean = this.wrapperIconBean;
        if (biddingWrapperIconBean != null) {
            int type = biddingWrapperIconBean.getType();
            String str = "";
            if (type != 1) {
                if (type != 2) {
                    pair2 = new Pair("", "");
                } else {
                    TAdNativeInfo nativeInfo = biddingWrapperIconBean.getNativeInfo();
                    if (nativeInfo != null && (packageName2 = nativeInfo.getPackageName()) != null) {
                        str = packageName2;
                    }
                    pair = new Pair("hisavana", str);
                }
                String simpleName = activity.getClass().getSimpleName();
                HashMap map = new HashMap();
                map.put("dialog_name", this.sceneId);
                map.put("page_name", simpleName);
                map.put("ad_source", pair2.getFirst());
                map.put("package_name", pair2.getSecond());
                map.put("is_auto_close", String.valueOf(autoClose));
                ri.c.f74535a.c(this.sceneId, map, 106, 6);
            }
            RecommendInfo recommendInfo = biddingWrapperIconBean.getRecommendInfo();
            if (recommendInfo != null && (packageName = recommendInfo.getPackageName()) != null) {
                str = packageName;
            }
            pair = new Pair("ps", str);
            pair2 = pair;
            String simpleName2 = activity.getClass().getSimpleName();
            HashMap map2 = new HashMap();
            map2.put("dialog_name", this.sceneId);
            map2.put("page_name", simpleName2);
            map2.put("ad_source", pair2.getFirst());
            map2.put("package_name", pair2.getSecond());
            map2.put("is_auto_close", String.valueOf(autoClose));
            ri.c.f74535a.c(this.sceneId, map2, 106, 6);
        }
    }

    private final void j(final Activity activity) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            ii.b.d(ii.b.f65248a, this.sceneId, false, 2, null);
            return;
        }
        if (this.adView == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.streamer_icon_ad_container_layout, (ViewGroup) null);
            this.adView = viewInflate;
            addView(viewInflate);
            View view = this.adView;
            this.iconView = view != null ? (BiddingWrapperIconView) view.findViewById(R$id.iconView) : null;
            View view2 = this.adView;
            View viewFindViewById = view2 != null ? view2.findViewById(R$id.ivClose) : null;
            this.closeView = viewFindViewById;
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(getShowClose() ? 0 : 8);
            }
            View view3 = this.closeView;
            if (view3 != null) {
                view3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.wrapperad.install.ui.i
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        StreamerIconAdView.k(this.f58211a, activity, view4);
                    }
                });
            }
        }
        BiddingWrapperIconBean biddingWrapperIconBean = this.wrapperIconBean;
        if (biddingWrapperIconBean == null) {
            lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", getClassTag() + " --> showAdView() --> 开始加载广告", false, 4, null);
            Context context = getContext();
            AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity == null || (lifecycleCoroutineScopeA = v.a(appCompatActivity)) == null) {
                return;
            }
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new StreamerIconAdView$showAdView$4(this, null), 3, null);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", getClassTag() + " --> showAdView() --> 复用缓存广告，跳过请求", false, 4, null);
        BiddingWrapperIconView biddingWrapperIconView = this.iconView;
        if (biddingWrapperIconView != null) {
            biddingWrapperIconView.showData(this.adManager, biddingWrapperIconBean, this.viewBinderProvider);
        }
        f58183m = System.currentTimeMillis();
        this.isShowingNotified = true;
        ii.b.f65248a.f(this.sceneId, new Function0() { // from class: com.transsion.wrapperad.install.ui.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return StreamerIconAdView.l(this.f58213a);
            }
        });
        Context context2 = getContext();
        AppCompatActivity appCompatActivity2 = context2 instanceof AppCompatActivity ? (AppCompatActivity) context2 : null;
        if (appCompatActivity2 != null) {
            n(appCompatActivity2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(StreamerIconAdView streamerIconAdView, Activity activity, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", streamerIconAdView.getClassTag() + " --> closeView clicked --> 用户手动关闭广告", false, 4, null);
        streamerIconAdView.e();
        streamerIconAdView.f(activity, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(StreamerIconAdView streamerIconAdView) {
        lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", streamerIconAdView.getClassTag() + " --> 高优抢占，关闭广告", false, 4, null);
        streamerIconAdView.e();
        streamerIconAdView.setVisibility(8);
        streamerIconAdView.isShowingNotified = false;
        ii.b.f65248a.e(streamerIconAdView.sceneId, true);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean m(StreamerIconAdView streamerIconAdView) {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b(streamerIconAdView.sceneId);
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("showClose")) == null) {
            return true;
        }
        return jsonElement.getAsBoolean();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(AppCompatActivity activity) {
        if (getCountDownSeconds() <= 0) {
            return;
        }
        t1 t1Var = this.countDownJob;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.countDownJob = kotlinx.coroutines.k.d(v.a(activity), null, null, new StreamerIconAdView$startCountDownIfNeeded$1(this, activity, null), 3, null);
    }

    private final void o(int widthPX) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.width = widthPX;
        setLayoutParams(layoutParams);
    }

    public final void onActivityPause() {
        lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", getClassTag() + " --> onActivityPause", false, 4, null);
        if (getVisibility() == 0) {
            e();
            setVisibility(8);
            h(true);
        }
    }

    public final void onActivityResume(Activity activity) {
        lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", getClassTag() + " --> onActivityResume", false, 4, null);
        setVisibility(8);
        if (ii.b.f65248a.a(this.sceneId)) {
            j(activity);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        int i11 = newConfig.orientation;
        if (i11 == 1) {
            lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", getClassTag() + " --> onConfigurationChanged() --> 竖屏 模式", false, 4, null);
            o(y.e() - (a0.a(12.0f) * 2));
            return;
        }
        if (i11 != 2) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", getClassTag() + " --> onConfigurationChanged() --> 横屏 模式", false, 4, null);
        o(a0.a(336.0f));
    }

    public final void onDestroy() {
        this.adManager.I();
    }
}
