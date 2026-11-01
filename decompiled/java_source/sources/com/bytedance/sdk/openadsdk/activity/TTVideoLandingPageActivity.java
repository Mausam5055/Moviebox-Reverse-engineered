package com.bytedance.sdk.openadsdk.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.HiB.uvD;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.component.utils.wE;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.EjP.TEQ;
import com.bytedance.sdk.openadsdk.EjP.Ym;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.sef;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.Zq;
import com.cloud.tmc.integration.event.EventConstants;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;
import u5.b;
import u5.c;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TTVideoLandingPageActivity extends TTBaseActivity implements com.bytedance.sdk.openadsdk.TEQ.EjP {
    protected String Dq;
    protected TextView EjP;
    protected Ym Fm;
    protected Context HiB;
    protected String HpB;
    protected Button LqL;
    private int MuB;
    protected com.bytedance.sdk.component.uA.vS Sj;
    protected Yf TEQ;
    protected ImageView TKC;
    protected int Wjd;
    protected com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS Yf;
    protected int Ym;
    protected long Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    protected FrameLayout f20969aa;
    protected String fF;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    protected TextView f20972ib;
    protected com.bytedance.sdk.openadsdk.core.widget.Sj kF;
    protected sef ley;
    private ILoader ndK;
    protected ImageView sP;
    private int sdp;
    protected com.bytedance.sdk.openadsdk.core.aa.sP.vS sef;
    protected String uA;
    protected TextView uP;
    protected sU uvD;
    protected int vS;
    protected TextView wE;
    protected com.bytedance.sdk.openadsdk.multipro.sP.Sj xD;
    protected com.bytedance.sdk.openadsdk.core.widget.Sj.vS.Sj xhi;
    protected RelativeLayout zR;
    protected int Fmk = -1;
    protected int dNu = 0;
    protected int TzV = 0;
    protected int RiZ = 0;
    protected int sU = 0;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    protected String f20971dx = "ダウンロード";
    protected boolean LD = false;
    protected boolean JcM = false;
    protected boolean WMZ = true;
    protected boolean Mts = false;
    protected String FPG = null;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    protected AtomicBoolean f20973jb = new AtomicBoolean(true);
    protected JSONArray Ei = null;
    private final AtomicInteger qRN = new AtomicInteger(0);
    private final AtomicInteger UHs = new AtomicInteger(0);
    private final AtomicInteger dwU = new AtomicInteger(0);

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    protected com.bytedance.sdk.openadsdk.core.sP.Sj f20970db = null;
    private final b.d IOh = new b.d() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.11
        @Override // u5.b.d
        public void Sj(boolean z10) {
            TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
            tTVideoLandingPageActivity.LD = z10;
            if (tTVideoLandingPageActivity.isFinishing()) {
                return;
            }
            if (!z10) {
                FPG.Sj((View) TTVideoLandingPageActivity.this.Sj, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) TTVideoLandingPageActivity.this.f20969aa.getLayoutParams();
                TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                marginLayoutParams.width = tTVideoLandingPageActivity2.RiZ;
                marginLayoutParams.height = tTVideoLandingPageActivity2.sU;
                marginLayoutParams.leftMargin = tTVideoLandingPageActivity2.TzV;
                marginLayoutParams.topMargin = tTVideoLandingPageActivity2.dNu;
                tTVideoLandingPageActivity2.f20969aa.setLayoutParams(marginLayoutParams);
                return;
            }
            FPG.Sj((View) TTVideoLandingPageActivity.this.Sj, 8);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) TTVideoLandingPageActivity.this.f20969aa.getLayoutParams();
            TTVideoLandingPageActivity tTVideoLandingPageActivity3 = TTVideoLandingPageActivity.this;
            tTVideoLandingPageActivity3.TzV = marginLayoutParams2.leftMargin;
            tTVideoLandingPageActivity3.dNu = marginLayoutParams2.topMargin;
            tTVideoLandingPageActivity3.RiZ = marginLayoutParams2.width;
            tTVideoLandingPageActivity3.sU = marginLayoutParams2.height;
            marginLayoutParams2.width = -1;
            marginLayoutParams2.height = -1;
            marginLayoutParams2.topMargin = 0;
            marginLayoutParams2.leftMargin = 0;
            tTVideoLandingPageActivity3.f20969aa.setLayoutParams(marginLayoutParams2);
        }
    };
    private final wE.Sj pfr = new wE.Sj() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.2
        /* JADX INFO: Access modifiers changed from: private */
        public void Sj(int i11) {
            com.bytedance.sdk.component.uA.vS vSVar;
            String str;
            TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
            if (tTVideoLandingPageActivity.Wjd == 0 && i11 != 0 && (vSVar = tTVideoLandingPageActivity.Sj) != null && (str = tTVideoLandingPageActivity.FPG) != null) {
                vSVar.a_(str);
            }
            com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar2 = TTVideoLandingPageActivity.this.sef;
            if (vSVar2 != null && vSVar2.getNativeVideoController() != null) {
                TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                if (!tTVideoLandingPageActivity2.JcM && tTVideoLandingPageActivity2.Wjd != i11) {
                    ((com.bytedance.sdk.openadsdk.core.aa.sP.TKC) tTVideoLandingPageActivity2.sef.getNativeVideoController()).TKC(i11);
                }
            }
            TTVideoLandingPageActivity.this.Wjd = i11;
        }

        @Override // com.bytedance.sdk.component.utils.wE.Sj
        public void Sj(Context context, Intent intent, boolean z10, final int i11) {
            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.2.1
                @Override // java.lang.Runnable
                public void run() {
                    Sj(i11);
                }
            });
        }
    };

    @SuppressLint({"StaticFieldLeak"})
    private static class Sj extends AsyncTask<Void, Void, Drawable> {
        private final Bitmap Sj;
        private final WeakReference<c> sP;

        private Sj(Bitmap bitmap, c cVar) {
            this.Sj = bitmap;
            this.sP = new WeakReference<>(cVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public Drawable doInBackground(Void... voidArr) {
            try {
                Bitmap bitmapSj = com.bytedance.sdk.component.adexpress.EjP.Sj.Sj(dNu.Sj(), this.Sj, 25);
                if (bitmapSj == null) {
                    return null;
                }
                return new BitmapDrawable(dNu.Sj().getResources(), bitmapSj);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("TTVideoLandingPage", th2.getMessage());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Drawable drawable) {
            WeakReference<c> weakReference;
            if (drawable == null || (weakReference = this.sP) == null || weakReference.get() == null) {
                return;
            }
            this.sP.get().Sj(drawable);
        }
    }

    private void Fmk() {
        Yf yf2 = new Yf(this);
        this.TEQ = yf2;
        yf2.sP(this.Sj).TKC(this.Dq).EjP(this.uA).sP(this.Ym).Sj(this.uvD).Sj(this.uvD.HpB()).Sj(this.Sj).sP("landingpage_split_screen").HiB(this.uvD.Lip());
    }

    private void Sj(final int i11) {
        if (this.TKC == null || !dNu()) {
            return;
        }
        JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.3
            @Override // java.lang.Runnable
            public void run() {
                FPG.Sj((View) TTVideoLandingPageActivity.this.TKC, i11);
            }
        });
    }

    private void Sj(final String str) {
        Button button;
        if (TextUtils.isEmpty(str) || (button = this.LqL) == null) {
            return;
        }
        button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.7
            @Override // java.lang.Runnable
            public void run() {
                TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                if (tTVideoLandingPageActivity.LqL == null || tTVideoLandingPageActivity.isFinishing()) {
                    return;
                }
                TTVideoLandingPageActivity.this.LqL.setText(str);
            }
        });
    }

    private void Sj(b bVar) {
        this.JcM = this.JcM || bVar.Zq();
        Boolean bool = Boolean.TRUE;
        com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_is_update_flag", bool);
        com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_isfromvideodetailpage", bool);
        com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_native_video_complete", Boolean.valueOf(this.JcM));
        com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_current_play_position", Long.valueOf(bVar.HiB()));
        com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_total_play_duration", Long.valueOf(bVar.Dq() + bVar.vS()));
        com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_duration", Long.valueOf(bVar.Dq()));
    }

    private void TzV() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isBackIntercept", true);
            this.TEQ.Sj("temai_back_event", jSONObject);
        } catch (Exception unused) {
        }
    }

    private void Zq() {
        if (this.sef == null || uvD()) {
            return;
        }
        this.sef.Fmk();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void aa() {
        sU sUVar = this.uvD;
        if (sUVar == null || sUVar.sdp() != 4) {
            return;
        }
        this.ley.setVisibility(0);
        Button button = (Button) findViewById(Zq.mZN);
        this.LqL = button;
        if (button != null) {
            Sj(sP());
            this.LqL.setOnClickListener(this.f20970db);
            this.LqL.setOnTouchListener(this.f20970db);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dNu() {
        return !TextUtils.isEmpty(this.FPG) && this.FPG.contains("__luban_sdk");
    }

    private void sef() {
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar = this.sef;
        if (vSVar == null || vSVar.getNativeVideoController() == null || uvD()) {
            return;
        }
        this.sef.Fmk();
    }

    private boolean uvD() {
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar = this.sef;
        if (vSVar == null || vSVar.getNativeVideoController() == null) {
            return true;
        }
        return this.sef.getNativeVideoController().Zq();
    }

    protected void Dq() {
        String strDwU;
        sU sUVar = this.uvD;
        if (sUVar == null || sUVar.sdp() != 4) {
            return;
        }
        FPG.Sj((View) this.zR, 0);
        if (!TextUtils.isEmpty(this.uvD.xu())) {
            strDwU = this.uvD.xu();
        } else if (TextUtils.isEmpty(this.uvD.gR())) {
            strDwU = !TextUtils.isEmpty(this.uvD.dwU()) ? this.uvD.dwU() : "";
        } else {
            strDwU = this.uvD.gR();
        }
        if (this.uvD.EZ() != null && this.uvD.EZ().Sj() != null) {
            FPG.Sj((View) this.kF, 0);
            FPG.Sj((View) this.f20972ib, 4);
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uvD.EZ(), this.kF, this.uvD);
        } else if (!TextUtils.isEmpty(strDwU)) {
            FPG.Sj((View) this.kF, 4);
            FPG.Sj((View) this.f20972ib, 0);
            this.f20972ib.setText(strDwU.substring(0, 1));
        }
        if (!TextUtils.isEmpty(this.uvD.Ir())) {
            this.wE.setText(this.uvD.Ir());
        }
        if (!TextUtils.isEmpty(strDwU)) {
            this.uP.setText(strDwU);
        }
        FPG.Sj((View) this.uP, 0);
        FPG.Sj((View) this.wE, 0);
    }

    protected void EjP() {
        if (HiB()) {
            try {
                com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar = new com.bytedance.sdk.openadsdk.core.aa.sP.vS(this.HiB, this.uvD, true, null);
                this.sef = vSVar;
                if (vSVar.getNativeVideoController() != null) {
                    this.sef.getNativeVideoController().Sj(false);
                }
                if (this.JcM) {
                    this.f20969aa.setVisibility(0);
                    this.f20969aa.removeAllViews();
                    this.f20969aa.addView(this.sef);
                    this.sef.sP(true);
                } else {
                    if (!this.Mts) {
                        this.Zq = 0L;
                    }
                    if (this.xD != null && this.sef.getNativeVideoController() != null) {
                        this.sef.getNativeVideoController().sP(this.xD.Jcg);
                        this.sef.getNativeVideoController().TKC(this.xD.HiB);
                        this.sef.Sj(dNu.EjP().TKC(String.valueOf(this.uvD.If())), "landingPageInit");
                    }
                    if (this.sef.Sj(this.Zq, this.WMZ, this.JcM)) {
                        this.f20969aa.setVisibility(0);
                        this.f20969aa.removeAllViews();
                        this.f20969aa.addView(this.sef);
                    }
                    if (this.sef.getNativeVideoController() != null) {
                        this.sef.getNativeVideoController().Sj(false);
                        this.sef.getNativeVideoController().Sj(this.IOh);
                    }
                }
                String strSj = this.uvD.Bml().get(0).Sj();
                com.bytedance.sdk.openadsdk.uA.EjP.Sj().Sj(strSj).Sj(this.uvD.Bml().get(0).sP()).sP(this.uvD.Bml().get(0).TKC()).HiB(FPG.HiB(dNu.Sj())).EjP(FPG.TKC(dNu.Sj())).TKC(2).Sj(new com.bytedance.sdk.openadsdk.uA.sP(this.uvD, strSj, new uvD<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.10
                    @Override // com.bytedance.sdk.component.HiB.uvD
                    public void Sj(int i11, String str, @Nullable Throwable th2) {
                    }

                    @Override // com.bytedance.sdk.component.HiB.uvD
                    public void Sj(com.bytedance.sdk.component.HiB.Ym<Bitmap> ym2) {
                        try {
                            new Sj(ym2.sP(), TTVideoLandingPageActivity.this.sef.getNativeVideoController().Fmk()).execute(new Void[0]);
                        } catch (Exception unused) {
                        }
                    }
                }), 4);
                this.sef.findViewById(520093726).setOnTouchListener(null);
                this.sef.findViewById(520093726).setOnClickListener(null);
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.sP("TTVideoLandingPage", e11.getMessage());
                if (this.sef == null) {
                    ApmHelper.reportCustomError("mNativeVideoTsView is null", "FUNCTION EXCEPTION", e11);
                }
            }
            if (this.Wjd == 0) {
                try {
                    Toast.makeText(this, ib.Sj(this, "tt_no_network"), 0).show();
                } catch (Throwable unused) {
                }
            }
        }
    }

    protected abstract boolean HiB();

    protected int Jcg() {
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar = this.sef;
        if (vSVar == null || vSVar.getNativeVideoController() == null) {
            return 0;
        }
        return this.sef.getNativeVideoController().TEQ();
    }

    protected abstract View Sj();

    @Override // com.bytedance.sdk.openadsdk.TEQ.EjP
    public void Sj(boolean z10, JSONArray jSONArray) {
        if (!z10 || jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        this.Ei = jSONArray;
    }

    protected void TEQ() {
        wE.Sj(this.pfr, this.HiB);
    }

    protected void TKC() {
        this.ley = (sef) findViewById(Zq.pfr);
        this.Sj = (com.bytedance.sdk.component.uA.vS) findViewById(Zq.f21129db);
        ImageView imageView = (ImageView) findViewById(520093720);
        this.sP = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    JSONObject jSONObjectSj;
                    TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                    if (tTVideoLandingPageActivity.Sj != null) {
                        com.bytedance.sdk.openadsdk.core.widget.Sj.vS.Sj sj2 = tTVideoLandingPageActivity.xhi;
                        if (sj2 != null) {
                            sj2.Sj();
                        }
                        if (TTVideoLandingPageActivity.this.Sj.uA()) {
                            TTVideoLandingPageActivity.this.Sj.TEQ();
                            return;
                        }
                        if (TTVideoLandingPageActivity.this.dNu()) {
                            TTVideoLandingPageActivity.this.onBackPressed();
                            return;
                        }
                        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar = TTVideoLandingPageActivity.this.sef;
                        if (vSVar == null || vSVar.getNativeVideoController() == null) {
                            jSONObjectSj = null;
                        } else {
                            TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                            jSONObjectSj = Mts.Sj(tTVideoLandingPageActivity2.uvD, tTVideoLandingPageActivity2.sef.getNativeVideoController().vS(), TTVideoLandingPageActivity.this.sef.getNativeVideoController().aa());
                        }
                        JSONObject jSONObject = jSONObjectSj;
                        TTVideoLandingPageActivity tTVideoLandingPageActivity3 = TTVideoLandingPageActivity.this;
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(tTVideoLandingPageActivity3.uvD, "embeded_ad", "detail_back", tTVideoLandingPageActivity3.vS(), TTVideoLandingPageActivity.this.Jcg(), jSONObject, (Jcg) null);
                        TTVideoLandingPageActivity.this.finish();
                    }
                }
            });
        }
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar = this.sef;
        if (vSVar != null) {
            vSVar.setIsAutoPlay(this.Mts);
        }
        ImageView imageView2 = (ImageView) findViewById(Zq.xD);
        this.TKC = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    JSONObject jSONObjectSj;
                    com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar2 = TTVideoLandingPageActivity.this.sef;
                    if (vSVar2 != null) {
                        if (vSVar2.getNativeVideoController() != null) {
                            TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                            jSONObjectSj = Mts.Sj(tTVideoLandingPageActivity.uvD, tTVideoLandingPageActivity.sef.getNativeVideoController().vS(), TTVideoLandingPageActivity.this.sef.getNativeVideoController().aa());
                        } else {
                            jSONObjectSj = null;
                        }
                        JSONObject jSONObject = jSONObjectSj;
                        TTVideoLandingPageActivity tTVideoLandingPageActivity2 = TTVideoLandingPageActivity.this;
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(tTVideoLandingPageActivity2.uvD, "embeded_ad", "detail_skip", tTVideoLandingPageActivity2.vS(), TTVideoLandingPageActivity.this.Jcg(), jSONObject, (Jcg) null);
                    }
                    TTVideoLandingPageActivity.this.finish();
                }
            });
        }
        this.EjP = (TextView) findViewById(Zq.nru);
        this.f20969aa = (FrameLayout) findViewById(Zq.Wjd);
        this.zR = (RelativeLayout) findViewById(Zq.Fm);
        this.f20972ib = (TextView) findViewById(Zq.Ei);
        this.uP = (TextView) findViewById(Zq.HpB);
        this.wE = (TextView) findViewById(Zq.xhi);
        this.kF = (com.bytedance.sdk.openadsdk.core.widget.Sj) findViewById(Zq.f21133jb);
        Dq();
    }

    protected void Ym() {
        try {
            wE.Sj(this.pfr);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar;
        if (this.LD && (vSVar = this.sef) != null && vSVar.getNativeVideoController() != null) {
            ((u5.a) this.sef.getNativeVideoController()).HiB(null, null);
            this.LD = false;
        } else if (!dNu() || this.f20973jb.getAndSet(true)) {
            super.onBackPressed();
        } else {
            TzV();
            Sj(0);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        aa();
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!com.bytedance.sdk.openadsdk.core.sef.HiB()) {
            finish();
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            getWindow().addFlags(16777216);
        } catch (Throwable unused) {
        }
        try {
            dNu.sP(this);
        } catch (Throwable unused2) {
        }
        this.Wjd = TzV.TKC(getApplicationContext());
        try {
            setContentView(Sj());
            this.HiB = this;
            Intent intent = getIntent();
            this.vS = intent.getIntExtra("sdk_version", 1);
            this.Dq = intent.getStringExtra("adid");
            this.uA = intent.getStringExtra("log_extra");
            this.Ym = intent.getIntExtra(EventConstants.KEY_SOURCE, -1);
            this.FPG = intent.getStringExtra("url");
            String stringExtra = intent.getStringExtra("web_title");
            this.fF = intent.getStringExtra("event_tag");
            this.HpB = intent.getStringExtra("gecko_id");
            this.Mts = intent.getBooleanExtra("video_is_auto_play", true);
            if (bundle != null && bundle.getLong("video_play_position") > 0) {
                this.Zq = bundle.getLong("video_play_position", 0L);
            }
            String stringExtra2 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_DATA);
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                String stringExtra3 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra3 != null) {
                    try {
                        this.uvD = com.bytedance.sdk.openadsdk.core.sP.Sj(new JSONObject(stringExtra3));
                    } catch (Exception unused3) {
                    }
                }
                sU sUVar = this.uvD;
                if (sUVar != null) {
                    this.Fmk = sUVar.HcZ();
                }
            } else {
                sU sUVarSP = kF.Sj().sP();
                this.uvD = sUVarSP;
                if (sUVarSP != null) {
                    this.Fmk = sUVarSP.HcZ();
                }
                kF.Sj().vS();
            }
            if (this.uvD == null) {
                finish();
                return;
            }
            if (!TextUtils.isEmpty(this.HpB)) {
                this.ndK = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().sP();
                int iSj = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(this.ndK, this.HpB);
                this.sdp = iSj;
                this.MuB = iSj > 0 ? 2 : 0;
            }
            if (stringExtra2 != null) {
                try {
                    this.xD = com.bytedance.sdk.openadsdk.multipro.sP.Sj.Sj(new JSONObject(stringExtra2));
                } catch (Exception unused4) {
                }
                com.bytedance.sdk.openadsdk.multipro.sP.Sj sj2 = this.xD;
                if (sj2 != null) {
                    this.Zq = sj2.Jcg;
                }
            }
            if (bundle != null) {
                String string = bundle.getString("material_meta");
                if (this.uvD == null) {
                    try {
                        this.uvD = com.bytedance.sdk.openadsdk.core.sP.Sj(new JSONObject(string));
                    } catch (Throwable unused5) {
                    }
                }
                long j11 = bundle.getLong("video_play_position");
                if (j11 > 0) {
                    this.Zq = j11;
                }
            }
            TKC();
            uA();
            Fmk();
            Sj(4);
            if (this.Sj != null) {
                com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.Sj(this.HiB).Sj(true).sP(false).Sj(this.Sj.getWebView());
                Ym ymSP = new Ym(this.uvD, this.Sj.getWebView(), new TEQ() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.1
                    @Override // com.bytedance.sdk.openadsdk.EjP.TEQ
                    public void Sj(int i11) {
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(TTVideoLandingPageActivity.this.sdp, TTVideoLandingPageActivity.this.dwU.get(), TTVideoLandingPageActivity.this.UHs.get(), TTVideoLandingPageActivity.this.qRN.get() - TTVideoLandingPageActivity.this.UHs.get(), TTVideoLandingPageActivity.this.uvD, "landingpage_split_screen", i11);
                    }
                }, this.MuB).sP(true);
                this.Fm = ymSP;
                this.xhi = ymSP.Sj;
                ymSP.Sj("landingpage_split_screen");
            }
            com.bytedance.sdk.component.uA.vS vSVar = this.Sj;
            if (vSVar != null) {
                vSVar.setLandingPage(true);
                this.Sj.setTag("landingpage_split_screen");
                this.Sj.setMaterialMeta(this.uvD.hif());
                this.Sj.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.HiB(this.HiB, this.TEQ, this.Dq, this.Fm, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.4
                    @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.HiB, android.webkit.WebViewClient
                    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                        try {
                            if (TextUtils.isEmpty(TTVideoLandingPageActivity.this.HpB)) {
                                return super.shouldInterceptRequest(webView, str);
                            }
                            TTVideoLandingPageActivity.this.qRN.incrementAndGet();
                            WebResourceResponseModel webResourceResponseModelSj = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(TTVideoLandingPageActivity.this.ndK, TTVideoLandingPageActivity.this.HpB, str);
                            if (webResourceResponseModelSj != null && webResourceResponseModelSj.getWebResourceResponse() != null) {
                                TTVideoLandingPageActivity.this.UHs.incrementAndGet();
                                return webResourceResponseModelSj.getWebResourceResponse();
                            }
                            if (webResourceResponseModelSj != null && webResourceResponseModelSj.getMsg() == 2) {
                                TTVideoLandingPageActivity.this.dwU.incrementAndGet();
                            }
                            return super.shouldInterceptRequest(webView, str);
                        } catch (Throwable th2) {
                            com.bytedance.sdk.component.utils.sU.Sj("TTVideoLandingPage", "shouldInterceptRequest url error", th2);
                            return super.shouldInterceptRequest(webView, str);
                        }
                    }
                });
                com.bytedance.sdk.component.uA.vS vSVar2 = this.Sj;
                vSVar2.setUserAgentString(com.bytedance.sdk.openadsdk.utils.TzV.Sj(vSVar2.getWebView(), this.vS));
            }
            com.bytedance.sdk.component.uA.vS vSVar3 = this.Sj;
            if (vSVar3 != null) {
                vSVar3.setMixedContentMode(0);
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.uvD, "landingpage_split_screen", this.MuB);
            com.bytedance.sdk.openadsdk.utils.sU.Sj(this.Sj, this.FPG);
            this.Sj.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.TEQ, this.Fm) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.5
                @Override // com.bytedance.sdk.openadsdk.core.widget.Sj.EjP, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i11) {
                    super.onProgressChanged(webView, i11);
                }
            });
            this.Sj.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.6
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str, String str2, String str3, String str4, long j12) {
                    com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar4 = TTVideoLandingPageActivity.this.Yf;
                    if (vSVar4 != null) {
                        vSVar4.EjP();
                    }
                }
            });
            TextView textView = this.EjP;
            if (textView != null) {
                if (TextUtils.isEmpty(stringExtra)) {
                    stringExtra = ib.Sj(this, "tt_web_title_default");
                }
                textView.setText(stringExtra);
            }
            TEQ();
            EjP();
            aa();
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(SystemClock.elapsedRealtime() - jElapsedRealtime, this.uvD, "landingpage_split_screen", this.ndK, this.HpB);
        } catch (Throwable unused6) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Ym();
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
            this.uvD.vS(false);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.component.uA.vS vSVar = this.Sj;
        if (vSVar != null) {
            com.bytedance.sdk.openadsdk.core.JcM.Sj(vSVar.getWebView());
        }
        this.Sj = null;
        Yf yf2 = this.TEQ;
        if (yf2 != null) {
            yf2.aa();
        }
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar2 = this.sef;
        if (vSVar2 != null && vSVar2.getNativeVideoController() != null) {
            this.sef.getNativeVideoController().EjP();
        }
        this.sef = null;
        this.uvD = null;
        Ym ym2 = this.Fm;
        if (ym2 != null) {
            ym2.EjP(true);
        }
        if (!TextUtils.isEmpty(this.HpB)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(this.UHs.get(), this.qRN.get(), this.uvD);
        }
        com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(this.ndK);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Zq();
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar = this.sef;
        if (vSVar == null || vSVar.getNativeVideoController() == null) {
            return;
        }
        Sj(this.sef.getNativeVideoController());
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!this.WMZ) {
            sef();
        }
        this.WMZ = false;
        Yf yf2 = this.TEQ;
        if (yf2 != null) {
            yf2.Ym();
        }
        Ym ym2 = this.Fm;
        if (ym2 != null) {
            ym2.Jcg();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        sU sUVar = this.uvD;
        bundle.putString("material_meta", sUVar != null ? sUVar.SP().toString() : null);
        bundle.putLong("video_play_position", this.Zq);
        bundle.putBoolean("is_complete", this.JcM);
        long jHiB = this.Zq;
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar = this.sef;
        if (vSVar != null && vSVar.getNativeVideoController() != null) {
            jHiB = this.sef.getNativeVideoController().HiB();
        }
        bundle.putLong("video_play_position", jHiB);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.openadsdk.utils.EjP.Sj(this, this.uvD);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        Ym ym2 = this.Fm;
        if (ym2 != null) {
            ym2.Dq();
        }
    }

    protected String sP() {
        sU sUVar = this.uvD;
        if (sUVar != null && !TextUtils.isEmpty(sUVar.Ir())) {
            this.f20971dx = this.uvD.Ir();
        }
        return this.f20971dx;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void uA() {
        sU sUVar = this.uvD;
        if (sUVar == null) {
            return;
        }
        this.Yf = com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg.Sj(this, sUVar, this.fF);
        com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this, this.uvD, this.fF, this.Ym);
        this.f20970db = sj2;
        sj2.Sj(false);
        this.f20970db.TKC(true);
        this.wE.setOnClickListener(this.f20970db);
        this.wE.setOnTouchListener(this.f20970db);
        this.f20970db.Sj(this.Yf);
    }

    protected long vS() {
        com.bytedance.sdk.openadsdk.core.aa.sP.vS vSVar = this.sef;
        if (vSVar == null || vSVar.getNativeVideoController() == null) {
            return 0L;
        }
        return this.sef.getNativeVideoController().Dq();
    }
}
