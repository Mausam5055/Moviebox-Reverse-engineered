package com.cloud.hisavana.sdk.common.activity;

import android.R;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.N0;
import com.cloud.hisavana.sdk.P;
import com.cloud.hisavana.sdk.R$dimen;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.R$style;
import com.cloud.hisavana.sdk.Z;
import com.cloud.hisavana.sdk.api.view.AdBadgeView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.AdDisclaimerView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.i0;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.TadmWebView;
import com.cloud.hisavana.sdk.common.widget.video.InterstitialAdVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.f4;
import com.cloud.hisavana.sdk.m0;
import com.cloud.hisavana.sdk.s3;
import com.cloud.hisavana.sdk.s4;
import com.cloud.hisavana.sdk.t2;
import com.cloud.hisavana.sdk.v2;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Random;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public class TAdInterstitialActivity extends Activity {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static WeakReference f21801c0;
    private long A;
    private int B;
    private boolean C;
    private com.cloud.hisavana.sdk.r E;
    private com.cloud.hisavana.sdk.common.util.v F;
    private e7.e G;
    private e7.d Q;
    private int R;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TadmWebView f21802a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private ObjectAnimator f21803a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TranCircleImageView f21804b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private Runnable f21805b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdChoicesView f21806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdBadgeView f21807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdCloseView f21808e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private StoreMarkView f21809f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f21810g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ViewGroup f21811h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f21812i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f21813j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f21814k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private InteractiveWebView f21815l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ViewGroup f21816m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ImageView f21817n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private InterstitialAdVideoView f21818o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private AdDisclaimerView f21819p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private AdsDTO f21820q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f21821r = "";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f21822s = 0.0f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f21823t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f21824u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f21825v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f21826w = -1.0f;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f21827x = -1.0f;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f21828y = -1.0f;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f21829z = -1.0f;
    private final l D = new l(this);
    private int H = -1;
    private boolean I = false;
    private boolean J = false;
    private boolean K = false;
    private int L = 0;
    private int M = 1;
    private boolean N = false;
    private int O = 0;
    boolean P = false;
    private boolean S = false;
    private boolean T = false;
    private boolean U = false;
    private boolean V = false;
    private int W = -1;
    private int X = -1;
    private int Y = -1;
    private int Z = -1;

    class a implements com.cloud.hisavana.sdk.common.util.v.a {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.common.util.v.a
        public void a() {
        }

        @Override // com.cloud.hisavana.sdk.common.util.v.a
        public void b() {
        }

        @Override // com.cloud.hisavana.sdk.common.util.v.a
        public void c() {
            TAdInterstitialActivity.this.F.dismiss();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f21831a;

        b(String str) {
            this.f21831a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!TextUtils.equals(this.f21831a, "I01")) {
                TAdInterstitialActivity.this.i0(view, false);
            } else if (!TAdInterstitialActivity.this.S) {
                TAdInterstitialActivity.this.U(view, false, true);
            } else {
                TAdInterstitialActivity.this.T = true;
                com.cloud.hisavana.sdk.common.util.r.f22193a.s(TAdInterstitialActivity.this.f21802a);
            }
        }
    }

    class c extends e7.e {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ProgressBar f21833f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ TextView f21834g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ View f21835h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ View f21836i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ ImageView f21837j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(long j11, long j12, ProgressBar progressBar, TextView textView, View view, View view2, ImageView imageView) {
            super(j11, j12);
            this.f21833f = progressBar;
            this.f21834g = textView;
            this.f21835h = view;
            this.f21836i = view2;
            this.f21837j = imageView;
        }

        @Override // e7.e
        public void e() {
            TAdInterstitialActivity.this.G.d();
            this.f21835h.setVisibility(0);
            if (this.f21833f != null && TAdInterstitialActivity.this.I) {
                this.f21833f.setVisibility(4);
            } else if (TAdInterstitialActivity.this.f21820q.getMaterialStyle().equals("I01")) {
                this.f21836i.setVisibility(0);
                ImageView imageView = this.f21837j;
                if (imageView != null) {
                    imageView.setImageResource(R$drawable.ad_rewarded_time_rest_done);
                }
                this.f21834g.setText(TAdInterstitialActivity.this.getResources().getString(R$string.hs_download_t01_countdown_tv_done));
            } else {
                this.f21834g.setVisibility(4);
            }
            TAdInterstitialActivity.this.H = 0;
        }

        @Override // e7.e
        public void f(long j11) {
            TAdInterstitialActivity.this.H = (int) Math.ceil(j11 / 1000.0f);
            if (this.f21833f != null && TAdInterstitialActivity.this.I) {
                ProgressBar progressBar = this.f21833f;
                progressBar.setProgress(progressBar.getMax() - TAdInterstitialActivity.this.H);
            } else {
                try {
                    if (TAdInterstitialActivity.this.f21820q.getMaterialStyle().equals("I01")) {
                        this.f21834g.setText(String.format(Locale.getDefault(), TAdInterstitialActivity.this.getResources().getString(R$string.hs_download_t01_countdown_tv), Integer.valueOf(TAdInterstitialActivity.this.H)));
                    } else {
                        this.f21834g.setText(String.valueOf(TAdInterstitialActivity.this.H));
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    class d extends e7.e {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ TextView f21839f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ View f21840g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ TextView f21841h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ View f21842i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(long j11, long j12, TextView textView, View view, TextView textView2, View view2) {
            super(j11, j12);
            this.f21839f = textView;
            this.f21840g = view;
            this.f21841h = textView2;
            this.f21842i = view2;
        }

        @Override // e7.e
        public void e() {
            TAdInterstitialActivity.this.G.d();
            this.f21840g.setEnabled(true);
            this.f21841h.setTextColor(Color.parseColor("#222222"));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f21841h.getLayoutParams();
            layoutParams.setMarginStart(0);
            this.f21841h.setLayoutParams(layoutParams);
            this.f21839f.setVisibility(8);
            this.f21842i.setVisibility(8);
            this.f21840g.requestLayout();
            TAdInterstitialActivity.this.H = 0;
        }

        @Override // e7.e
        public void f(long j11) {
            TAdInterstitialActivity.this.H = (int) Math.ceil(j11 / 1000.0f);
            this.f21839f.setText(String.valueOf(TAdInterstitialActivity.this.H));
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TAdInterstitialActivity.this.r(view, true);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (TAdInterstitialActivity.this.S) {
                    TAdInterstitialActivity.this.T = true;
                    TAdInterstitialActivity.this.U = true;
                    com.cloud.hisavana.sdk.common.util.r.f22193a.s(TAdInterstitialActivity.this.f21802a);
                } else {
                    TAdInterstitialActivity.this.r(view, false);
                }
                if (!TAdInterstitialActivity.this.S || TAdInterstitialActivity.this.V) {
                    TAdInterstitialActivity.this.L0();
                }
            } catch (Throwable unused) {
            }
        }
    }

    class g extends DrawableResponseListener {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(View view) {
            TAdInterstitialActivity.this.i0(view, false);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                TAdInterstitialActivity.this.C(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            }
            TAdInterstitialActivity.this.finish();
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            if (TAdInterstitialActivity.this.f21804b == null || TAdInterstitialActivity.this.f21820q.getMaterialStyle().equals("I01")) {
                return;
            }
            TAdInterstitialActivity.this.f21804b.setOnTouchListener(new m(TAdInterstitialActivity.this, null));
            TAdInterstitialActivity.this.f21804b.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f21903a.j(view);
                }
            });
        }
    }

    class h extends f4 {
        h(AdsDTO adsDTO) {
            super(adsDTO);
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void b() {
            if (!TAdInterstitialActivity.this.f21824u) {
                super.b();
            }
            TAdInterstitialActivity.this.f21824u = true;
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void c(long j11, long j12, int i11) {
            if (TAdInterstitialActivity.this.f21825v) {
                return;
            }
            super.c(j11, j12, i11);
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void onComplete() {
            if (!TAdInterstitialActivity.this.f21825v) {
                super.onComplete();
            }
            TAdInterstitialActivity.this.f21825v = true;
        }

        @Override // com.cloud.hisavana.sdk.f4, com.cloud.hisavana.sdk.q4
        public void onVolumeChanged(float f11) {
            super.onVolumeChanged(f11);
            if (TAdInterstitialActivity.this.f21817n == null) {
                return;
            }
            TAdInterstitialActivity.this.f21822s = f11;
            TAdInterstitialActivity.this.B(f11);
        }
    }

    class i extends DrawableResponseListener {
        i() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(View view) {
            TAdInterstitialActivity.this.i0(view, false);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                TAdInterstitialActivity.this.C(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            }
            TAdInterstitialActivity.this.finish();
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            if (adImage != null && adImage.isAdImageRecycled()) {
                TAdInterstitialActivity.this.C(i11, "bitmap is null");
                TAdInterstitialActivity.this.finish();
            } else {
                if (TAdInterstitialActivity.this.f21804b == null || TAdInterstitialActivity.this.f21820q.getMaterialStyle().equals("I01")) {
                    return;
                }
                TAdInterstitialActivity.this.f21804b.setOnTouchListener(new m(TAdInterstitialActivity.this, null));
                TAdInterstitialActivity.this.f21804b.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.e0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21905a.j(view);
                    }
                });
            }
        }
    }

    class j implements s4 {
        j() {
        }

        @Override // com.cloud.hisavana.sdk.s4
        public void a() {
            TAdInterstitialActivity.this.V = true;
            if (TAdInterstitialActivity.this.U) {
                e4.b().d("TAdInterstitialActivity", "handleThePageClosingProcess closeAd");
                TAdInterstitialActivity.this.L0();
            }
        }

        @Override // com.cloud.hisavana.sdk.s4
        public void a(String str, int i11) {
            try {
                if (TAdInterstitialActivity.this.f21820q != null) {
                    String triggerId = TAdInterstitialActivity.this.f21820q.getTriggerId();
                    String codeSeatId = TAdInterstitialActivity.this.f21820q.getCodeSeatId();
                    Bundle bundle = new Bundle();
                    bundle.putString("s_err_code", i11 + "");
                    bundle.putString("error_url", str);
                    SSPTrackingHelper.f21953a.N(Integer.valueOf(TaErrorCode.ERROR_SHOW_ADM_LOAD_WEB_MATERIAL_ERROR.getErrorCode()), triggerId, codeSeatId, TAdInterstitialActivity.this.f21820q, bundle);
                }
            } catch (Throwable unused) {
            }
            TAdInterstitialActivity.this.L0();
        }

        @Override // com.cloud.hisavana.sdk.s4
        public int b(float f11, float f12, float f13, float f14, boolean z10) {
            if (TAdInterstitialActivity.this.S) {
                TAdInterstitialActivity tAdInterstitialActivity = TAdInterstitialActivity.this;
                tAdInterstitialActivity.D(tAdInterstitialActivity.f21802a, f11, f12, f13, f14);
            } else {
                TAdInterstitialActivity.this.f21826w = f11;
                TAdInterstitialActivity.this.f21827x = f12;
                TAdInterstitialActivity.this.f21828y = f13;
                TAdInterstitialActivity.this.f21829z = f14;
            }
            if (!TAdInterstitialActivity.this.S) {
                TAdInterstitialActivity tAdInterstitialActivity2 = TAdInterstitialActivity.this;
                return tAdInterstitialActivity2.h0(tAdInterstitialActivity2.f21802a);
            }
            boolean z11 = TAdInterstitialActivity.this.T;
            TAdInterstitialActivity.this.T = false;
            TAdInterstitialActivity tAdInterstitialActivity3 = TAdInterstitialActivity.this;
            return tAdInterstitialActivity3.V(tAdInterstitialActivity3.f21802a, false, z11, z10);
        }
    }

    static class k implements InteractiveWebView.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference f21850a;

        public k(TAdInterstitialActivity tAdInterstitialActivity) {
            this.f21850a = new WeakReference(tAdInterstitialActivity);
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void a(String str) {
            TAdInterstitialActivity tAdInterstitialActivity;
            WeakReference weakReference = this.f21850a;
            if (weakReference == null || (tAdInterstitialActivity = (TAdInterstitialActivity) weakReference.get()) == null) {
                return;
            }
            tAdInterstitialActivity.k0(str);
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void b() {
            TAdInterstitialActivity tAdInterstitialActivity;
            WeakReference weakReference = this.f21850a;
            if (weakReference == null || (tAdInterstitialActivity = (TAdInterstitialActivity) weakReference.get()) == null) {
                return;
            }
            tAdInterstitialActivity.D(tAdInterstitialActivity.f21815l, tAdInterstitialActivity.f21826w, tAdInterstitialActivity.f21827x, tAdInterstitialActivity.f21828y, tAdInterstitialActivity.f21829z);
            tAdInterstitialActivity.H0();
        }

        @Override // com.cloud.hisavana.sdk.common.widget.InteractiveWebView.c
        public void c() {
            e4.b().d("TAdInterstitialActivity", "timeoutShutdown");
        }
    }

    private class l extends com.cloud.hisavana.sdk.common.tranmeasure.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference f21851b;

        public l(TAdInterstitialActivity tAdInterstitialActivity) {
            this.f21851b = new WeakReference(tAdInterstitialActivity);
        }

        @Override // com.cloud.hisavana.sdk.common.tranmeasure.a, com.cloud.hisavana.sdk.common.tranmeasure.d.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void a(AdsDTO adsDTO) {
            super.a(adsDTO);
            e4.b().d("TAdInterstitialActivity", "view has impression     track = onAdShow");
            TAdInterstitialActivity tAdInterstitialActivity = (TAdInterstitialActivity) this.f21851b.get();
            if (tAdInterstitialActivity == null) {
                return;
            }
            TAdInterstitialActivity.this.f21823t = true;
            TAdInterstitialActivity.this.x1();
            tAdInterstitialActivity.O("_show", new Intent());
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return;
            }
            P.g().k(adsDTO.getImpBeanRequest().pmid);
            if (adsDTO.getSource() == 4) {
                Z.f21541a.q(adsDTO.getAdCreativeId(), adsDTO.getCodeSeatId());
            } else if (adsDTO.isOfflineAd()) {
                adsDTO.setShowNum(Integer.valueOf(adsDTO.getShowNum().intValue() + 1));
                com.cloud.hisavana.sdk.c0.F().q(adsDTO);
            }
        }
    }

    private class m implements View.OnTouchListener {
        private m() {
        }

        /* synthetic */ m(TAdInterstitialActivity tAdInterstitialActivity, b bVar) {
            this();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                TAdInterstitialActivity.this.f21826w = motionEvent.getX();
                TAdInterstitialActivity.this.f21827x = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            TAdInterstitialActivity.this.f21828y = motionEvent.getX();
            TAdInterstitialActivity.this.f21829z = motionEvent.getY();
            return false;
        }
    }

    private void A() {
        if (n0(this.f21820q)) {
            com.cloud.hisavana.sdk.common.util.a.a(this);
            return;
        }
        View childAt = ((ViewGroup) findViewById(R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(true);
        }
        getWindow().setLayout(-1, -1);
        setFinishOnTouchOutside(false);
    }

    private void A1() {
        try {
            if (getIntent() != null) {
                this.f21821r = getIntent().getStringExtra("BroadCastPrefix");
                this.f21820q = (AdsDTO) getIntent().getParcelableExtra("mAdBean");
            }
            AdsDTO adsDTO = this.f21820q;
            if (adsDTO != null && adsDTO.getMaterialStyle() != null) {
                int iB = com.cloud.hisavana.sdk.common.util.b.f22148a.b(this.f21820q);
                this.B = iB;
                if (iB != -1) {
                    V0();
                    return;
                }
                e4.b().d("TAdInterstitialActivity", "TAdInterstitialActivity --> adMediaType == INVALID_TYPE");
                C(TaErrorCode.CODE_INVALID_TYPE, TaErrorCode.ERROR_INVALID_TYPE.getErrorMessage());
                finish();
                return;
            }
            e4.b().d("TAdInterstitialActivity", "TAdInterstitialActivity --> null == mAdBean || null == mAdBean.materialStyle");
            C(TaErrorCode.CODE_INTERSTITIAL_MISS_ELEMENT, TaErrorCode.ERROR_INTERSTITIAL_MISS_ELEMENT.getErrorMessage());
            finish();
        } catch (Exception e11) {
            e4.b().e("TAdInterstitialActivity", "start " + Log.getStackTraceString(e11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(float f11) {
        try {
            AdsDTO adsDTO = this.f21820q;
            if (adsDTO != null && adsDTO.getMaterialStyle().equals("I1107")) {
                this.f21817n.setImageResource(f11 == 0.0f ? R$drawable.hisavana_volume_close_i1107 : R$drawable.hisavana_volume_open_i1107);
                return;
            }
        } catch (Throwable unused) {
        }
        ImageView imageView = this.f21817n;
        if (imageView != null) {
            imageView.setImageResource(f11 == 0.0f ? R$drawable.hisavana_volume_close : R$drawable.hisavana_volume_open);
        }
    }

    private void B0() {
        if (!v2.o(this.f21820q)) {
            this.L = 3;
        } else if (v2.n(this.f21820q)) {
            this.L = 1;
        } else {
            this.L = 2;
        }
        this.f21820q.setEndCardType(this.L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(int i11, String str) {
        Intent intent = new Intent();
        intent.putExtra(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, str);
        intent.putExtra("error_code", i11);
        O("_error", intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0(View view) {
        r(view, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(View view, float f11, float f12, float f13, float f14) {
        int i11;
        int i12;
        if (view == null) {
            return;
        }
        try {
            if (this.W == -1 || this.X == -1) {
                int[] iArr = new int[2];
                try {
                    view.getLocationOnScreen(iArr);
                    this.W = iArr[0];
                    this.X = iArr[1];
                    view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    this.Y = view.getMeasuredWidth() / 2;
                    this.Z = view.getMeasuredHeight() / 2;
                } catch (Throwable unused) {
                }
            }
            if ((this.Y == f11 && this.Z == f12) || (i11 = this.W) == -1 || (i12 = this.X) == -1) {
                return;
            }
            float f15 = i11;
            this.f21826w = f11 + f15;
            float f16 = i12;
            this.f21827x = f12 + f16;
            this.f21828y = f13 + f15;
            this.f21829z = f14 + f16;
        } catch (Throwable th2) {
            e4.b().w("TAdInterstitialActivity", "setLocationInfo error:" + th2.getMessage());
        }
    }

    private void D0(final AdsDTO adsDTO) {
        final InteractiveWebView interactiveWebView;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getIndexLocation())) {
            return;
        }
        h1();
        if (new File(adsDTO.getIndexLocation()).exists() && (interactiveWebView = this.f21815l) != null) {
            interactiveWebView.setVisibility(0);
            interactiveWebView.post(new Runnable() { // from class: com.cloud.hisavana.sdk.common.activity.a0
                @Override // java.lang.Runnable
                public final void run() {
                    TAdInterstitialActivity.K(interactiveWebView, adsDTO);
                }
            });
        } else {
            C(3005, "interactive file not exists ");
            AthenaTracker.S(this.f21820q, 3);
            finish();
        }
    }

    private void E(View view, int i11) {
        TextView textView;
        ImageView imageView;
        View view2;
        int i12;
        ImageView imageView2 = (ImageView) view.findViewById(R$id.close_view);
        if (this.f21820q.getMaterialStyle().equals("I01")) {
            textView = (TextView) findViewById(R$id.count_down_view);
            imageView = (ImageView) findViewById(R$id.iv_reward_rest);
            try {
                View viewFindViewById = findViewById(R$id.ad_close_container);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.n
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            TAdInterstitialActivity.r0(view3);
                        }
                    });
                }
            } catch (Exception unused) {
            }
        } else {
            textView = (TextView) view.findViewById(R$id.count_down_view);
            imageView = null;
        }
        TextView textView2 = textView;
        ImageView imageView3 = imageView;
        TextView textView3 = (TextView) view.findViewById(R$id.skip_view);
        if (imageView2 == null || textView2 == null || textView3 == null) {
            return;
        }
        if (this.J) {
            textView3.setVisibility(0);
            imageView2.setVisibility(8);
            view2 = textView3;
        } else {
            textView3.setVisibility(8);
            imageView2.setVisibility(0);
            view2 = imageView2;
        }
        view2.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                this.f21942a.w0(view3);
            }
        });
        if (i11 <= 0 || (i12 = this.H) == 0) {
            if (!this.f21820q.getMaterialStyle().equals("I01")) {
                e4.b().d("TAdInterstitialActivity", "current close delay time is 0, do not count down.");
                view2.setVisibility(0);
                textView2.setVisibility(8);
                return;
            } else {
                view.setVisibility(0);
                View viewFindViewById2 = findViewById(R$id.ad_close_container);
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setVisibility(8);
                    return;
                }
                return;
            }
        }
        int iMin = i12 > 0 ? Math.min(i11, i12) : i11;
        textView2.setVisibility(0);
        view2.setVisibility(4);
        if (this.B == 1 || this.f21820q.getDefaultMaterialType() == 2) {
            try {
                if (getResources().getConfiguration().orientation == 1 && this.f21820q.getMaterialStyle() != null && this.f21820q.getMaterialStyle().equals("I91602")) {
                    this.I = true;
                    findViewById(R$id.new_ad_progress).setVisibility(0);
                    textView2.setVisibility(8);
                } else {
                    this.I = false;
                }
            } catch (Exception e11) {
                e4.b().w("TAdInterstitialActivity", "*----> TAdInterstitialActivity --> get screen orientation error:" + e11.getMessage());
            }
        }
        e7.e eVar = this.G;
        if (eVar != null) {
            eVar.d();
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R$id.new_ad_progress);
        if (this.I && progressBar != null) {
            progressBar.setMax(iMin);
            if (this.H > 0) {
                progressBar.setProgress(progressBar.getMax() - this.H);
            }
        }
        c cVar = new c(1000 * ((long) iMin), 1000L, progressBar, textView2, view2, view, imageView3);
        this.G = cVar;
        cVar.g();
    }

    private void F(TextView textView, String str) {
        if (TextUtils.isEmpty(str)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H0() {
        InteractiveWebView interactiveWebView = this.f21815l;
        if (interactiveWebView != null) {
            i0(interactiveWebView, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I0(View view) {
        i0(view, false);
    }

    private void J0(AdsDTO adsDTO) {
        String strK = v2.k(adsDTO);
        if (TextUtils.isEmpty(strK)) {
            TaErrorCode taErrorCode = TaErrorCode.NO_MAIN_VIDEO_DATA_ERROR;
            C(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            finish();
        } else {
            t1();
            a0(adsDTO);
            this.f21818o.setVolumeView(this.f21817n);
            b0(strK);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void K(InteractiveWebView interactiveWebView, AdsDTO adsDTO) {
        interactiveWebView.loadUrl(AdPayload.FILE_SCHEME + adsDTO.getIndexLocation());
    }

    private int K0(AdsDTO adsDTO) {
        int i11 = 0;
        if (adsDTO == null) {
            return 0;
        }
        try {
            i11 = getResources().getConfiguration().orientation;
        } catch (Exception e11) {
            e4.b().w("TAdInterstitialActivity", "*----> TAdInterstitialActivity --> get screen orientation error:" + e11.getMessage());
        }
        if (n0(adsDTO)) {
            setTheme(R$style.InterstitialFullscreenStyle);
        } else if (i11 == 2) {
            setTheme(R$style.AppCompatTranscutes);
        } else {
            setTheme(R$style.InterstitialStyle);
        }
        return i11;
    }

    private void L(AdsDTO adsDTO) {
        if (this.K) {
            return;
        }
        if (this.f21820q.getNativeObject() == null || TextUtils.isEmpty(this.f21820q.getNativeObject().getTitleTxt())) {
            this.J = false;
            return;
        }
        if (this.f21820q.getSource() == 4 && TextUtils.isEmpty(this.f21820q.getLogoUrl())) {
            this.J = false;
            return;
        }
        if (this.f21820q.getSource() != 4 && TextUtils.isEmpty(this.f21820q.getNativeObject().getLogoUrl())) {
            this.J = false;
            return;
        }
        this.J = false;
        this.L = 0;
        int retentionEndCardRatio = adsDTO.getRetentionEndCardRatio();
        if (retentionEndCardRatio == 0) {
            return;
        }
        if (retentionEndCardRatio < 0 || retentionEndCardRatio > 100) {
            e4.b().e("TAdInterstitialActivity", "getRetentionEndCardRatio error,value is " + retentionEndCardRatio);
            return;
        }
        if (retentionEndCardRatio == 100) {
            this.J = true;
            B0();
        } else if (new Random().nextInt(100) + 1 <= retentionEndCardRatio) {
            this.J = true;
            B0();
        }
    }

    public static void M(s3 s3Var) {
        f21801c0 = new WeakReference(s3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M0(View view) {
        if (this.S) {
            com.cloud.hisavana.sdk.common.util.r.f22193a.s(this.f21802a);
        } else {
            U(view, false, false);
        }
    }

    private void N(String str) {
        if (this.E == null) {
            this.E = new com.cloud.hisavana.sdk.r();
        }
        this.E.j(this.S);
        this.E.d(this.f21802a, this.f21820q, new j());
        this.f21802a.loadDataWithBaseURL(null, str, "text/html", "utf-8", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(String str, Intent intent) {
        if (intent == null) {
            try {
                intent = new Intent();
                intent.putExtra("mAdBean", this.f21820q);
            } catch (Throwable th2) {
                e4.b().e(Log.getStackTraceString(th2));
                return;
            }
        }
        intent.setAction(this.f21821r + str);
        e4.b().d("TAdInterstitialActivity", "sendBroadcast action: " + intent.getAction());
        sendBroadcast(intent);
    }

    private void P0() {
        AdsDTO adsDTO = this.f21820q;
        if (adsDTO == null) {
            return;
        }
        if (adsDTO.getSource() == 4) {
            DownLoadRequest.n(this.f21820q.getAdChoiceImageUrl(), this.f21820q, null, this.f21806c);
        } else {
            DownLoadRequest.o(this.f21820q.getAdChoiceImageUrl(), this.f21820q, 3, null, this.f21806c);
        }
        if (this.f21810g == null || this.f21820q.getNativeObject() == null) {
            return;
        }
        if (this.f21820q.getSource() == 4) {
            DownLoadRequest.n(this.f21820q.getLogoUrl(), this.f21820q, null, this.f21810g);
        } else {
            DownLoadRequest.o(this.f21820q.getNativeObject().getLogoUrl(), this.f21820q, 1, null, this.f21810g);
        }
        if (!this.f21820q.isVastTypeAd() || this.f21820q.getMaterialStyle().equals("I01")) {
            return;
        }
        this.f21810g.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f21945a.I0(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q0(View view) {
        N0.k(getApplicationContext(), this.f21820q);
    }

    private int[] S(View view) {
        f0 f0VarA = f0.a(this.M);
        if (f0VarA == null) {
            return null;
        }
        if (this.M == 1) {
            return new int[]{f0VarA.f21909a, f0VarA.f21910b};
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.findViewById(R$id.close_view).getLayoutParams();
        int i11 = f0VarA.f21911c;
        layoutParams.height = i11;
        layoutParams.width = i11;
        int i12 = f0VarA.f21912d;
        layoutParams.topMargin = i12;
        layoutParams.rightMargin = i12;
        ViewGroup.LayoutParams layoutParams2 = view.findViewById(R$id.ffIcon).getLayoutParams();
        int i13 = f0VarA.f21913e;
        layoutParams2.height = i13;
        layoutParams2.width = i13;
        TextView textView = (TextView) view.findViewById(R$id.tvName);
        textView.setTextSize(f0VarA.f21914f);
        ((LinearLayout.LayoutParams) textView.getLayoutParams()).topMargin = f0VarA.f21915g;
        view.findViewById(R$id.score_icon1).getLayoutParams().width = f0VarA.f21916h;
        view.findViewById(R$id.score_icon1).getLayoutParams().height = f0VarA.f21916h;
        view.findViewById(R$id.score_icon2).getLayoutParams().width = f0VarA.f21916h;
        view.findViewById(R$id.score_icon2).getLayoutParams().height = f0VarA.f21916h;
        view.findViewById(R$id.score_icon3).getLayoutParams().width = f0VarA.f21916h;
        view.findViewById(R$id.score_icon3).getLayoutParams().height = f0VarA.f21916h;
        view.findViewById(R$id.score_icon4).getLayoutParams().width = f0VarA.f21916h;
        view.findViewById(R$id.score_icon4).getLayoutParams().height = f0VarA.f21916h;
        view.findViewById(R$id.score_icon5).getLayoutParams().width = f0VarA.f21916h;
        view.findViewById(R$id.score_icon5).getLayoutParams().height = f0VarA.f21916h;
        ((LinearLayout.LayoutParams) view.findViewById(R$id.score_area_view).getLayoutParams()).topMargin = f0VarA.f21917i;
        view.findViewById(R$id.desc_area_view).getLayoutParams().width = f0VarA.f21918j;
        view.findViewById(R$id.desc_area_view).getLayoutParams().height = f0VarA.f21919k;
        ((LinearLayout.LayoutParams) view.findViewById(R$id.desc_area_view).getLayoutParams()).topMargin = f0VarA.f21920l;
        view.findViewById(R$id.score_icon).getLayoutParams().width = f0VarA.f21921m;
        view.findViewById(R$id.score_icon).getLayoutParams().height = f0VarA.f21921m;
        view.findViewById(R$id.download_icon).getLayoutParams().width = f0VarA.f21921m;
        view.findViewById(R$id.download_icon).getLayoutParams().height = f0VarA.f21921m;
        ((TextView) view.findViewById(R$id.score_text)).setTextSize(f0VarA.f21922n);
        ((TextView) view.findViewById(R$id.download_text)).setTextSize(f0VarA.f21922n);
        ((TextView) view.findViewById(R$id.score_info)).setTextSize(f0VarA.f21923o);
        ((TextView) view.findViewById(R$id.download_info)).setTextSize(f0VarA.f21923o);
        view.findViewById(R$id.line_info).getLayoutParams().height = f0VarA.f21924p;
        view.findViewById(R$id.ff_btn).getLayoutParams().width = f0VarA.f21925q;
        view.findViewById(R$id.ff_btn).getLayoutParams().height = f0VarA.f21926r;
        ((LinearLayout.LayoutParams) view.findViewById(R$id.ff_btn).getLayoutParams()).topMargin = f0VarA.f21927s;
        ((LinearLayout.LayoutParams) view.findViewById(R$id.ff_ps_mark_view).getLayoutParams()).topMargin = f0VarA.f21928t;
        return new int[]{f0VarA.f21909a, f0VarA.f21910b};
    }

    private void S0() {
        finish();
    }

    private int T(View view, boolean z10) {
        if (this.f21820q.getPslinkInfo() != null) {
            if (view.getId() == R$id.tvBtn || view.getId() == R$id.btn_pop_confirm || view.getId() == R$id.btn || z10) {
                this.f21820q.getPslinkInfo().setClickType(2);
                this.f21820q.setTrackUserClickArea(2);
                e4.b().d("TAdInterstitialActivity", "pslink half setClickType, click_install");
            } else {
                this.f21820q.setTrackUserClickArea(1);
                this.f21820q.getPslinkInfo().setClickType(1);
                e4.b().d("TAdInterstitialActivity", "pslink half setClickType, click_img");
            }
        }
        DownUpPointBean downUpPointBean = new DownUpPointBean(this.f21826w, this.f21827x, this.f21828y, this.f21829z, view.getMeasuredHeight(), view.getMeasuredWidth());
        AdsDTO adsDTO = this.f21820q;
        boolean z11 = adsDTO != null ? !adsDTO.isAllowTrackingADClick() : false;
        O("_click", null);
        return N0.c(getApplicationContext(), this.f21820q, downUpPointBean, false, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T0(View view) {
        r(view, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int U(View view, boolean z10, boolean z11) {
        return V(view, z10, z11, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int V(View view, final boolean z10, boolean z11, boolean z12) {
        AdsDTO adsDTO = this.f21820q;
        if (adsDTO == null || !adsDTO.getMaterialStyle().equals("I01")) {
            return r(view, z10);
        }
        if (this.O != 2) {
            this.P = true;
            return t(view, z10, z11, z12);
        }
        if (this.N || z11) {
            if (a7.c.j()) {
                HSToastUtil.f(getString(R$string.hs_download_in_palm_store));
            }
            this.U = true;
            int iS = s(view, z10, z11);
            if (this.S && !this.V) {
                return iS;
            }
            L0();
            return iS;
        }
        try {
            AdsDTO adsDTO2 = this.f21820q;
            if (adsDTO2 != null) {
                com.cloud.hisavana.sdk.common.util.r.f22193a.o(adsDTO2, new DownUpPointBean(this.f21826w, this.f21827x, this.f21828y, this.f21829z, view.getMeasuredHeight(), view.getMeasuredWidth()));
            }
            if (this.Q == null) {
                e7.d dVar = new e7.d(this, new Function0() { // from class: com.cloud.hisavana.sdk.common.activity.s
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return this.f21939a.z(z10);
                    }
                });
                this.Q = dVar;
                dVar.m(this.f21820q);
            }
            this.Q.show();
        } catch (Throwable unused) {
        }
        return -1;
    }

    private void V0() {
        if (this.f21820q == null) {
            TaErrorCode taErrorCode = TaErrorCode.ERROR_SHOW_ADBEAN_NULL;
            C(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            e4.b().d("TAdInterstitialActivity", "TAdInterstitialActivity --> null == mAdBean |");
            S0();
            return;
        }
        if (d0()) {
            return;
        }
        q1();
        w1();
        P0();
        j0();
        v0();
        e1();
        try {
            com.cloud.hisavana.sdk.manager.a.f22653a.s(getApplicationContext(), this.f21820q, false);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W0(View view) {
        r(view, false);
    }

    private void X(View view) {
        if (this.f21816m == null || view == null) {
            return;
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        this.f21816m.removeAllViews();
        this.f21816m.addView(view, new ConstraintLayout.b(-1, -1));
    }

    private void Y(View view, int i11) {
        String string;
        int i12;
        TextView textView = (TextView) view.findViewById(R$id.close_view);
        TextView textView2 = (TextView) view.findViewById(R$id.count_down_view);
        View viewFindViewById = view.findViewById(R$id.separator);
        if (textView == null || textView2 == null || viewFindViewById == null) {
            return;
        }
        if (this.J) {
            try {
                string = getString(R$string.hs_btn_skip);
            } catch (Exception unused) {
                string = "SKIP";
            }
            textView.setText(string);
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f21938a.C0(view2);
            }
        });
        if (i11 <= 0 || (i12 = this.H) == 0) {
            e4.b().d("TAdInterstitialActivity", "current close delay time is 0, do not count down.");
            view.setEnabled(true);
            textView.setTextColor(Color.parseColor("#222222"));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
            layoutParams.setMarginStart(0);
            textView.setLayoutParams(layoutParams);
            textView2.setVisibility(8);
            viewFindViewById.setVisibility(8);
            view.requestLayout();
            return;
        }
        if (i12 > 0) {
            i11 = Math.min(i11, i12);
        }
        e7.e eVar = this.G;
        if (eVar != null) {
            eVar.d();
        }
        view.setEnabled(false);
        d dVar = new d(1000 * ((long) i11), 1000L, textView2, view, textView, viewFindViewById);
        this.G = dVar;
        dVar.g();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    private void Y0() {
        String str;
        boolean z10;
        char c11;
        ?? r11;
        String str2;
        ViewGroup viewGroup;
        try {
            if (n0(this.f21820q) && (viewGroup = (ViewGroup) findViewById(R$id.content_layout)) != null) {
                viewGroup.setOnTouchListener(new m(this, null));
                viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.z
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21948a.M0(view);
                    }
                });
            }
            this.f21811h = (ViewGroup) findViewById(R$id.llRoot);
            String materialStyle = this.f21820q.getMaterialStyle();
            ViewGroup viewGroup2 = this.f21811h;
            if (viewGroup2 != null) {
                viewGroup2.setOnClickListener(new b(materialStyle));
            }
        } catch (Throwable unused) {
        }
        this.f21810g = (ImageView) findViewById(R$id.ivIcon);
        this.f21812i = (TextView) findViewById(R$id.tvName);
        this.f21813j = (TextView) findViewById(R$id.tvDescription);
        TextView textView = (TextView) findViewById(R$id.tvSourceSize);
        this.f21814k = (TextView) findViewById(R$id.tvBtn);
        AdsDTO adsDTO = this.f21820q;
        if (adsDTO == null || adsDTO.getNativeObject() == null || TextUtils.isEmpty(this.f21820q.getMaterialStyle())) {
            return;
        }
        if (TextUtils.isEmpty(this.f21820q.getAdm()) || this.S) {
            com.cloud.hisavana.sdk.common.util.r rVar = com.cloud.hisavana.sdk.common.util.r.f22193a;
            String strK = rVar.k(this.f21820q);
            String materialStyle2 = this.f21820q.getMaterialStyle();
            materialStyle2.hashCode();
            switch (materialStyle2) {
                case "I01":
                case "I1101":
                case "I1103":
                case "I1107":
                case "I16901":
                case "I16902":
                case "I91601":
                case "I91602":
                    this.f21812i.setText(this.f21820q.getNativeObject().getTitleTxt());
                    this.f21813j.setText(this.f21820q.getNativeObject().getDescriptionTxt());
                    String buttonTxt = this.f21820q.getNativeObject().getButtonTxt(this.f21820q.getInstallApk());
                    if (TextUtils.isEmpty(buttonTxt)) {
                        buttonTxt = rVar.j();
                    }
                    this.f21814k.setText(buttonTxt);
                    TextPaint paint = this.f21812i.getPaint();
                    paint.setStrokeWidth(2.0f);
                    paint.setStyle(Paint.Style.FILL_AND_STROKE);
                    if (this.f21804b != null && ((this.f21820q.getMaterialStyle().equals("I91601") || this.f21820q.getMaterialStyle().equals("I91602") || this.f21820q.getMaterialStyle().equals("I01")) && !TextUtils.isEmpty(this.f21820q.getScale()) && this.f21820q.getScale().equals("9:16"))) {
                        this.f21804b.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    }
                    if (this.f21820q.getMaterialStyle().equals("I16902") || this.f21820q.getMaterialStyle().equals("I91602")) {
                        c11 = 3;
                        View viewFindViewById = findViewById(R$id.desc_area_view);
                        TextView textView2 = (TextView) findViewById(R$id.score_text);
                        if (textView2 == null) {
                            str2 = strK;
                            z10 = false;
                            if (textView != null) {
                                F(textView, str2);
                            }
                        } else if (v2.o(this.f21820q)) {
                            this.f21813j.setVisibility(8);
                            viewFindViewById.setVisibility(0);
                            textView2.setText(v2.b(v2.i(this.f21820q)));
                            if (textView != null) {
                                str = TextUtils.isEmpty(strK) ? strK : strK + " · ";
                                F(textView, str);
                                z10 = false;
                            } else {
                                str2 = strK;
                                z10 = false;
                            }
                        } else {
                            str2 = strK;
                            viewFindViewById.setVisibility(8);
                            z10 = false;
                            this.f21813j.setVisibility(0);
                            String descriptionTxt = this.f21820q.getNativeObject().getDescriptionTxt();
                            if (!TextUtils.isEmpty(str2)) {
                                descriptionTxt = str2 + " · " + descriptionTxt;
                            }
                            this.f21813j.setText(descriptionTxt);
                        }
                        str = str2;
                    } else {
                        if (this.f21820q.getMaterialStyle().equals("I01") || this.f21820q.getMaterialStyle().equals("I1107")) {
                            TextView textView3 = (TextView) findViewById(R$id.score_text);
                            ImageView imageView = (ImageView) findViewById(R$id.score_icon);
                            if (this.f21820q.getMaterialStyle().equals("I01")) {
                                TextView textView4 = this.f21814k;
                                if (textView4 != null) {
                                    ObjectAnimator objectAnimatorG = rVar.g(textView4);
                                    this.f21803a0 = objectAnimatorG;
                                    if (objectAnimatorG != null) {
                                        objectAnimatorG.start();
                                    }
                                }
                            } else if (this.f21820q.getMaterialStyle().equals("I1107") && this.f21814k != null) {
                                View viewFindViewById2 = findViewById(R$id.view_animator_bg_color);
                                if (this.R == 2) {
                                    this.f21805b0 = rVar.p(this.f21814k, viewFindViewById2, "#260052E2");
                                } else {
                                    this.f21805b0 = rVar.p(this.f21814k, viewFindViewById2, "#4DFFFFFF");
                                }
                            }
                            int i11 = this.O;
                            c11 = 3;
                            if (i11 == 3) {
                                if (this.f21820q.getMaterialStyle().equals("I01")) {
                                    this.f21814k.setText(getString(R$string.hs_download_t01_btn_pull_live));
                                }
                                if (imageView != null) {
                                    try {
                                        imageView.setVisibility(0);
                                    } catch (Throwable unused2) {
                                    }
                                }
                                textView3.setText(v2.b(v2.i(this.f21820q)) + " · " + this.f21820q.getNativeObject().getDescriptionTxt());
                                break;
                            } else if (i11 == 2) {
                                if (imageView != null) {
                                    imageView.setVisibility(8);
                                }
                                if (textView3 != null) {
                                    try {
                                        textView3.setText(rVar.i(this.f21820q.getPslinkInfo().getSourceSize()) + " · " + this.f21820q.getNativeObject().getDescriptionTxt());
                                        break;
                                    } catch (Throwable unused3) {
                                    }
                                }
                                if (this.f21820q.getMaterialStyle().equals("I01")) {
                                    this.f21814k.setText(getString(R$string.hs_download_t01_btn_pull_new));
                                }
                            } else if (this.f21820q.getMaterialStyle().equals("I01")) {
                                this.f21814k.setText(getString(R$string.hs_download_t01_btn_pull_live));
                            }
                            str2 = strK;
                            z10 = false;
                        } else {
                            str2 = strK;
                            z10 = false;
                            c11 = 3;
                        }
                        str = str2;
                    }
                    z1();
                    break;
                case "FA14":
                case "I1106":
                    this.f21812i.setText(this.f21820q.getNativeObject().getTitleTxt());
                    this.f21813j.setText(this.f21820q.getNativeObject().getDescriptionTxt());
                    this.f21814k.setText(this.f21820q.getNativeObject().getButtonTxt(this.f21820q.getInstallApk()));
                    TextPaint paint2 = this.f21813j.getPaint();
                    paint2.setStrokeWidth(2.0f);
                    paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                    z1();
                    str = strK;
                    z10 = false;
                    c11 = 3;
                    break;
                case "I1102":
                    this.f21812i.setText(this.f21820q.getNativeObject().getTitleTxt());
                    this.f21814k.setText(this.f21820q.getNativeObject().getButtonTxt(this.f21820q.getInstallApk()));
                    TextPaint paint3 = this.f21812i.getPaint();
                    paint3.setStrokeWidth(2.0f);
                    paint3.setStyle(Paint.Style.FILL_AND_STROKE);
                    z1();
                    str = strK;
                    z10 = false;
                    c11 = 3;
                    break;
                default:
                    str = strK;
                    z10 = false;
                    c11 = 3;
                    break;
            }
            String materialStyle3 = this.f21820q.getMaterialStyle();
            materialStyle3.hashCode();
            switch (materialStyle3.hashCode()) {
                case 2149406:
                    r11 = !materialStyle3.equals("FA14") ? -1 : z10;
                    break;
                case 68925418:
                    r11 = !materialStyle3.equals("I1101") ? -1 : 1;
                    break;
                case 68925419:
                    r11 = !materialStyle3.equals("I1102") ? -1 : 2;
                    break;
                case 68925420:
                    r11 = !materialStyle3.equals("I1103") ? -1 : c11;
                    break;
                case 68925423:
                    r11 = !materialStyle3.equals("I1106") ? -1 : 4;
                    break;
                case 2136845580:
                    r11 = !materialStyle3.equals("I16901") ? -1 : 5;
                    break;
                case 2144081910:
                    r11 = !materialStyle3.equals("I91601") ? -1 : 6;
                    break;
                default:
                    r11 = -1;
                    break;
            }
            switch (r11) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                    if (textView != null) {
                        F(textView, str);
                    }
                    break;
                case 5:
                    if (this.R != 2) {
                        if (textView != null) {
                            F(textView, str);
                        }
                    } else if (this.f21813j != null) {
                        String descriptionTxt2 = this.f21820q.getNativeObject().getDescriptionTxt();
                        if (!TextUtils.isEmpty(str)) {
                            descriptionTxt2 = str + " · " + descriptionTxt2;
                        }
                        this.f21813j.setText(descriptionTxt2);
                    }
                    break;
                case 6:
                    if (this.R != 2) {
                        if (this.f21813j != null) {
                            String descriptionTxt3 = this.f21820q.getNativeObject().getDescriptionTxt();
                            if (!TextUtils.isEmpty(str)) {
                                descriptionTxt3 = str + " · " + descriptionTxt3;
                            }
                            this.f21813j.setText(descriptionTxt3);
                        }
                    } else if (textView != null) {
                        F(textView, str);
                    }
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void Z0(View view) {
    }

    private void a0(AdsDTO adsDTO) {
        if ((this.B == 1 || adsDTO.getDefaultMaterialType() == 2) && this.f21818o == null) {
            InterstitialAdVideoView interstitialAdVideoView = new InterstitialAdVideoView(getApplicationContext());
            this.f21818o = interstitialAdVideoView;
            if (this.I) {
                interstitialAdVideoView.setProgressBarVisibility(8);
            }
            this.f21818o.setAutoReset(true);
            this.f21818o.setAdMediaPlayerListener(new h(adsDTO));
        }
    }

    private void b0(String str) {
        int i11;
        AdsDTO adsDTO;
        InterstitialAdVideoView interstitialAdVideoView;
        ViewGroup.LayoutParams layoutParams;
        e4.b().d("TAdInterstitialActivity", "setMediaData ");
        InterstitialAdVideoView interstitialAdVideoView2 = this.f21818o;
        if (interstitialAdVideoView2 == null) {
            return;
        }
        X(interstitialAdVideoView2);
        try {
            i11 = getResources().getConfiguration().orientation;
        } catch (Exception unused) {
            i11 = 0;
        }
        AdsDTO adsDTO2 = this.f21820q;
        if (adsDTO2 != null && i11 == 1 && adsDTO2.getMaterialStyle().equals("I91602") && v2.h(this.f21820q).equals("9:16") && (layoutParams = this.f21818o.getLayoutParams()) != null) {
            int iM = v2.m(this.f21820q);
            int iL = v2.l(this.f21820q);
            if (iM <= 0 || iL <= 0) {
                layoutParams.width = -1;
                layoutParams.height = -2;
            } else {
                layoutParams.width = com.cloud.sdk.commonutil.util.h.g();
                layoutParams.height = (int) (com.cloud.sdk.commonutil.util.h.g() * (iL / iM));
            }
            this.f21818o.setLayoutParams(layoutParams);
        }
        if (this.f21825v && (interstitialAdVideoView = this.f21818o) != null) {
            interstitialAdVideoView.seekToPosition(interstitialAdVideoView.getDuration());
        }
        if (this.f21824u) {
            return;
        }
        if (this.f21818o != null && !TextUtils.isEmpty(str)) {
            e4.b().d("TAdInterstitialActivity", "setMediaData filePath " + str);
            this.f21818o.setMediaData(str, this.f21820q, this.f21822s == 0.0f, str.startsWith("http"));
            if (!this.f21820q.getMaterialStyle().equals("I01")) {
                this.f21818o.setOnTouchListener(new m(this, null));
                this.f21818o.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.w
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21944a.f1(view);
                    }
                });
            }
        }
        if (this.f21818o == null || (adsDTO = this.f21820q) == null || adsDTO.getVideoInfo() == null || this.f21820q.getVideoInfo().getVideoMask() == null) {
            return;
        }
        this.f21818o.setCompanionSize(this.f21820q.getVideoInfo().getVideoMask().getResource());
    }

    private void b1() {
        AdsDTO adsDTO;
        View viewFindViewById = findViewById(R$id.ivCancel);
        if (viewFindViewById == null || (adsDTO = this.f21820q) == null) {
            return;
        }
        int closeDelayTime = (!adsDTO.isVastTypeAd() || this.f21820q.getVideoInfo() == null || this.f21820q.getVideoInfo().getDuration() == null || this.f21820q.getVideoInfo().getDuration().intValue() <= 0) ? this.f21820q.getCloseDelayTime() : Math.min(this.f21820q.getCloseDelayTime(), this.f21820q.getVideoInfo().getDuration().intValue());
        e4.b().d("TAdInterstitialActivity", "current close delay time is: " + closeDelayTime);
        if (viewFindViewById.getTag() == null || !viewFindViewById.getTag().equals("close_button")) {
            E(viewFindViewById, closeDelayTime);
        } else {
            Y(viewFindViewById, closeDelayTime);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public void P(String str, String str2, String str3) {
        if (this.F == null) {
            com.cloud.hisavana.sdk.common.util.v vVar = new com.cloud.hisavana.sdk.common.util.v(this, new a());
            this.F = vVar;
            vVar.k(str);
            this.F.h(str2);
            this.F.g(str3);
            this.F.j(true);
        }
        try {
            this.F.show();
        } catch (Exception e11) {
            e4.b().e("TAdInterstitialActivity", "showRuDialog error: " + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c1(View view) {
        AthenaTracker.A(this.f21820q);
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.f21820q, view, this.D);
    }

    private boolean d0() {
        byte b11 = 5;
        this.R = K0(this.f21820q);
        if (TextUtils.isEmpty(this.f21820q.getAdm())) {
            String materialStyle = this.f21820q.getMaterialStyle();
            materialStyle.hashCode();
            switch (materialStyle.hashCode()) {
                case 71690:
                    b11 = !materialStyle.equals("I01") ? (byte) -1 : (byte) 0;
                    break;
                case 2149406:
                    b11 = !materialStyle.equals("FA14") ? (byte) -1 : (byte) 1;
                    break;
                case 68925418:
                    b11 = !materialStyle.equals("I1101") ? (byte) -1 : (byte) 2;
                    break;
                case 68925419:
                    b11 = !materialStyle.equals("I1102") ? (byte) -1 : (byte) 3;
                    break;
                case 68925420:
                    b11 = !materialStyle.equals("I1103") ? (byte) -1 : (byte) 4;
                    break;
                case 68925423:
                    if (!materialStyle.equals("I1106")) {
                        b11 = -1;
                    }
                    break;
                case 68925424:
                    b11 = !materialStyle.equals("I1107") ? (byte) -1 : (byte) 6;
                    break;
                case 2136845580:
                    b11 = !materialStyle.equals("I16901") ? (byte) -1 : (byte) 7;
                    break;
                case 2136845581:
                    b11 = !materialStyle.equals("I16902") ? (byte) -1 : (byte) 8;
                    break;
                case 2144081910:
                    b11 = !materialStyle.equals("I91601") ? (byte) -1 : (byte) 9;
                    break;
                case 2144081911:
                    b11 = !materialStyle.equals("I91602") ? (byte) -1 : (byte) 10;
                    break;
                default:
                    b11 = -1;
                    break;
            }
            switch (b11) {
                case 0:
                    setContentView(R$layout.activity_t_ad_interstitial_01_layout);
                    if (this.R == 2) {
                        this.M = 6;
                    } else {
                        this.M = 7;
                    }
                    com.cloud.hisavana.sdk.common.util.r rVar = com.cloud.hisavana.sdk.common.util.r.f22193a;
                    this.N = rVar.c(this.f21820q);
                    this.O = rVar.d(this.f21820q);
                    break;
                case 1:
                    setContentView(R$layout.activity_t_ad_interstitial_1104_1105_layout);
                    if (this.R != 2) {
                        this.M = 4;
                    } else {
                        this.M = 3;
                    }
                    break;
                case 2:
                    setContentView(R$layout.activity_t_ad_interstitial_1101_layout);
                    if (this.R != 2) {
                        this.M = 1;
                    } else {
                        this.M = 2;
                    }
                    break;
                case 3:
                    setContentView(R$layout.activity_t_ad_interstitial_1102_layout);
                    if (this.R != 2) {
                        this.M = 1;
                    } else {
                        this.M = 2;
                    }
                    break;
                case 4:
                    setContentView(R$layout.activity_t_ad_interstitial_1103_layout);
                    if (this.R != 2) {
                        this.M = 1;
                    } else {
                        this.M = 2;
                    }
                    break;
                case 5:
                    setContentView(R$layout.activity_t_ad_interstitial_1106_layout);
                    if (this.R != 2) {
                        this.M = 4;
                    } else {
                        this.M = 3;
                    }
                    break;
                case 6:
                    setContentView(R$layout.activity_t_ad_interstitial_1107_layout);
                    if (this.R == 2) {
                        this.M = 2;
                    } else {
                        this.M = 1;
                    }
                    this.O = com.cloud.hisavana.sdk.common.util.r.f22193a.d(this.f21820q);
                    break;
                case 7:
                    setContentView(R$layout.activity_t_ad_interstitial_16901_layout);
                    if (this.R != 2) {
                        this.M = 7;
                    } else {
                        this.M = 6;
                    }
                    break;
                case 8:
                    setContentView(R$layout.activity_t_ad_interstitial_16902_layout);
                    if (this.R != 2) {
                        this.M = 7;
                    } else {
                        this.M = 6;
                    }
                    break;
                case 9:
                    setContentView(R$layout.activity_t_ad_interstitial_91601_layout);
                    if (this.R != 2) {
                        this.M = 7;
                    } else {
                        this.M = 6;
                    }
                    break;
                case 10:
                    setContentView(R$layout.activity_t_ad_interstitial_91602_layout);
                    if (this.R != 2) {
                        this.M = 7;
                    } else {
                        this.M = 6;
                    }
                    break;
                default:
                    TaErrorCode taErrorCode = TaErrorCode.ERROR_SHOW_AD_MATERIAL_STYLE_NOT_MATCH;
                    C(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
                    finish();
                    e4.b().d("TAdInterstitialActivity", "TAdTemplateActivity --> 没有匹配到 materialStyle --> 配置错误 materialStyle=" + this.f21820q.getMaterialStyle());
                    return true;
            }
        } else if ("I01".equals(this.f21820q.getMaterialStyle())) {
            this.S = true;
            com.cloud.hisavana.sdk.common.util.r rVar2 = com.cloud.hisavana.sdk.common.util.r.f22193a;
            rVar2.f(this.f21820q);
            this.N = rVar2.c(this.f21820q);
            this.O = rVar2.d(this.f21820q);
            setContentView(R$layout.activity_t_ad_interstitial_01_layout);
            if (this.R == 2) {
                this.M = 6;
            } else {
                this.M = 7;
            }
        } else {
            setContentView(R$layout.activity_t_ad_interstitial_adm_layout);
            if (this.R == 2) {
                this.M = 5;
            } else {
                this.M = 1;
            }
        }
        A();
        return false;
    }

    private void e1() {
        ViewGroup viewGroup;
        try {
            if (this.f21820q.getMaterialStyle().equals("I01") && this.R == 2 && (viewGroup = (ViewGroup) findViewById(R$id.content_layout)) != null) {
                viewGroup.setOnTouchListener(new m(this, null));
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f1(View view) {
        i0(view, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int h0(View view) {
        return T(view, false);
    }

    private void h1() {
        if (this.f21820q.isInteractiveAd()) {
            if (this.f21815l == null) {
                try {
                    this.f21815l = new InteractiveWebView(getApplicationContext());
                } catch (Throwable th2) {
                    e4.b().e("TAdInterstitialActivity", "create webview error: " + Log.getStackTraceString(th2));
                    this.f21815l = null;
                }
            }
            if (this.f21816m == null || this.f21815l == null) {
                L0();
                return;
            }
            j1();
            String materialStyle = this.f21820q.getMaterialStyle();
            if (!TextUtils.isEmpty(materialStyle) && (materialStyle.equals("I1107") || materialStyle.equals("I91601") || materialStyle.equals("I91602") || materialStyle.equals("I16902") || materialStyle.equals("I01") || (materialStyle.equals("I16901") && this.R == 2))) {
                String scale = this.f21820q.getScale();
                if (TextUtils.isEmpty(scale)) {
                    scale = (this.f21820q.getScales() == null || this.f21820q.getScales().isEmpty()) ? "" : this.f21820q.getScales().get(0);
                }
                ViewGroup.LayoutParams layoutParams = this.f21816m.getLayoutParams();
                if (layoutParams instanceof ConstraintLayout.b) {
                    ((ConstraintLayout.b) layoutParams).I = scale;
                }
            }
            X(this.f21815l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int i0(View view, boolean z10) {
        return V(view, z10, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i1(View view) {
        if (!this.S) {
            U(view, false, true);
        } else {
            this.T = true;
            com.cloud.hisavana.sdk.common.util.r.f22193a.s(this.f21802a);
        }
    }

    private void j0() {
        AdsDTO adsDTO = this.f21820q;
        if (adsDTO == null || adsDTO.getDisplayRule() != Constants.AdDisplayRule.RU || this.f21816m == null) {
            return;
        }
        if (this.f21819p == null) {
            AdDisclaimerView adDisclaimerView = new AdDisclaimerView(this);
            this.f21819p = adDisclaimerView;
            adDisclaimerView.setListener(new AdDisclaimerView.b() { // from class: com.cloud.hisavana.sdk.common.activity.p
                @Override // com.cloud.hisavana.sdk.api.view.AdDisclaimerView.b
                public final void a(String str, String str2, String str3) {
                    this.f21936a.P(str, str2, str3);
                }
            });
        }
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, getResources().getDimensionPixelOffset(R$dimen.ad_disclaimer_height));
        bVar.f7700t = this.f21816m.getId();
        bVar.f7704v = this.f21816m.getId();
        bVar.f7684l = this.f21816m.getId();
        if (this.f21819p.getParent() != null) {
            ((ViewGroup) this.f21819p.getParent()).removeView(this.f21819p);
        }
        this.f21816m.addView(this.f21819p, bVar);
        this.f21816m.post(new Runnable() { // from class: com.cloud.hisavana.sdk.common.activity.q
            @Override // java.lang.Runnable
            public final void run() {
                this.f21937a.v1();
            }
        });
        v0();
    }

    private void j1() {
        this.f21815l.setWebClientCallback(this.f21820q);
        this.f21815l.setOnTouchListener(new m(this, null));
        this.f21815l.setInteractiveListener(new k(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(String str) {
        AdsDTO adsDTO = this.f21820q;
        if (adsDTO != null) {
            AthenaTracker.y(adsDTO, str);
        }
    }

    private void k1(View view) {
        ViewParent parent;
        if (view == null || (parent = view.getParent()) == null || !(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(view);
    }

    private void m1() {
        AdChoicesView adChoicesView = (AdChoicesView) findViewById(R$id.ad_choices_view);
        this.f21806c = adChoicesView;
        if (adChoicesView != null) {
            adChoicesView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f21943a.Q0(view);
                }
            });
        }
        AdBadgeView adBadgeView = (AdBadgeView) findViewById(R$id.ad_badge_view);
        this.f21807d = adBadgeView;
        if (adBadgeView != null) {
            adBadgeView.setDisplayStyle(this.f21820q.getDisplayRule(), com.cloud.hisavana.sdk.common.util.f0.c(this.f21820q));
        }
        AdCloseView adCloseView = (AdCloseView) findViewById(R$id.ad_close_view);
        this.f21808e = adCloseView;
        if (adCloseView != null) {
            adCloseView.setDisplayStyle(this.f21820q.getDisplayRule(), AdCloseView.CloseImageType.EXPAND);
            t2.p().f(this, this.f21808e, this, this.f21820q);
        }
        try {
            boolean zA = i0.a(this.f21820q);
            StoreMarkView storeMarkView = (StoreMarkView) findViewById(R$id.ps_mark_view);
            this.f21809f = storeMarkView;
            if (storeMarkView != null) {
                storeMarkView.setVisibility(zA ? 0 : 4);
                this.f21809f.setTextSize(6.0f);
                if (!this.f21820q.getMaterialStyle().equals("I1107") || this.R == 2) {
                    this.f21809f.setTextColor(-8882056);
                    this.f21809f.setTextSize(6.0f);
                } else {
                    this.f21809f.setTextColor(Color.parseColor("#FFFFFFFF"));
                    this.f21809f.setTextSize(8.0f);
                }
                this.f21809f.attachInfo(this.f21820q);
            }
        } catch (Throwable unused) {
        }
    }

    private boolean n0(AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getMaterialStyle() == null) {
            return false;
        }
        return adsDTO.getMaterialStyle().equals("I91601") || adsDTO.getMaterialStyle().equals("I16901") || adsDTO.getMaterialStyle().equals("I91602") || adsDTO.getMaterialStyle().equals("I16902") || adsDTO.getMaterialStyle().equals("I01");
    }

    private void p1() {
        b bVar = null;
        View viewInflate = LayoutInflater.from(this).inflate(R$layout.ad_interstitial_end_card_layout, (ViewGroup) null);
        int[] iArrS = S(viewInflate);
        viewInflate.findViewById(R$id.close_view).setOnClickListener(new e());
        if (this.f21810g != null) {
            FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R$id.ffIcon);
            k1(this.f21810g);
            frameLayout.addView(this.f21810g, new FrameLayout.LayoutParams(-1, -1));
        } else if (this.f21820q.getSource() == 4 && !TextUtils.isEmpty(this.f21820q.getLogoUrl())) {
            TranCircleImageView tranCircleImageView = new TranCircleImageView(this);
            DownLoadRequest.n(this.f21820q.getLogoUrl(), this.f21820q, null, tranCircleImageView);
            tranCircleImageView.setRadius(com.cloud.sdk.commonutil.util.h.a(4.0f));
            ((FrameLayout) viewInflate.findViewById(R$id.ffIcon)).addView(tranCircleImageView, new FrameLayout.LayoutParams(-1, -1));
            if (this.f21820q.isVastTypeAd()) {
                tranCircleImageView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.b0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21901a.T0(view);
                    }
                });
            }
        } else if (this.f21820q.getNativeObject() == null || TextUtils.isEmpty(this.f21820q.getNativeObject().getLogoUrl())) {
            viewInflate.findViewById(R$id.ffIcon).setVisibility(8);
        } else {
            TranCircleImageView tranCircleImageView2 = new TranCircleImageView(this);
            DownLoadRequest.o(this.f21820q.getNativeObject().getLogoUrl(), this.f21820q, 1, null, tranCircleImageView2);
            tranCircleImageView2.setRadius(com.cloud.sdk.commonutil.util.h.a(4.0f));
            ((FrameLayout) viewInflate.findViewById(R$id.ffIcon)).addView(tranCircleImageView2, new FrameLayout.LayoutParams(-1, -1));
            if (this.f21820q.isVastTypeAd()) {
                tranCircleImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.c0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21902a.W0(view);
                    }
                });
            }
        }
        TextView textView = this.f21812i;
        if (textView != null && !TextUtils.isEmpty(textView.getText())) {
            ((TextView) viewInflate.findViewById(R$id.tvName)).setText(this.f21812i.getText());
        } else if (this.f21820q.getNativeObject() == null || TextUtils.isEmpty(this.f21820q.getNativeObject().getTitleTxt())) {
            viewInflate.findViewById(R$id.tvName).setVisibility(8);
        } else {
            ((TextView) viewInflate.findViewById(R$id.tvName)).setText(this.f21820q.getNativeObject().getTitleTxt());
        }
        if (this.f21820q.getNativeObject() == null || TextUtils.isEmpty(this.f21820q.getNativeObject().getButtonTxt(this.f21820q.getInstallApk()))) {
            viewInflate.findViewById(R$id.ff_btn).setVisibility(8);
        } else {
            TextView textView2 = (TextView) viewInflate.findViewById(R$id.btn);
            textView2.setText(this.f21820q.getNativeObject().getButtonTxt(this.f21820q.getInstallApk()));
            textView2.setOnClickListener(new f());
        }
        FrameLayout frameLayout2 = (FrameLayout) viewInflate.findViewById(R$id.ff_ps_mark_view);
        StoreMarkView storeMarkView = (StoreMarkView) findViewById(R$id.ps_mark_view);
        k1(storeMarkView);
        frameLayout2.addView(storeMarkView, new FrameLayout.LayoutParams(-1, -1));
        if (!v2.o(this.f21820q)) {
            viewInflate.findViewById(R$id.desc_area_view).setVisibility(8);
            this.L = 3;
        } else if (v2.n(this.f21820q)) {
            ((TextView) viewInflate.findViewById(R$id.score_text)).setText(v2.b(v2.i(this.f21820q)));
            ((TextView) viewInflate.findViewById(R$id.download_text)).setText(com.cloud.hisavana.sdk.common.util.c0.b(v2.e(this.f21820q)));
            this.L = 1;
        } else {
            viewInflate.findViewById(R$id.desc_area_view).setVisibility(8);
            viewInflate.findViewById(R$id.score_area_view).setVisibility(0);
            float fI = v2.i(this.f21820q);
            if (fI > 0.0f && fI < 0.5f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon1)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon2)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fI >= 0.5f && fI < 1.0f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon1)).setImageResource(R$drawable.hs_ad_halfstar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon2)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fI >= 1.0f && fI < 1.5f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon2)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fI >= 1.5f && fI < 2.0f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon2)).setImageResource(R$drawable.hs_ad_halfstar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fI >= 2.0f && fI < 2.5f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fI >= 2.5f && fI < 3.0f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_halfstar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fI >= 3.0f && fI < 3.5f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fI >= 3.5f && fI < 4.0f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_halfstar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fI >= 4.0f && fI < 4.5f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fI >= 4.5f && fI < 5.0f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_halfstar);
            }
            this.L = 2;
        }
        viewInflate.setOnTouchListener(new m(this, bVar));
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TAdInterstitialActivity.Z0(view);
            }
        });
        if (n0(this.f21820q)) {
            setContentView(viewInflate);
        } else {
            ViewGroup viewGroup = (ViewGroup) findViewById(R$id.content_layout);
            if (viewGroup instanceof ConstraintLayout) {
                ConstraintLayout.b bVar2 = (iArrS == null || iArrS.length != 2) ? new ConstraintLayout.b(-1, -1) : new ConstraintLayout.b(iArrS[0], iArrS[1]);
                bVar2.f7700t = viewGroup.getId();
                bVar2.f7704v = viewGroup.getId();
                bVar2.f7684l = viewGroup.getId();
                bVar2.f7678i = viewGroup.getId();
                viewGroup.removeAllViews();
                viewGroup.addView(viewInflate, bVar2);
            } else {
                viewGroup.removeAllViews();
                viewGroup.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            }
        }
        this.K = true;
        this.f21820q.setEndCardType(this.L);
    }

    private void q0() {
        AdsDTO adsDTO = this.f21820q;
        if (adsDTO == null) {
            e4.b().d("TAdInterstitialActivity", "attachAdmView adBean is null");
            S0();
            return;
        }
        String scale = adsDTO.getScale();
        if (TextUtils.isEmpty(scale)) {
            scale = (this.f21820q.getScales() == null || this.f21820q.getScales().isEmpty()) ? "" : this.f21820q.getScales().get(0);
        }
        if (TextUtils.isEmpty(scale)) {
            e4.b().e("TAdInterstitialActivity", "attachAdmView scale is empty,finish");
            S0();
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f21816m.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            ((ConstraintLayout.b) layoutParams).I = scale;
        }
        String str = this.f21820q.getAdm() + TadmWebView.JS_TEXT;
        if (this.f21802a == null) {
            try {
                this.f21802a = new TadmWebView(getApplicationContext());
            } catch (Throwable th2) {
                e4.b().e("TAdInterstitialActivity", "create webview error: " + Log.getStackTraceString(th2));
                this.f21802a = null;
                S0();
                return;
            }
        }
        N(str);
        X(this.f21802a);
    }

    private void q1() {
        this.f21816m = (ViewGroup) findViewById(R$id.main_layout);
        this.f21804b = (TranCircleImageView) findViewById(R$id.iv_main_image);
        Y0();
        L(this.f21820q);
        b1();
        m1();
        if (this.K) {
            p1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int r(View view, boolean z10) {
        return s(view, z10, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void r0(View view) {
    }

    private int s(View view, boolean z10, boolean z11) {
        return t(view, z10, z11, false);
    }

    private void s0(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        DownLoadRequest.n(adsDTO.getAdImgUrl(), adsDTO, new g(), this.f21804b);
        e4.b().d("TAdInterstitialActivity", "use image to show ad is:= " + this.f21820q.getAdImgUrl());
    }

    private int t(View view, boolean z10, boolean z11, boolean z12) {
        int iT = 0;
        try {
            e4.b().d("TAdInterstitialActivity", "asyncAction");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.A > 1000 || z12) {
                if (!z10) {
                    iT = T(view, z11);
                } else if (!this.J || this.K) {
                    O("_close", null);
                    if (!isFinishing()) {
                        S0();
                    }
                } else {
                    p1();
                }
                this.A = jCurrentTimeMillis;
            }
        } catch (Throwable th2) {
            e4.b().e(Log.getStackTraceString(th2));
        }
        return iT;
    }

    private void t1() {
        ImageView imageView = (ImageView) findViewById(R$id.im_volume);
        this.f21817n = imageView;
        if (imageView != null) {
            imageView.setVisibility(0);
            B(this.f21822s);
        }
    }

    private void v0() {
        View viewFindViewById = findViewById(R$id.ad_flag);
        if (viewFindViewById != null) {
            viewFindViewById.bringToFront();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v1() {
        this.f21819p.setDisplayStyle(this.f21820q.getDisplayRule(), com.cloud.hisavana.sdk.common.util.f0.f(this.f21820q), com.cloud.hisavana.sdk.common.util.f0.e(this.f21820q), this.f21816m.getMeasuredHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0(View view) {
        r(view, true);
    }

    private void w1() {
        AdsDTO adsDTO = this.f21820q;
        if (adsDTO == null) {
            L0();
            return;
        }
        if (!TextUtils.isEmpty(adsDTO.getAdm())) {
            q0();
        } else if (this.f21820q.isInteractiveAd()) {
            D0(this.f21820q);
        } else if (this.f21820q.isVastTypeAd()) {
            J0(this.f21820q);
        } else if (this.f21820q.getSource() != 4) {
            x0(this.f21820q);
        } else if (this.f21820q.getDefaultMaterialType() == 1) {
            s0(this.f21820q);
        } else {
            J0(this.f21820q);
        }
        y1();
    }

    private void x0(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        DownLoadRequest.o(adsDTO.getAdImgUrl(), adsDTO, 2, new i(), this.f21804b);
        e4.b().d("TAdInterstitialActivity", "use image to show ad is:= " + this.f21820q.getAdImgUrl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x1() {
        s3 s3Var;
        WeakReference weakReference = f21801c0;
        if (weakReference == null || (s3Var = (s3) weakReference.get()) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f21819p);
        arrayList.add(this.f21808e);
        arrayList.add(this.f21809f);
        arrayList.add(this.f21806c);
        arrayList.add(this.f21807d);
        m0.a(s3Var.v(), this.f21820q, this.f21811h, arrayList);
    }

    private void y1() {
        ViewGroup viewGroup;
        final View childAt;
        if (this.f21820q == null || this.f21823t || (viewGroup = this.f21816m) == null || viewGroup.getChildCount() <= 0 || (childAt = this.f21816m.getChildAt(0)) == null) {
            return;
        }
        childAt.post(new Runnable() { // from class: com.cloud.hisavana.sdk.common.activity.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f21946a.c1(childAt);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit z(boolean z10) {
        if (a7.c.j()) {
            HSToastUtil.f(getString(R$string.hs_download_in_palm_store));
        }
        AdsDTO adsDTO = this.f21820q;
        if (adsDTO != null) {
            adsDTO.setAdClickTracking(false);
        }
        this.U = true;
        s(getWindow().getDecorView(), z10, true);
        if (!this.S || this.V) {
            L0();
        }
        return Unit.f67061a;
    }

    private void z1() {
        try {
            TextView textView = this.f21814k;
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.t
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21941a.i1(view);
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }

    public void L0() {
        O("_close", null);
        if (isFinishing()) {
            return;
        }
        S0();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        e4.b().d("TAdInterstitialActivity", "sendBroadcast(TAG_CLOSE);");
        AdsDTO adsDTO = this.f21820q;
        if (adsDTO == null || !adsDTO.isVastTypeAd()) {
            O("_close", null);
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.W = -1;
        this.X = -1;
        V0();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        setTitle((CharSequence) null);
        if (a7.c.n() == 1) {
            setRequestedOrientation(1);
        } else if (a7.c.n() == 0) {
            setRequestedOrientation(0);
        }
        try {
            if (getIntent() != null) {
                K0((AdsDTO) getIntent().getParcelableExtra("mAdBean"));
            }
        } catch (Exception unused) {
        }
        super.onCreate(bundle);
        if (com.cloud.sdk.commonutil.util.e.h()) {
            this.f21822s = a7.c.r() ? 0.0f : 1.0f;
            A1();
            this.C = true;
        } else {
            com.cloud.sdk.commonutil.util.e.g(getApplicationContext());
            C(TaErrorCode.CODE_INIT_ERROR, TaErrorCode.ERROR_SHOW_INIT_ERROR.getErrorMessage());
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        O("_close", null);
        O("_destroy", null);
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(this.f21820q);
        com.cloud.sdk.commonutil.util.k.a(this.f21804b);
        com.cloud.sdk.commonutil.util.k.a(this.f21810g);
        com.cloud.sdk.commonutil.util.k.a(this.f21806c);
        ViewGroup viewGroup = this.f21811h;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.f21811h = null;
        }
        ViewGroup viewGroup2 = this.f21816m;
        if (viewGroup2 != null) {
            viewGroup2.removeAllViews();
            this.f21816m = null;
        }
        TadmWebView tadmWebView = this.f21802a;
        if (tadmWebView != null) {
            tadmWebView.destroy();
            this.f21802a = null;
        }
        com.cloud.hisavana.sdk.r rVar = this.E;
        if (rVar != null) {
            rVar.c();
            this.E = null;
        }
        InteractiveWebView interactiveWebView = this.f21815l;
        if (interactiveWebView != null) {
            interactiveWebView.destroy();
            this.f21815l = null;
        }
        InterstitialAdVideoView interstitialAdVideoView = this.f21818o;
        if (interstitialAdVideoView != null) {
            interstitialAdVideoView.release();
            this.f21818o = null;
        }
        if (this.f21819p != null) {
            this.f21819p = null;
        }
        com.cloud.hisavana.sdk.common.util.v vVar = this.F;
        if (vVar != null) {
            vVar.dismiss();
            this.F = null;
        }
        e7.e eVar = this.G;
        if (eVar != null) {
            eVar.d();
            this.G = null;
        }
        f21801c0 = null;
        try {
            e7.d dVar = this.Q;
            if (dVar != null) {
                if (dVar.l()) {
                    this.Q.dismiss();
                }
                this.Q = null;
            }
        } catch (Throwable unused) {
        }
        try {
            ObjectAnimator objectAnimator = this.f21803a0;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.f21803a0 = null;
            }
            Runnable runnable = this.f21805b0;
            if (runnable != null) {
                com.cloud.hisavana.sdk.common.util.r.f22193a.n(this.f21814k, runnable);
            }
        } catch (Exception unused2) {
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        e4.b().d("TAdInterstitialActivity", "onNewIntent ----------------------->");
        if (this.C) {
            setIntent(intent);
            A1();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            e7.d dVar = this.Q;
            if (dVar == null || !dVar.l()) {
                return;
            }
            this.Q.dismiss();
        } catch (Throwable th2) {
            e4.b().w("TAdInterstitialActivity", "onPause dismiss bubble dialog failed: " + th2.getMessage());
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (Build.VERSION.SDK_INT <= 29) {
            A();
        }
        try {
            if (this.O == 3 && this.P) {
                this.P = false;
                if (a7.c.j()) {
                    HSToastUtil.f(getString(R$string.hs_interstitial_breadk_ended));
                }
                L0();
            }
        } catch (Throwable unused) {
        }
    }
}
