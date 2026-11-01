package com.bytedance.sdk.openadsdk.core.aa.sP;

import a6.a;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Message;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.HiB.uvD;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.core.widget.TzV;
import com.bytedance.sdk.openadsdk.core.widget.dNu;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.TEQ;
import com.bytedance.sdk.openadsdk.utils.Zq;
import com.hisavana.common.tracking.TrackingKey;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
import u5.b;
import u5.c;

/* JADX INFO: loaded from: classes3.dex */
public class HiB implements c, a, LqL.Sj, com.bytedance.sdk.openadsdk.core.sP.Sj.InterfaceC0278Sj, TzV.sP, dNu.Sj {
    ImageView Dq;
    com.bykv.vk.openvk.Sj.Sj.Sj.vS.a EjP;
    private vS.Sj FPG;
    com.bytedance.sdk.openadsdk.core.widget.Sj Fmk;
    ImageView HiB;
    com.bytedance.sdk.openadsdk.core.sP.Sj JcM;
    View Jcg;
    com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS LD;
    Sj LqL;
    boolean Mts;
    int RiZ;
    protected final int Sj;
    View TEQ;
    ViewGroup TKC;
    int TzV;
    com.bytedance.sdk.openadsdk.core.sP.Sj WMZ;
    private long Wjd;
    boolean Yf;
    ImageView Ym;
    TextView Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    View f21052aa;
    int dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    boolean f21053dx;
    b fF;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    int f21054ib;
    int kF;
    TzV ley;
    protected final int sP;
    int sU;
    TextView sef;
    View uA;
    sU uP;
    TextView uvD;
    View vS;
    Context wE;
    private final String xD;
    boolean zR;

    public HiB(Context context, ViewGroup viewGroup, boolean z10, int i11, sU sUVar, b bVar) {
        this(context, viewGroup, z10, i11, sUVar, bVar, true);
    }

    public HiB(Context context, ViewGroup viewGroup, boolean z10, int i11, sU sUVar, b bVar, boolean z11) {
        this.Sj = 228;
        this.sP = 160;
        this.f21053dx = true;
        this.Yf = true;
        this.Mts = true;
        this.xD = Build.MODEL;
        if (this instanceof EjP) {
            return;
        }
        this.wE = com.bytedance.sdk.openadsdk.core.dNu.Sj().getApplicationContext();
        EjP(z11);
        this.TKC = viewGroup;
        this.f21053dx = z10;
        this.kF = i11;
        this.fF = bVar;
        this.uP = sUVar;
        EjP(8);
        Sj(context, this.TKC);
        EjP();
        aa();
    }

    private int HiB(int i11) {
        if (this.RiZ <= 0 || this.sU <= 0) {
            return 0;
        }
        int iSP = FPG.sP(this.wE, 228.0f);
        int iSP2 = FPG.sP(this.wE, 160.0f);
        int i12 = (int) (this.sU * ((i11 * 1.0f) / this.RiZ));
        if (i12 > iSP) {
            return iSP;
        }
        return i12 < iSP2 ? iSP2 : i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(final int i11, final String str, final sU sUVar) {
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(new Dq("load_vast_icon_fail") { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.HiB.7
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", i11);
                    jSONObject.put(TrackingKey.DESCRIPTION, i11 + ":" + str);
                    jSONObject.put("url", HiB.this.uP.EZ().Sj());
                } catch (Throwable unused) {
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(HiB.this.uP, HiB.this.uP != null ? Mts.TKC(sUVar.DKa()) : null, "load_vast_icon_fail", jSONObject);
            }
        });
    }

    private boolean uP() {
        return sU.HiB(this.uP) && (!com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(this.uP.fF()) ? this.uP.xhi() == null : this.uP.ndK() == null) && this.uP.LD() == 1;
    }

    private void vS(int i11) {
        FPG.Sj(this.f21052aa, i11);
    }

    public void Dq() {
        FPG.HiB(this.vS);
    }

