package com.cloud.hisavana.sdk;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.api.view.AdBadgeView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.AdDisclaimerView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.common.activity.HisavanaSplashActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.widget.CountTimeView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class i1 extends G {
    protected int A;
    private boolean B;
    private boolean C;
    private Float D;
    private final Runnable E;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f22500i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CountTimeView f22501j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ViewGroup f22502k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f22503l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private u2 f22504m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f22505n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected volatile AdsDTO f22506o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f22507p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Handler f22508q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f22509r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f22510s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CopyOnWriteArrayList f22511t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AdChoicesView f22512u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private LinearLayout f22513v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private StoreMarkView f22514w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private AdDisclaimerView f22515x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private f7.d f22516y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private PopupWindow f22517z;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e4.b().d("TranSplash", "closeAdRunnable all time is end");
            i1.this.B0();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (i1.this.f22501j != null) {
                i1.this.f22501j.setVisibility(0);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            N0.k(com.cloud.sdk.commonutil.util.e.a(), i1.this.f22506o);
            if (i1.this.f22506o == null || i1.this.f22506o.isOfflineAd() || i1.this.f21504e == null) {
                return;
            }
            i1.this.f21504e.m();
            i1.this.f21504e.k(i1.this.f22506o);
        }
    }

    class d implements CountTimeView.b {
        d() {
        }

        @Override // com.cloud.hisavana.sdk.common.widget.CountTimeView.b
        public void onClick() {
            if (i1.this.f22501j != null) {
                i1.this.f22501j.cancel();
            }
            if (i1.this.f21504e != null) {
                i1.this.f21504e.B();
            }
            i1.this.D0();
            AthenaTracker.e0(i1.this.f22506o);
        }

        @Override // com.cloud.hisavana.sdk.common.widget.CountTimeView.b
        public void onFinish() {
            e4.b().d("TranSplash", "splash ad onTimeEnd");
            if (i1.this.f21504e != null) {
                i1.this.f21504e.C();
                i1.this.D0();
            }
        }

        @Override // com.cloud.hisavana.sdk.common.widget.CountTimeView.b
        public void onStart() {
        }
    }

    public class e extends f4 {
        public e(AdsDTO adsDTO) {
            super(adsDTO);
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void a(C0993p c0993p) {
            e4.b().d("TranSplash", "onPlayerError code=" + c0993p.a() + " msg=" + c0993p.b());
            super.a(c0993p);
            if (i1.this.f21504e != null) {
                i1.this.D0();
                i1.this.f21504e.t(i1.this.V(c0993p), i1.this);
            }
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void e() {
            super.e();
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void f(boolean z10) {
            super.f(z10);
            e4.b().d("TranSplash", "onCompanion");
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void onIsPlayingChanged(boolean z10) {
            e4.b().d("TranSplash", "onIsPlayingChanged isPLaying " + z10);
            super.onIsPlayingChanged(z10);
        }
    }

    public i1(q3 q3Var) {
        super(q3Var);
        this.f22504m = null;
        this.f22505n = null;
        this.f22509r = 10000L;
        this.f22511t = new CopyOnWriteArrayList();
        this.B = false;
        this.C = false;
        this.E = new a();
        this.f22500i = DeviceUtil.o();
    }

    private void A0() {
        VastData videoInfo;
        Integer duration;
        if (this.f22502k == null || this.f22505n == null) {
            return;
        }
        this.f22501j = new CountTimeView(this.f22505n);
        Integer showTime = this.f22506o.getShowTime();
        if (this.f22506o.isVastTypeAd() && (videoInfo = this.f22506o.getVideoInfo()) != null && (duration = videoInfo.getDuration()) != null && duration.intValue() > 1 && duration.intValue() <= 5) {
            showTime = Integer.valueOf(duration.intValue() - 1);
        }
        this.f22501j.setStartTime(showTime.intValue());
        this.f22501j.setCountDownTimerListener(new d());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f22501j.getLayoutDirection() == 0) {
            layoutParams.setMarginEnd(this.f22505n.getResources().getDimensionPixelOffset(R$dimen.ad_mark_margin_start));
        } else {
            layoutParams.setMarginStart(this.f22505n.getResources().getDimensionPixelOffset(R$dimen.ad_mark_margin_start));
        }
        layoutParams.topMargin = this.f22505n.getResources().getDimensionPixelOffset(R$dimen.ad_mark_margin_top);
        int dimensionPixelSize = this.f22505n.getResources().getDimensionPixelSize(R$dimen.ad_skip_view_width);
        int dimensionPixelOffset = this.f22505n.getResources().getDimensionPixelOffset(R$dimen.ad_skip_view_height);
        layoutParams.width = dimensionPixelSize;
        layoutParams.height = dimensionPixelOffset;
        layoutParams.addRule(21);
        ViewGroup viewGroup = this.f22502k;
        if (viewGroup != null) {
            viewGroup.addView(this.f22501j, layoutParams);
        }
        this.f22501j.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N() {
        if (this.C) {
            return;
        }
        try {
            com.cloud.sdk.commonutil.util.k.a(this.f22512u);
            u2 u2Var = this.f22504m;
            if (u2Var != null) {
                u2Var.b();
            }
            CountTimeView countTimeView = this.f22501j;
            if (countTimeView != null) {
                countTimeView.cancel();
                this.f22501j.setCountDownTimerListener(null);
                this.f22501j = null;
            }
            ViewGroup viewGroup = this.f22502k;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
            this.f22502k = null;
            this.f22512u = null;
            this.f22515x = null;
            LinearLayout linearLayout = this.f22513v;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
            this.f22513v = null;
            StoreMarkView storeMarkView = this.f22514w;
            if (storeMarkView != null) {
                storeMarkView.removeAllViews();
            }
            this.f22514w = null;
            View view = this.f22503l;
            if (view != null && (view.getParent() instanceof ViewGroup)) {
                ((ViewGroup) this.f22503l.getParent()).removeView(this.f22503l);
            }
            this.f22503l = null;
            S();
            e4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "TranSplash，destroy");
            D0();
            f7.d dVar = this.f22516y;
            if (dVar != null) {
                dVar.f();
                this.f22516y = null;
            }
            PopupWindow popupWindow = this.f22517z;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.f22517z = null;
            }
            this.f22505n = null;
            this.C = true;
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TaErrorCode V(C0993p c0993p) {
        switch (c0993p.a()) {
            case TaErrorCode.CODE_SHOW_VIDEO_PLAYER_IO_ERROR /* 6025 */:
                return TaErrorCode.ERROR_SHOW_VIDEO_PLAYER_IO_ERROR;
            case TaErrorCode.CODE_SHOW_VIDEO_PLAYER_DECODE_ERROR /* 6026 */:
                return TaErrorCode.ERROR_SHOW_VIDEO_PLAYER_DECODE_ERROR;
            case TaErrorCode.CODE_SHOW_VIDEO_PLAYER_DRM_ERROR /* 6027 */:
                return TaErrorCode.ERROR_SHOW_VIDEO_PLAYER_DRM_ERROR;
            case TaErrorCode.CODE_SHOW_VIDEO_PLAYER_UNKNOWN_ERROR /* 6028 */:
            default:
                return TaErrorCode.ERROR_SHOW_VIDEO_PLAYER_UNKNOWN_ERROR;
            case TaErrorCode.CODE_SHOW_VIDEO_PLAYER_UNAVAILABLE /* 6029 */:
                return TaErrorCode.ERROR_SHOW_VIDEO_PLAYER_UNAVAILABLE;
        }
    }

    private void X(long j11) {
        this.f22510s = System.currentTimeMillis();
        if (this.f22508q == null) {
            this.f22508q = new Handler(Looper.getMainLooper());
        }
        this.f22508q.postDelayed(this.E, j11);
        e4.b().d("TranSplash", "closeAdDelay " + j11);
    }

    private void Y(Context context) {
        this.f22504m = new u2(this);
        this.f22505n = context;
    }

    private void Z(View view) {
        if (this.f22502k == null) {
            e0(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            e4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "bg view is null");
            return;
        }
        if (this.f22506o == null) {
            e0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            e4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "ad data is null");
            return;
        }
        e4.b().d("TranSplash", "fillSplash renderView " + view);
        this.f22506o.setMaterialStyle("K01");
        this.f22502k.addView(view, new RelativeLayout.LayoutParams(-1, -1));
        b0(null);
        y0();
    }

    private void a0(View view, String str) {
        if (this.f22502k == null) {
            e0(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            e4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "bg view is null");
            return;
        }
        if (this.f22506o == null) {
            e0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            e4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "ad data is null");
            return;
        }
        e4.b().d("TranSplash", "fillSplash renderView " + view);
        try {
            this.f22506o.setMaterialStyle("K02");
            View viewInflate = LayoutInflater.from(this.f22502k.getContext()).inflate(R$layout.splash_style_k02_layout, this.f22502k, false);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f22505n.getResources().getDimensionPixelOffset(R$dimen.hisavana_ad_dimen_180), this.f22505n.getResources().getDimensionPixelOffset(R$dimen.hisavana_ad_dimen_400));
            ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(R$id.iv_main_image);
            viewGroup.addView(view, layoutParams);
            b0(viewGroup);
            NativeBean nativeObject = this.f22506o.getNativeObject();
            ImageView imageView = (ImageView) viewInflate.findViewById(R$id.ivIcon);
            if (this.f22506o.getSource() == 4) {
                DownLoadRequest.n(this.f22506o.getLogoUrl(), this.f22506o, null, imageView);
            } else if (nativeObject != null) {
                DownLoadRequest.o(nativeObject.getLogoUrl(), this.f22506o, 1, null, imageView);
            }
            TextView textView = (TextView) viewInflate.findViewById(R$id.tvName);
            TextView textView2 = (TextView) viewInflate.findViewById(R$id.tvDescription);
            TextView textView3 = (TextView) viewInflate.findViewById(R$id.tvBtn);
            if (nativeObject != null) {
                textView.setText(nativeObject.getTitleTxt());
                textView2.setText(str + " · " + nativeObject.getDescriptionTxt());
                textView3.setText(nativeObject.getButtonTxt(this.f22506o.getInstallApk()));
            }
            if (com.cloud.hisavana.sdk.common.util.i0.a(this.f22506o)) {
                StoreMarkView storeMarkView = (StoreMarkView) viewInflate.findViewById(R$id.ps_mark_view);
                this.f22514w = storeMarkView;
                if (storeMarkView != null) {
                    storeMarkView.setVisibility(0);
                    this.f22514w.setTextSize(8.0f);
                    this.f22514w.setTextColor(-8882056);
                    this.f22514w.attachInfo(this.f22506o);
                }
            }
            this.f22502k.addView(viewInflate);
        } catch (Throwable unused) {
        }
    }

    private void b0(ViewGroup viewGroup) {
        if (this.f22506o == null || this.f22502k == null || this.f22505n == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f22502k.getLayoutDirection() == 0) {
            layoutParams.setMarginEnd(this.f22505n.getResources().getDimensionPixelOffset(R$dimen.dimens_16));
        } else {
            layoutParams.setMarginStart(this.f22505n.getResources().getDimensionPixelOffset(R$dimen.dimens_16));
        }
        if (this.f22503l == null) {
            layoutParams.bottomMargin = this.f22505n.getResources().getDimensionPixelOffset(R$dimen.dimens_82);
        } else {
            layoutParams.bottomMargin = this.f22505n.getResources().getDimensionPixelOffset(R$dimen.dimens_48);
        }
        layoutParams.addRule(12);
        layoutParams.addRule(21);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.f22505n).inflate(R$layout.hs_include_ad_flag, this.f22502k, false);
        this.f22513v = linearLayout;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setId(View.generateViewId());
        this.f22512u = (AdChoicesView) this.f22513v.findViewById(R$id.ad_choices_view);
        AdBadgeView adBadgeView = (AdBadgeView) this.f22513v.findViewById(R$id.ad_badge_view);
        AdCloseView adCloseView = (AdCloseView) this.f22513v.findViewById(R$id.ad_close_view);
        d0(this.f22512u);
        if (adBadgeView != null) {
            adBadgeView.setDisplayStyle(this.f22506o.getDisplayRule(), com.cloud.hisavana.sdk.common.util.f0.c(this.f22506o));
        }
        if (adCloseView != null) {
            adCloseView.setDisplayStyle(this.f22506o.getDisplayRule(), AdCloseView.CloseImageType.EXPAND);
            t2.p().f(this.f22505n, adCloseView, this, this.f22506o);
        }
        if (viewGroup == null) {
            this.f22502k.addView(this.f22513v, layoutParams);
            return;
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(12);
        layoutParams2.addRule(20);
        this.f22513v.setLayoutParams(layoutParams2);
        viewGroup.addView(this.f22513v);
    }

    private void d0(AdChoicesView adChoicesView) {
        if (adChoicesView == null) {
            return;
        }
        if (this.f22506o != null) {
            this.f22506o.setACReady(Boolean.TRUE);
        }
        if (this.f22506o.getSource() == 4) {
            DownLoadRequest.n(this.f22506o.getAdChoiceImageUrl(), this.f22506o, null, adChoicesView);
        } else {
            DownLoadRequest.o(this.f22506o.getAdChoiceImageUrl(), this.f22506o, 3, null, adChoicesView);
        }
        adChoicesView.setOnClickListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0(String str, String str2, String str3) {
        f7.d dVarI = new f7.d(this.f22502k).j(str).h(str2).i(str3, null);
        this.f22516y = dVarI;
        dVarI.k();
    }

    private void x0() {
        ViewParent parent;
        int i11;
        if (this.f22502k == null || this.f22503l == null || this.f22506o.isInteractiveAd() || (parent = this.f22502k.getParent()) == null) {
            return;
        }
        int iJ = i7.c.j();
        if (iJ > 0) {
            Float f11 = this.D;
            float fFloatValue = f11 != null ? f11.floatValue() : 0.14f;
            e4.b().i("TranSplash", "ssp sdk addLogoLayout heightRatio = " + fFloatValue);
            i11 = (int) (((float) iJ) * fFloatValue);
        } else {
            i11 = 0;
        }
        if (i11 == 0) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, 0, 0, i11);
        this.f22502k.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, i11);
        layoutParams2.addRule(12);
        if (this.f22503l.getParent() != null) {
            ((ViewGroup) this.f22503l.getParent()).removeView(this.f22503l);
        }
        ((ViewGroup) parent).addView(this.f22503l, layoutParams2);
    }

    private void y0() {
        if (this.f22502k == null || !com.cloud.hisavana.sdk.common.util.i0.a(this.f22506o) || this.f22506o == null) {
            return;
        }
        StoreMarkView storeMarkView = new StoreMarkView(this.f22505n);
        this.f22514w = storeMarkView;
        storeMarkView.setTextSize(8.0f);
        this.f22514w.setTextColor(-1);
        this.f22514w.setVisibility(0);
        this.f22514w.attachInfo(this.f22506o);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = this.f22505n.getResources().getDimensionPixelOffset(R$dimen.dimens_16);
        layoutParams.addRule(20);
        LinearLayout linearLayout = this.f22513v;
        if (linearLayout == null || linearLayout.getParent() == null) {
            layoutParams.addRule(12);
        } else {
            layoutParams.addRule(8, this.f22513v.getId());
        }
        this.f22502k.addView(this.f22514w, layoutParams);
    }

    private void z0() {
        if (this.f22506o == null || this.f22506o.getDisplayRule() != Constants.AdDisplayRule.RU || this.f22502k == null || this.f22505n == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f22505n.getResources().getDimensionPixelOffset(R$dimen.ad_disclaimer_height));
        layoutParams.addRule(12);
        AdDisclaimerView adDisclaimerView = new AdDisclaimerView(this.f22505n);
        this.f22502k.addView(adDisclaimerView, layoutParams);
        adDisclaimerView.setDisplayStyle(this.f22506o.getDisplayRule(), com.cloud.hisavana.sdk.common.util.f0.f(this.f22506o));
        adDisclaimerView.updateHeightWith(com.cloud.hisavana.sdk.common.util.f0.e(this.f22506o), this.f22502k.getHeight());
        adDisclaimerView.setListener(new AdDisclaimerView.b() { // from class: com.cloud.hisavana.sdk.a4
            @Override // com.cloud.hisavana.sdk.api.view.AdDisclaimerView.b
            public final void a(String str, String str2, String str3) {
                this.f21566a.h0(str, str2, str3);
            }
        });
        this.f22515x = adDisclaimerView;
    }

    public void B0() {
        e4.b().d("TranSplash", "splash ad close");
        S();
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.p(this.f22506o);
        }
        D0();
    }

    public void C0() {
        X(this.f22509r);
    }

    public void D0() {
        e4.b().d("TranSplash", "closeSplashPage");
        Context context = this.f22505n;
        if (context instanceof HisavanaSplashActivity) {
            if (((HisavanaSplashActivity) context).isFinishing() || ((HisavanaSplashActivity) this.f22505n).isDestroyed()) {
                e4.b().d("TranSplash", "closeSplashPage activity is finishing or destroyed");
            } else {
                ((HisavanaSplashActivity) this.f22505n).finish();
            }
        }
        r4.b().d(this.f22500i);
    }

    public Context H() {
        return this.f22505n;
    }

    public void I() {
        u2 u2Var = this.f22504m;
        if (u2Var != null) {
            u2Var.z(this.f22506o);
        }
    }

    public CountTimeView J() {
        return this.f22501j;
    }

    public ViewGroup K() {
        return this.f22502k;
    }

    public boolean L() {
        if (this.f22506o != null) {
            return this.f22506o.isJumpToHalfscreen();
        }
        return false;
    }

    public boolean M() {
        return this.f22507p;
    }

    public void O() {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.m();
            this.f21504e.k(this.f22506o);
        }
    }

    public void P() {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.p(this.f22506o);
        }
    }

    void Q() {
        f();
        k(true);
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    public void R() {
        u2 u2Var = this.f22504m;
        if (u2Var != null) {
            u2Var.D(this.f22506o);
        }
    }

    public void S() {
        this.f22509r -= System.currentTimeMillis() - this.f22510s;
        e4.b().d("TranSplash", "removeCloseMsg remainForceCloseAdTime " + this.f22509r);
        if (this.f22509r <= 0) {
            this.f22509r = 10000L;
        }
        Handler handler = this.f22508q;
        if (handler != null) {
            handler.removeCallbacks(this.E);
        }
    }

    public AdsDTO T() {
        return this.f22506o;
    }

    public void c0(PopupWindow popupWindow) {
        this.f22517z = popupWindow;
    }

    @Override // com.cloud.hisavana.sdk.G, com.cloud.hisavana.sdk.api.listener.f
    public void d(List list, Bundle bundle) {
        this.f22506o = (list == null || list.isEmpty()) ? null : (AdsDTO) list.get(0);
        super.d(list, bundle);
    }

    public void e0(TaErrorCode taErrorCode) {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.t(taErrorCode, this);
        }
    }

    public void f0(TaErrorCode taErrorCode, Bundle bundle) {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.u(taErrorCode, this, bundle);
        }
    }

    public void g0(Float f11) {
        if (f11 == null) {
            return;
        }
        if (f11.floatValue() < 0.1f || f11.floatValue() > 0.2f) {
            this.D = Float.valueOf(0.2f);
        } else {
            this.D = f11;
        }
    }

    public void j0(Context context) {
        Preconditions.a();
        Y(context);
        if (this.f22505n == null || this.f22506o == null) {
            e4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "contex is null or mAdBean is null");
            D0();
            e0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            return;
        }
        this.A = com.cloud.hisavana.sdk.common.util.b.f22148a.b(this.f22506o);
        if (this.f22504m == null) {
            this.f22504m = new u2(this);
        }
        this.f22504m.k(new e(this.f22506o));
        this.f22504m.c(this.A);
        if (r() == 0 && !z()) {
            this.f22504m.A(this.f22506o);
            X(10000L);
        } else {
            e4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "Ad is not ready");
            D0();
            e0(TaErrorCode.ERROR_SHOW_INNER_INVALID);
        }
    }

    public void k0(View view) {
        this.f22503l = view;
    }

    public void l0(ViewGroup viewGroup) {
        this.f22502k = viewGroup;
    }

    @Override // com.cloud.hisavana.sdk.G
    public void m() {
        super.m();
        try {
            HSScopeHelper.f23167a.h(new Runnable() { // from class: com.cloud.hisavana.sdk.b4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21689a.N();
                }
            });
        } catch (Throwable unused) {
        }
    }

    void m0(boolean z10) {
        e4.b().d("TranSplash", "fillSplash");
        if (this.f22502k == null) {
            e0(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            e4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "bg view is null");
            return;
        }
        x0();
        u2 u2Var = this.f22504m;
        View viewB = u2Var != null ? u2Var.B(this.f22506o) : null;
        if (viewB == null) {
            e0(TaErrorCode.ERROR_SHOW_SPLASH_VIEW_NULL);
            e4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "Splash view is null");
            return;
        }
        if (viewB.getParent() != null) {
            ((ViewGroup) viewB.getParent()).removeView(viewB);
        }
        String strK = com.cloud.hisavana.sdk.common.util.r.f22193a.k(this.f22506o);
        if (TextUtils.isEmpty(strK)) {
            Z(viewB);
        } else {
            a0(viewB, strK);
        }
        z0();
        A0();
        this.f22502k.postDelayed(new b(), 1000L);
        if (z10) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f22515x);
            arrayList.add(this.f22513v);
            arrayList.add(this.f22514w);
            arrayList.add(this.f22501j);
            m0.a(v(), this.f22506o, this.f22502k, arrayList);
        }
    }

    public void o0(Context context) {
        Preconditions.a();
        Y(context);
        if (this.f22505n == null || this.f22506o == null) {
            e4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "contex is null or mAdBean is null");
            D0();
            e0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
        } else if (r() != 0 || z()) {
            D0();
            e0(TaErrorCode.ERROR_SHOW_INNER_INVALID);
        } else {
            r4.b().c(this.f22500i, this);
            HisavanaSplashActivity.T(this.f22505n, this.f22500i, this.B);
        }
    }

    public void p0(boolean z10) {
        this.B = z10;
    }
}
