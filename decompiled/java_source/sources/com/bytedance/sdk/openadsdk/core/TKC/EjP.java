package com.bytedance.sdk.openadsdk.core.TKC;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.Dq.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.LqL;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.Wjd;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class EjP extends PAGBannerAd {
    private PAGBannerAdWrapperListener Dq;
    protected AdSlot EjP;
    TTDislikeDialogAbstract HiB;
    private final boolean Jcg;
    protected TKC Sj;
    protected sU TKC;
    private boolean Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f21033aa;
    protected final Context sP;
    private RiZ sef;
    private com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS uA;
    private boolean uvD;
    private final Queue<Long> TEQ = new LinkedList();
    private String Fmk = "banner_ad";
    private final AtomicBoolean Zq = new AtomicBoolean(false);
    protected final View.OnAttachStateChangeListener vS = new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.TKC.EjP.1
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            if (EjP.this.uvD) {
                return;
            }
            EjP ejP = EjP.this;
            ejP.Sj(ejP.Sj.getCurView(), EjP.this.TKC);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            EjP.this.Sj.TKC();
        }
    };

    /* JADX INFO: loaded from: classes2.dex */
    public interface Sj {
        void Sj();
    }

    private static class sP extends Dq {
        boolean Sj;
        WeakReference<EjP> TKC;
        sU sP;

        sP(boolean z10, sU sUVar, EjP ejP) {
            super("ReportWindowFocusChangedAdShow");
            this.Sj = z10;
            this.sP = sUVar;
            this.TKC = new WeakReference<>(ejP);
        }

        @Override // java.lang.Runnable
        public void run() {
            WeakReference<EjP> weakReference = this.TKC;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.TKC.get().sP(this.Sj, this.sP);
        }
    }

    public EjP(Context context, sU sUVar, AdSlot adSlot) {
        this.sP = context;
        this.TKC = sUVar;
        this.EjP = adSlot;
        Sj(context, sUVar, adSlot);
        this.Jcg = false;
        this.uvD = false;
    }

    private com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS Sj(sU sUVar) {
        if (sUVar.sdp() == 4) {
            return com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg.Sj(this.sP, sUVar, this.Fmk);
        }
        return null;
    }

    private com.bytedance.sdk.openadsdk.core.Jcg Sj(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return null;
        }
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            try {
                View childAt = viewGroup.getChildAt(i11);
                if (childAt instanceof com.bytedance.sdk.openadsdk.core.Jcg) {
                    return (com.bytedance.sdk.openadsdk.core.Jcg) childAt;
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(View view, RiZ riZ, sU sUVar, String str, Sj sj2) {
        uA.sP().Sj(str, sj2);
        Queue<Long> queue = this.TEQ;
        if (queue != null) {
            queue.offer(Long.valueOf(System.currentTimeMillis()));
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (riZ != null) {
                jSONObject.put("dynamic_show_type", riZ.getDynamicShowType());
                riZ.Sj(jSONObject, sUVar);
            }
            if (view != null) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("width", view.getWidth());
                    jSONObject2.put("height", view.getHeight());
                    jSONObject2.put("alpha", view.getAlpha());
                } catch (Throwable unused) {
                }
                jSONObject.put("root_view", jSONObject2.toString());
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, this.Fmk, jSONObject);
            com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(sUVar);
        } catch (JSONException unused2) {
            com.bytedance.sdk.component.utils.sU.sP("PAGBannerAdImpl", "onShowFun json error");
        }
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.Dq;
        if (pAGBannerAdWrapperListener != null) {
            pAGBannerAdWrapperListener.onAdShow(view, sUVar.sdp());
        }
        if (sUVar.eI()) {
            Mts.Sj(sUVar, view);
        }
        TKC tkc = this.Sj;
        if (tkc == null || tkc.getCurView() == null) {
            return;
        }
        this.Sj.getCurView().TEQ();
        this.Sj.getCurView().Dq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(com.bytedance.sdk.openadsdk.core.Jcg jcg, boolean z10, sU sUVar) {
        sP(sUVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(boolean z10, sU sUVar) {
        if (z10 && this.TKC.UmR() && !this.TKC.Hs()) {
            this.TKC.Jcg(true);
            sU sUVar2 = this.TKC;
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar2, this.Fmk, sUVar2.at());
        }
        JcM.sP(new sP(z10, sUVar, this), 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC() {
        sP();
    }

    private void sP(sU sUVar) {
        Queue<Long> queue = this.TEQ;
        if (queue == null || queue.size() <= 0 || sUVar == null) {
            return;
        }
        try {
            long jLongValue = this.TEQ.poll().longValue();
            if (jLongValue <= 0 || this.sef == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(String.valueOf(System.currentTimeMillis() - jLongValue), sUVar, this.Fmk, this.sef.getAdShowTime());
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("PAGBannerAdImpl", e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(boolean z10, sU sUVar) {
        Long lPoll;
        try {
            if (z10) {
                this.TEQ.offer(Long.valueOf(System.currentTimeMillis()));
            } else {
                if (this.TEQ.size() <= 0 || this.sef == null || (lPoll = this.TEQ.poll()) == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(String.valueOf(System.currentTimeMillis() - lPoll.longValue()), sUVar, this.Fmk, this.sef.getAdShowTime());
            }
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.sU.sP("PAGBannerAdImpl", e11.getMessage());
        }
    }

    public Sj Sj() {
        return new Sj() { // from class: com.bytedance.sdk.openadsdk.core.TKC.EjP.7
            private View Sj(boolean z10) {
                com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(EjP.this.sP);
                ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                tkc.setBackgroundColor(-1);
                tkc.setLayoutParams(layoutParams);
                View view = new View(EjP.this.sP);
                ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                view.setAlpha(0.3f);
                view.setBackgroundColor(Color.parseColor("#F3F7F8"));
                tkc.addView(view, layoutParams2);
                com.bytedance.sdk.openadsdk.core.HiB.TKC tkc2 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(EjP.this.sP);
                ViewGroup.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
                if (z10) {
                    tkc2.setBackground(ib.TKC(EjP.this.sP, "tt_ad_closed_background_300_250"));
                } else {
                    tkc2.setBackground(ib.TKC(EjP.this.sP, "tt_ad_closed_background_320_50"));
                }
                tkc.addView(tkc2, layoutParams3);
                EjP ejP = EjP.this;
                PAGLogoView pAGLogoViewCreatePAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(ejP.sP, ejP.TKC);
                pAGLogoViewCreatePAGLogoViewByMaterial.setId(520093739);
                FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
                if (z10) {
                    int iSP = FPG.sP(EjP.this.sP, 16.0f);
                    layoutParams4.width = FPG.sP(EjP.this.sP, 77.0f);
                    layoutParams4.height = FPG.sP(EjP.this.sP, 14.0f);
                    layoutParams4.leftMargin = iSP;
                    layoutParams4.topMargin = iSP;
                } else {
                    int iSP2 = FPG.sP(EjP.this.sP, 8.0f);
                    layoutParams4.width = FPG.sP(EjP.this.sP, 45.0f);
                    layoutParams4.height = FPG.sP(EjP.this.sP, 8.18f);
                    layoutParams4.leftMargin = iSP2;
                    layoutParams4.topMargin = iSP2;
                }
                tkc2.addView(pAGLogoViewCreatePAGLogoViewByMaterial, layoutParams4);
                com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(EjP.this.sP);
                FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
                layoutParams5.gravity = 17;
                dq2.setAlpha(0.5f);
                dq2.setLines(1);
                dq2.setText(ib.Sj(EjP.this.sP, "tt_ad_is_closed"));
                if (z10) {
                    dq2.setTextSize(18.0f);
                } else {
                    dq2.setTextSize(12.0f);
                }
                tkc2.addView(dq2, layoutParams5);
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.TKC.EjP.7.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        EjP ejP2 = EjP.this;
                        TTWebsiteActivity.Sj(ejP2.sP, ejP2.TKC, ejP2.Fmk);
                    }
                };
                pAGLogoViewCreatePAGLogoViewByMaterial.setOnClickListener(onClickListener);
                dq2.setOnClickListener(onClickListener);
                return tkc;
            }

            @Override // com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj
            public void Sj() {
                int width = EjP.this.sef.getWidth();
                int height = EjP.this.sef.getHeight();
                View viewSj = Sj(((double) height) >= Math.floor((((double) width) * 450.0d) / 600.0d));
                EjP.this.sef.sef();
                EjP.this.sef.removeAllViews();
                EjP.this.sef.addView(viewSj, new ViewGroup.LayoutParams(width, height));
                EjP.this.sef.setClickCreativeListener(null);
                EjP.this.sef.setClickListener(null);
                if (EjP.this.Dq != null) {
                    EjP.this.Dq.onAdDismissed();
                }
                EjP.this.uvD = true;
            }
        };
    }

    public void Sj(Context context, sU sUVar, AdSlot adSlot) {
        TKC tkc = new TKC(context, sUVar, adSlot);
        this.Sj = tkc;
        tkc.addOnAttachStateChangeListener(this.vS);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    protected void Sj(@NonNull final RiZ riZ, @NonNull final sU sUVar) {
        final com.bytedance.sdk.openadsdk.core.Jcg jcg;
        if (riZ == null || sUVar == null) {
            return;
        }
        this.TKC = sUVar;
        this.uA = Sj(sUVar);
        this.sef = riZ;
        final String strSj = com.bytedance.sdk.openadsdk.utils.ib.Sj();
        final Sj Sj2 = Sj();
        riZ.setClosedListenerKey(strSj);
        riZ.setBannerClickClosedListener(Sj2);
        riZ.setBackupListener(new com.bytedance.sdk.component.adexpress.sP.TKC() { // from class: com.bytedance.sdk.openadsdk.core.TKC.EjP.2
            @Override // com.bytedance.sdk.component.adexpress.sP.TKC
            public boolean Sj(ViewGroup viewGroup, int i11) {
                try {
                    riZ.aa();
                    if (!EjP.this.TKC.Ph()) {
                        com.bytedance.sdk.openadsdk.core.TKC.Sj sj2 = new com.bytedance.sdk.openadsdk.core.TKC.Sj(riZ.getContext());
                        sj2.setClosedListenerKey(strSj);
                        EjP ejP = EjP.this;
                        sj2.Sj(ejP.TKC, riZ, ejP.uA);
                        sj2.setDislikeOuter(EjP.this.HiB);
                        sj2.setAdInteractionListener(EjP.this.Dq);
                        return true;
                    }
                    Jcg jcg2 = new Jcg(riZ.getContext());
                    jcg2.setClosedListenerKey(strSj);
                    EjP ejP2 = EjP.this;
                    jcg2.Sj(ejP2.TKC, riZ, ejP2.uA);
                    jcg2.setDislikeOuter(EjP.this.HiB);
                    jcg2.setAdInteractionListener(EjP.this.Dq);
                    riZ.setVastVideoHelper(jcg2);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
        if (this.Jcg) {
            Wjd.Sj(riZ, true, 1, new Wjd.sP() { // from class: com.bytedance.sdk.openadsdk.core.TKC.EjP.4
                @Override // com.bytedance.sdk.openadsdk.utils.Wjd.sP
                public void Sj() {
                    EjP.this.TKC();
                }

                @Override // com.bytedance.sdk.openadsdk.utils.Wjd.sP
                public void Sj(View view, boolean z10) {
                    if (!z10) {
                        com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(EjP.this.TKC, 8);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(EjP.this.TKC, 4);
                    if (EjP.this.Zq.compareAndSet(false, true)) {
                        EjP.this.Sj(view, riZ, sUVar, strSj, Sj2);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.utils.Wjd.sP
                public void Sj(boolean z10) {
                    EjP.this.Sj(z10, sUVar);
                }

                @Override // com.bytedance.sdk.openadsdk.utils.Wjd.sP
                public void sP() {
                    EjP.this.Sj((com.bytedance.sdk.openadsdk.core.Jcg) null, true, sUVar);
                }
            }, null);
            jcg = null;
        } else {
            com.bytedance.sdk.openadsdk.core.Jcg jcgSj = Sj(riZ);
            if (jcgSj == null) {
                jcgSj = new com.bytedance.sdk.openadsdk.core.Jcg(this.sP, riZ);
                riZ.addView(jcgSj);
            }
            jcg = jcgSj;
            jcg.setCallback(new com.bytedance.sdk.openadsdk.core.Jcg.Sj() { // from class: com.bytedance.sdk.openadsdk.core.TKC.EjP.3
                @Override // com.bytedance.sdk.openadsdk.core.Jcg.Sj
                public void Sj() {
                    EjP.this.TKC();
                }

                @Override // com.bytedance.sdk.openadsdk.core.Jcg.Sj
                public void Sj(View view) {
                    if (EjP.this.Zq.compareAndSet(false, true)) {
                        EjP.this.Sj(view, riZ, sUVar, strSj, Sj2);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.Jcg.Sj
                public void Sj(boolean z10) {
                    EjP.this.Sj(z10, sUVar);
                }

                @Override // com.bytedance.sdk.openadsdk.core.Jcg.Sj
                public void sP() {
                    EjP.this.Sj(jcg, false, sUVar);
                }
            });
        }
        Context contextSj = com.bytedance.sdk.component.utils.sP.Sj(riZ);
        if (contextSj == null) {
            contextSj = this.sP;
        }
        com.bytedance.sdk.openadsdk.core.Dq.uA uAVar = new com.bytedance.sdk.openadsdk.core.Dq.uA(contextSj, sUVar, this.Fmk, 2);
        uAVar.Sj(riZ);
        uAVar.Sj(this);
        uAVar.Sj(this.uA);
        uAVar.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.core.TKC.EjP.5
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
            public void Sj(View view, int i11) {
                if (EjP.this.Dq != null) {
                    EjP.this.Dq.onAdClicked();
                }
            }
        });
        riZ.setClickListener(uAVar);
        com.bytedance.sdk.openadsdk.core.Dq.Dq dq2 = new com.bytedance.sdk.openadsdk.core.Dq.Dq(this.sP, sUVar, this.Fmk, 2);
        dq2.Sj((View) riZ);
        dq2.Sj(this);
        dq2.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.core.TKC.EjP.6
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
            public void Sj(View view, int i11) {
                if (EjP.this.Dq != null) {
                    EjP.this.Dq.onAdClicked();
                }
            }
        });
        RiZ riZ2 = this.sef;
        if (riZ2 instanceof TzV) {
            dq2.Sj(((TzV) riZ2).getVideoController());
        }
        dq2.Sj(this.uA);
        riZ.setClickCreativeListener(dq2);
        if (this.Jcg) {
            return;
        }
        jcg.setNeedCheckingShow(true);
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public void destroy() {
        TKC tkc = this.Sj;
        if (tkc != null) {
            try {
                tkc.TKC();
                this.Sj.removeOnAttachStateChangeListener(this.vS);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public PAGBannerSize getBannerSize() {
        return this.EjP != null ? new PAGBannerSize((int) this.EjP.getExpressViewAcceptedWidth(), (int) this.EjP.getExpressViewAcceptedHeight()) : new PAGBannerSize(0, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public View getBannerView() {
        com.bytedance.sdk.openadsdk.utils.sP.Sj(this.TKC);
        IPMiBroadcastReceiver.Sj(this.sP, this.TKC);
        return this.Sj;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Object getExtraInfo(String str) {
        sU sUVar = this.TKC;
        if (sUVar == null || sUVar.QZ() == null) {
            return null;
        }
        try {
            return this.TKC.QZ().get(str);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("PAGBannerAdImpl", th2.getMessage());
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        sU sUVar = this.TKC;
        if (sUVar != null) {
            return sUVar.QZ();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d11, String str, String str2) {
        if (this.f21033aa) {
            return;
        }
        LqL.Sj(this.TKC, d11, str, str2);
        this.f21033aa = true;
    }

    public void sP() {
        this.TKC.Sj(SystemClock.elapsedRealtime());
        this.Sj.sP();
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public void setAdInteractionCallback(PAGBannerAdInteractionCallback pAGBannerAdInteractionCallback) {
        HiB hiB = new HiB(pAGBannerAdInteractionCallback);
        this.Dq = hiB;
        this.Sj.setExpressInteractionListener(hiB);
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public void setAdInteractionListener(PAGBannerAdInteractionListener pAGBannerAdInteractionListener) {
        HiB hiB = new HiB(pAGBannerAdInteractionListener);
        this.Dq = hiB;
        this.Sj.setExpressInteractionListener(hiB);
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d11) {
        if (this.Ym) {
            return;
        }
        LqL.Sj(this.TKC, d11);
        this.Ym = true;
    }
}