    void EjP() {
        this.EjP.Sj(this);
        this.HiB.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.HiB.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (HiB.this.uvD()) {
                    TextView textView = HiB.this.uvD;
                    if (textView == null || textView.getVisibility() != 0) {
                        HiB hiB = HiB.this;
                        hiB.LqL.Sj(hiB, view);
                    }
                }
            }
        });
    }

    public void EjP(int i11) {
        this.f21054ib = i11;
        FPG.Sj((View) this.TKC, i11);
    }

    public void EjP(boolean z10) {
        this.Yf = z10;
        if (z10) {
            com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = this.JcM;
            if (sj2 != null) {
                sj2.Sj(true);
            }
            com.bytedance.sdk.openadsdk.core.sP.Sj sj3 = this.WMZ;
            if (sj3 != null) {
                sj3.Sj(true);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj4 = this.JcM;
        if (sj4 != null) {
            sj4.Sj(false);
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj5 = this.WMZ;
        if (sj5 != null) {
            sj5.Sj(false);
        }
    }

    public com.bykv.vk.openvk.Sj.Sj.Sj.vS.a Fmk() {
        return this.EjP;
    }

    public void HiB() {
    }

    public void Jcg() {
        sU sUVar;
        FPG.vS(this.vS);
        FPG.vS(this.Jcg);
        if (this.Dq != null && (sUVar = this.uP) != null && sUVar.UHs() != null && this.uP.UHs().r() != null) {
            FPG.vS(this.Dq);
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uP.UHs().r(), this.uP.UHs().t(), this.uP.UHs().C(), this.Dq, this.uP);
        }
        if (this.HiB.getVisibility() == 0) {
            FPG.Sj((View) this.HiB, 8);
        }
    }

    void RiZ() {
        try {
            FPG.Sj(this.TEQ, 8);
            FPG.Sj((View) this.Ym, 8);
            FPG.Sj(this.f21052aa, 8);
            FPG.Sj((View) this.Fmk, 8);
            FPG.Sj((View) this.sef, 8);
            FPG.Sj((View) this.Zq, 8);
            FPG.Sj((View) this.uvD, 8);
        } catch (Exception unused) {
        }
    }

    @Override // u5.c
    public void Sj() {
        Sj(false, this.f21053dx);
        RiZ();
    }

    public void Sj(int i11) {
    }

    public void Sj(int i11, int i12) {
        if (i11 == -1) {
            i11 = FPG.TKC(this.wE);
        }
        if (i11 <= 0) {
            return;
        }
        this.dNu = i11;
        if (dx() || TEQ() || (this.kF & 8) == 8) {
            this.TzV = i12;
        } else {
            this.TzV = HiB(i11);
        }
        sP(this.dNu, this.TzV);
    }

    public void Sj(long j11) {
    }

    public void Sj(long j11, long j12) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.view.ViewGroup, android.widget.RelativeLayout] */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.view.View, com.bykv.vk.openvk.Sj.Sj.Sj.vS.a] */
    void Sj(Context context, View view) {
        System.currentTimeMillis();
        sU sUVar = this.uP;
        if ((sUVar == null || ((!sUVar.MGU() && !this.uP.ewz()) || Fmk.gq().AVc())) && view != null) {
            view.setKeepScreenOn(true);
        }
        b bVar = this.fF;
        ?? tkc = (bVar == null || !bVar.dNu()) ? new com.bykv.vk.openvk.Sj.Sj.Sj.vS.TKC(this.wE) : new com.bykv.vk.openvk.Sj.Sj.Sj.vS.EjP(this.wE);
        if (view instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            ((RelativeLayout) view).addView(tkc, 0, layoutParams);
        }
        FPG.Sj((View) tkc, 8);
        this.EjP = tkc;
        this.HiB = (ImageView) view.findViewById(Zq.f21137vb);
        this.vS = view.findViewById(Zq.GMp);
        this.Jcg = view.findViewById(Zq.TX);
        this.Dq = (ImageView) view.findViewById(Zq.hzV);
        this.uA = view.findViewById(Zq.f21135mj);
        System.currentTimeMillis();
    }

    @Override // a6.a
    public void Sj(SurfaceTexture surfaceTexture, int i11, int i12) {
        this.zR = true;
        if (uvD()) {
            this.LqL.Sj(this, surfaceTexture);
        }
    }

    @Override // u5.c
    public void Sj(Drawable drawable) {
        ViewGroup viewGroup = this.TKC;
        if (viewGroup != null) {
            viewGroup.setBackgroundDrawable(drawable);
        }
    }

    public void Sj(Message message) {
    }

    @Override // a6.a
    public void Sj(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.EjP.getHolder()) {
            return;
        }
        this.zR = true;
        if (uvD()) {
            this.LqL.Sj(this, surfaceHolder);
        }
    }

    @Override // a6.a
    public void Sj(SurfaceHolder surfaceHolder, int i11, int i12, int i13) {
        if (surfaceHolder != this.EjP.getHolder()) {
            return;
        }
        uvD();
    }

    void Sj(View view, Context context) {
        View view2;
        if (view == null || context == null || (view2 = this.uA) == null || view2.getParent() == null || this.TEQ != null) {
            return;
        }
        this.TEQ = this.uA;
        this.Ym = (ImageView) view.findViewById(Zq.Ph);
        this.f21052aa = view.findViewById(Zq.f21131gq);
        this.Fmk = (com.bytedance.sdk.openadsdk.core.widget.Sj) view.findViewById(Zq.f21133jb);
        this.sef = (TextView) view.findViewById(Zq.Ei);
        this.Zq = (TextView) view.findViewById(Zq.HpB);
        this.uvD = (TextView) view.findViewById(Zq.xhi);
    }

    public void Sj(View view, boolean z10) {
    }

    public void Sj(ViewGroup viewGroup) {
    }

    public void Sj(PAGNativeAd pAGNativeAd) {
        com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = this.JcM;
        if (sj2 != null) {
            sj2.Sj(pAGNativeAd);
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj3 = this.WMZ;
        if (sj3 != null) {
            sj3.Sj(pAGNativeAd);
        }
    }

    public void Sj(vS.Sj sj2) {
        this.FPG = sj2;
    }

    /* JADX WARN: Code duplicated, block: B:92:0x0218  */
    @SuppressLint({"ClickableViewAccessibility"})
    public void Sj(final sU sUVar, WeakReference<Context> weakReference, boolean z10) {
        String strGR;
        sU sUVar2;
        sU sUVar3;
        if (sUVar == null) {
            return;
        }
        Sj(false, this.f21053dx);
        Sj(this.TKC, com.bytedance.sdk.openadsdk.core.dNu.Sj());
        View view = this.TEQ;
        if (view != null) {
            FPG.Sj(view, 0);
        }
        ImageView imageView = this.Ym;
        if (imageView != null) {
            FPG.Sj((View) imageView, 0);
        }
        FPG.Sj(this.f21052aa, 0);
        if (this.Ym != null && (sUVar3 = this.uP) != null && sUVar3.UHs() != null && this.uP.UHs().r() != null) {
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uP.UHs().r(), this.uP.UHs().t(), this.uP.UHs().C(), this.Ym, sUVar);
        }
        if (!TextUtils.isEmpty(sUVar.dwU())) {
            strGR = sUVar.dwU();
        } else if (TextUtils.isEmpty(sUVar.xu())) {
            strGR = !TextUtils.isEmpty(sUVar.gR()) ? sUVar.gR() : "";
        } else {
            strGR = sUVar.xu();
        }
        if (this.Fmk != null && (sUVar2 = this.uP) != null && sUVar2.EZ() != null && this.uP.EZ().Sj() != null) {
            FPG.Sj((View) this.Fmk, 0);
            FPG.Sj((View) this.sef, 4);
            sU sUVar4 = this.uP;
            if (sUVar4 == null || !sUVar4.Ph()) {
                com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.uP.EZ(), this.Fmk, sUVar);
            } else {
                com.bytedance.sdk.openadsdk.uA.EjP.Sj(this.uP.EZ()).TKC(2).Sj(new com.bytedance.sdk.openadsdk.uA.sP(sUVar, this.uP.EZ().Sj(), new uvD<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.HiB.5
                    @Override // com.bytedance.sdk.component.HiB.uvD
                    public void Sj(int i11, String str, Throwable th2) {
                        HiB.this.Sj(i11, str, sUVar);
                    }

                    @Override // com.bytedance.sdk.component.HiB.uvD
                    public void Sj(Ym<Bitmap> ym2) {
                        if (ym2 == null || ym2.sP() == null) {
                            return;
                        }
                        com.bytedance.sdk.openadsdk.core.widget.Sj sj2 = HiB.this.Fmk;
                        if (sj2 != null) {
                            sj2.setImageBitmap(ym2.sP());
                        }
                        com.bytedance.sdk.openadsdk.EjP.TKC.sP(HiB.this.uP, HiB.this.uP != null ? Mts.TKC(sUVar.DKa()) : null, "load_vast_icon_success", (JSONObject) null);
                    }
                }));
                if (this.uP.GMp() != null && this.uP.GMp().sP() != null) {
                    this.uP.GMp().sP().sP(0L);
                }
            }
            sU sUVar5 = this.uP;
            if (sUVar5 != null && sUVar5.Ph()) {
                try {
                    this.Fmk.setTag(570425345, "VAST_ICON");
                } catch (Throwable unused) {
                }
            }
            sU sUVar6 = this.uP;
            if (sUVar6 != null && sUVar6.GMp() != null && this.uP.GMp().sP() != null) {
                final com.bytedance.sdk.openadsdk.core.Ym.sP sPVarSP = this.uP.GMp().sP();
                com.bytedance.sdk.openadsdk.core.widget.Sj sj2 = this.Fmk;
                if (sj2 != null) {
                    sj2.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.HiB.6
                        @Override // java.lang.Runnable
                        public void run() {
                            com.bytedance.sdk.openadsdk.core.Ym.sP sPVar;
                            com.bytedance.sdk.openadsdk.core.widget.Sj sj3 = HiB.this.Fmk;
                            if (sj3 == null || !sj3.isShown() || (sPVar = sPVarSP) == null) {
                                return;
                            }
                            sPVar.sP(HiB.this.getVideoProgress());
                        }
                    });
                }
            }
            if (uP()) {
                this.Fmk.setOnClickListener(this.WMZ);
                this.Fmk.setOnTouchListener(this.WMZ);
            } else {
                this.Fmk.setOnClickListener(this.JcM);
                this.Fmk.setOnTouchListener(this.JcM);
            }
        } else if (!TextUtils.isEmpty(strGR)) {
            FPG.Sj((View) this.Fmk, 4);
            FPG.Sj((View) this.sef, 0);
            TextView textView = this.sef;
            if (textView != null) {
                textView.setText(strGR.substring(0, 1));
                if (uP()) {
                    this.sef.setOnClickListener(this.WMZ);
                    this.sef.setOnTouchListener(this.WMZ);
                } else {
                    this.sef.setOnClickListener(this.JcM);
                    this.sef.setOnTouchListener(this.JcM);
                }
            }
        }
        if (this.Zq != null && !TextUtils.isEmpty(strGR)) {
            this.Zq.setText(strGR);
            this.Zq.setTag(570425345, "VAST_TITLE");
        }
        FPG.Sj((View) this.Zq, 0);
        FPG.Sj((View) this.uvD, 0);
        String strIr = sUVar.Ir();
        if (TextUtils.isEmpty(strIr)) {
            int iSdp = sUVar.sdp();
            if (iSdp == 2 || iSdp == 3) {
                strIr = ib.Sj(this.wE, "tt_video_mobile_go_detail");
            } else if (iSdp == 4) {
                strIr = ib.Sj(this.wE, "tt_video_download_apk");
            } else if (iSdp == 5) {
                strIr = ib.Sj(this.wE, "tt_video_dial_phone");
            } else if (iSdp != 8) {
                strIr = ib.Sj(this.wE, "tt_video_mobile_go_detail");
            } else {
                strIr = ib.Sj(this.wE, "tt_video_mobile_go_detail");
            }
        }
        TextView textView2 = this.uvD;
        if (textView2 != null) {
            textView2.setText(strIr);
            this.uvD.setOnClickListener(this.JcM);
            this.uvD.setOnTouchListener(this.JcM);
        }
        if (this.Mts) {
            return;
        }
        vS(4);
    }

    @Override // u5.c
    @SuppressLint({"ClickableViewAccessibility"})
    public /* bridge */ /* synthetic */ void Sj(Object obj, WeakReference weakReference, boolean z10) {
        Sj((sU) obj, (WeakReference<Context>) weakReference, z10);
    }

    public void Sj(String str) {
    }

    public void Sj(u5.a aVar) {
        if (aVar instanceof Sj) {
            this.LqL = (Sj) aVar;
            sef();
        }
    }

    @Override // u5.c
    public void Sj(boolean z10) {
        this.Mts = z10;
    }

    public void Sj(boolean z10, boolean z11) {
        FPG.Sj((View) this.HiB, 8);
    }

    public void Sj(boolean z10, boolean z11, boolean z12) {
        FPG.Sj((View) this.HiB, (!z10 || this.vS.getVisibility() == 0) ? 8 : 0);
    }

    public boolean Sj(int i11, y5.b bVar, boolean z10) {
        TzV tzV = this.ley;
        return tzV == null || tzV.Sj(i11, bVar, z10);
    }

    @Override // a6.a
    public boolean Sj(SurfaceTexture surfaceTexture) {
        this.zR = false;
        if (!uvD()) {
            return true;
        }
        this.LqL.sP(this, surfaceTexture);
        return true;
    }

    public boolean TEQ() {
        return false;
    }

    @Override // u5.c
    public View TKC() {
        return this.TKC;
    }

    public void TKC(int i11) {
        FPG.Sj((View) this.TKC, 0);
        com.bykv.vk.openvk.Sj.Sj.Sj.vS.a aVar = this.EjP;
        if (aVar != null) {
            aVar.setVisibility(i11);
        }
    }

    public void TKC(int i11, int i12) {
        this.RiZ = i11;
        this.sU = i12;
    }

    public void TKC(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (this.TKC.getParent() == null) {
            viewGroup.addView(this.TKC);
        }
        EjP(0);
    }

    public void TKC(boolean z10) {
    }

    @TargetApi(14)
    public void TzV() {
        FPG.Sj((View) this.TKC, 0);
        com.bykv.vk.openvk.Sj.Sj.Sj.vS.a aVar = this.EjP;
        if (aVar != null) {
            FPG.Sj(aVar.getView(), 0);
        }
    }

    public void Ym() {
        Sj(true, false);
    }

    public void Zq() {
        TzV tzV = this.ley;
        if (tzV != null) {
            tzV.Sj(false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003b  */
    /* JADX WARN: Code duplicated, block: B:22:0x005c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0062  */
    /* JADX WARN: Code duplicated, block: B:31:0x0094  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    void aa() {
        String str;
        int i11;
        String str2;
        int i12;
        com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar;
        com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar2;
        com.bytedance.sdk.openadsdk.core.sP.Sj sj2;
        String str3 = this.Yf ? "embeded_ad" : "embeded_ad_landingpage";
        if (this.uP.TT()) {
            str2 = "rewarded_video";
            i12 = 7;
        } else {
            if (!this.uP.Ss()) {
                if (this.uP.ewz()) {
                    str2 = "banner_ad";
                    i12 = 2;
                } else {
                    str = str3;
                    i11 = 1;
                }
                if (this.uP.sdp() == 4) {
                    this.LD = Jcg.Sj(this.wE, this.uP, str);
                }
                com.bytedance.sdk.openadsdk.core.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this.wE, this.uP, str, i11);
                this.JcM = sj3;
                sj3.Sj(this);
                this.JcM.sP(true);
                if (this.Yf) {
                    this.JcM.Sj(true);
                } else {
                    this.JcM.Sj(false);
                    this.JcM.TKC(true);
                }
                this.JcM.Sj(this.fF);
                this.JcM.HiB(true);
                this.JcM.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.HiB.1
                    @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
                    public void Sj(View view, int i13) {
                        if (HiB.this.FPG != null) {
                            HiB.this.FPG.Sj(view, i13);
                        }
                    }
                });
                vSVar = this.LD;
                if (vSVar != null && (sj2 = this.JcM) != null) {
                    sj2.Sj(vSVar);
                }
                if (uP()) {
                    com.bytedance.sdk.openadsdk.core.sP.Sj sj4 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this.wE, this.uP, str, i11) { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.HiB.2
                        @Override // com.bytedance.sdk.openadsdk.core.sP.Sj
                        public boolean TKC() {
                            View view = HiB.this.TEQ;
                            if (view != null && view.getVisibility() == 0) {
                                return true;
                            }
                            View view2 = HiB.this.f21052aa;
                            if (view2 != null && view2.getVisibility() == 0) {
                                return true;
                            }
                            com.bytedance.sdk.openadsdk.core.widget.Sj sj5 = HiB.this.Fmk;
                            if (sj5 != null && sj5.getVisibility() == 0) {
                                return true;
                            }
                            TextView textView = HiB.this.sef;
                            return textView != null && textView.getVisibility() == 0;
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.sP.Sj
                        public boolean sP() {
                            TzV tzV = HiB.this.ley;
                            boolean zSj = tzV != null ? tzV.Sj() : false;
                            HiB.this.HiB.getVisibility();
                            return zSj || HiB.this.HiB.getVisibility() == 0;
                        }
                    };
                    this.WMZ = sj4;
                    sj4.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.HiB.3
                        @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
                        public void Sj(View view, int i13) {
                            if (HiB.this.FPG != null) {
                                HiB.this.FPG.Sj(view, i13);
                            }
                        }
                    });
                    this.WMZ.sP(true);
                    this.WMZ.Sj(this.Yf);
                    this.WMZ.Sj(this.fF);
                    this.WMZ.HiB(true);
                    vSVar2 = this.LD;
                    if (vSVar2 != null) {
                        this.WMZ.Sj(vSVar2);
                    }
                    this.WMZ.Sj(this);
                }
            }
            str2 = "fullscreen_interstitial_ad";
            i12 = 5;
        }
        str = str2;
        i11 = i12;
        if (this.uP.sdp() == 4) {
            this.LD = Jcg.Sj(this.wE, this.uP, str);
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj5 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this.wE, this.uP, str, i11);
        this.JcM = sj5;
        sj5.Sj(this);
        this.JcM.sP(true);
        if (this.Yf) {
            this.JcM.Sj(true);
        } else {
            this.JcM.Sj(false);
            this.JcM.TKC(true);
        }
        this.JcM.Sj(this.fF);
        this.JcM.HiB(true);
        this.JcM.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.HiB.1
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
            public void Sj(View view, int i13) {
                if (HiB.this.FPG != null) {
                    HiB.this.FPG.Sj(view, i13);
                }
            }
        });
        vSVar = this.LD;
        if (vSVar != null) {
            sj2.Sj(vSVar);
        }
        if (uP()) {
            com.bytedance.sdk.openadsdk.core.sP.Sj sj6 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this.wE, this.uP, str, i11) { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.HiB.2
                @Override // com.bytedance.sdk.openadsdk.core.sP.Sj
                public boolean TKC() {
                    View view = HiB.this.TEQ;
                    if (view != null && view.getVisibility() == 0) {
                        return true;
                    }
                    View view2 = HiB.this.f21052aa;
                    if (view2 != null && view2.getVisibility() == 0) {
                        return true;
                    }
                    com.bytedance.sdk.openadsdk.core.widget.Sj sj7 = HiB.this.Fmk;
                    if (sj7 != null && sj7.getVisibility() == 0) {
                        return true;
                    }
                    TextView textView = HiB.this.sef;
                    return textView != null && textView.getVisibility() == 0;
                }

                @Override // com.bytedance.sdk.openadsdk.core.sP.Sj
                public boolean sP() {
                    TzV tzV = HiB.this.ley;
                    boolean zSj = tzV != null ? tzV.Sj() : false;
                    HiB.this.HiB.getVisibility();
                    return zSj || HiB.this.HiB.getVisibility() == 0;
                }
            };
            this.WMZ = sj6;
            sj6.Sj(new com.bytedance.sdk.openadsdk.core.sP.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.core.aa.sP.HiB.3
                @Override // com.bytedance.sdk.openadsdk.core.sP.sP.Sj
                public void Sj(View view, int i13) {
                    if (HiB.this.FPG != null) {
                        HiB.this.FPG.Sj(view, i13);
                    }
                }
            });
            this.WMZ.sP(true);
            this.WMZ.Sj(this.Yf);
            this.WMZ.Sj(this.fF);
            this.WMZ.HiB(true);
            vSVar2 = this.LD;
            if (vSVar2 != null) {
                this.WMZ.Sj(vSVar2);
            }
            this.WMZ.Sj(this);
        }
    }

    public void dNu() {
        FPG.vS(this.vS);
        FPG.vS(this.Jcg);
        if (this.HiB.getVisibility() == 0) {
            FPG.Sj((View) this.HiB, 8);
        }
    }

    public boolean dx() {
        return this.f21053dx;
    }

    @Override // com.bytedance.sdk.openadsdk.core.sP.Sj.InterfaceC0278Sj
    public long getVideoProgress() {
        if (this.Wjd <= 0) {
            sU sUVar = this.uP;
            if (sUVar != null && sUVar.UHs() != null) {
                this.Wjd = (long) (this.uP.UHs().K() * 1000.0d);
            }
            b bVar = this.fF;
            if (bVar != null) {
                this.Wjd = bVar.Dq();
            }
        }
        return this.Wjd;
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.dNu.Sj
    public boolean ib() {
        TzV tzV = this.ley;
        return tzV != null && tzV.Sj();
    }

    boolean kF() {
        return (this.kF & 4) != 4 || this.f21053dx;
    }

    @Override // u5.c
    public void sP() {
        FPG.HiB(this.vS);
        FPG.HiB(this.Jcg);
        ImageView imageView = this.Dq;
        if (imageView != null) {
            FPG.HiB(imageView);
        }
    }

    public void sP(int i11, int i12) {
        ViewGroup.LayoutParams layoutParams = this.TKC.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        if (i11 == -1 || i11 == -2 || i11 > 0) {
            layoutParams.width = i11;
        }
        if (i12 == -1 || i12 == -2 || i12 > 0) {
            layoutParams.height = i12;
        }
        this.TKC.setLayoutParams(layoutParams);
    }

    @Override // a6.a
    public void sP(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.EjP.getHolder()) {
            return;
        }
        this.zR = false;
        if (uvD()) {
            this.LqL.sP(this, surfaceHolder);
        }
    }

    public void sP(ViewGroup viewGroup) {
    }

    public void sP(boolean z10) {
    }

    public void sP(boolean z10, boolean z11) {
        ImageView imageView = this.HiB;
        if (imageView != null) {
            if (z10) {
                imageView.setImageDrawable(TEQ.Sj(this.wE, "tt_play_movebar_textpage"));
            } else {
                imageView.setImageDrawable(TEQ.Sj(this.wE, "tt_stop_movebar_textpage"));
            }
        }
    }

    public boolean sP(int i11) {
        return false;
    }

    public void sU() {
        ImageView imageView = this.Ym;
        if (imageView != null) {
            imageView.setImageBitmap(null);
        }
        com.bytedance.sdk.openadsdk.core.widget.Sj sj2 = this.Fmk;
        if (sj2 != null) {
            sj2.setImageBitmap(null);
        }
    }

    void sef() {
        if (this.LqL == null || this.ley != null) {
            return;
        }
        System.currentTimeMillis();
        TzV tzV = new TzV();
        this.ley = tzV;
        tzV.Sj(this.wE, this.TKC);
        this.ley.Sj(this.LqL, this);
        System.currentTimeMillis();
    }

    public void uA() {
        EjP(8);
        if (kF()) {
            this.EjP.setVisibility(8);
        }
        ImageView imageView = this.Dq;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        EjP(8);
        FPG.Sj(this.TEQ, 8);
        FPG.Sj((View) this.Ym, 8);
        FPG.Sj(this.f21052aa, 8);
        FPG.Sj((View) this.Fmk, 8);
        FPG.Sj((View) this.sef, 8);
        FPG.Sj((View) this.Zq, 8);
        TzV tzV = this.ley;
        if (tzV != null) {
            tzV.Sj(true);
        }
    }

    boolean uvD() {
        return this.LqL != null;
    }

    public void vS() {
    }

    public boolean zR() {
        return this.zR;
    }
}
