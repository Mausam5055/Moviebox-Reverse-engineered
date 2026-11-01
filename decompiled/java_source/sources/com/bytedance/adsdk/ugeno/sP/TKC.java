package com.bytedance.adsdk.ugeno.sP;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.bytedance.adsdk.ugeno.EjP;
import com.bytedance.adsdk.ugeno.EjP.uA;
import com.bytedance.adsdk.ugeno.core.Dq;
import com.bytedance.adsdk.ugeno.core.Fmk;
import com.bytedance.adsdk.ugeno.core.HiB;
import com.bytedance.adsdk.ugeno.core.IAnimation;
import com.bytedance.adsdk.ugeno.core.Jcg;
import com.bytedance.adsdk.ugeno.core.TEQ;
import com.bytedance.adsdk.ugeno.core.Ym;
import com.bytedance.adsdk.ugeno.core.Zq;
import com.bytedance.adsdk.ugeno.core.aa;
import com.bytedance.adsdk.ugeno.core.vS;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import okio.Utf8;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TKC<T extends View> implements View.OnTouchListener, EjP, aa.Sj, aa.sP {
    private boolean AVc;

    @Deprecated
    private com.bytedance.adsdk.ugeno.core.sP.TKC.Sj Aw;
    protected float Bml;
    protected int Chv;
    private Zq DPc;
    private float DhB;
    protected HiB.Sj Dq;
    protected int EZ;
    protected boolean Ei;
    protected JSONObject EjP;
    protected boolean FPG;
    protected ImageView.ScaleType Fm;
    protected float Fmk;
    private JSONObject GJs;
    private String GMp;
    private boolean Gn;

    @Deprecated
    private com.bytedance.adsdk.ugeno.core.sP.sP Grp;
    protected float HS;
    protected float HcZ;
    protected T HiB;
    protected boolean HpB;
    protected boolean IOh;
    protected float Ir;
    protected boolean JcM;
    protected Sj<ViewGroup> Jcg;
    protected float LD;
    protected float LqL;
    protected boolean Mts;
    protected boolean MuB;
    private Jcg Ov;
    private GradientDrawable Ph;
    protected Map<Integer, TEQ> QZ;
    protected float RiZ;
    private boolean RrR;
    private boolean SP;
    private boolean Sj;
    protected boolean TEQ;
    protected float TFd;
    protected JSONObject TKC;
    protected aa TO;

    @Deprecated
    private com.bytedance.adsdk.ugeno.core.sP.HiB TX;
    protected float TzV;
    protected float UHs;
    protected float Uc;
    protected boolean WMZ;
    protected int Wjd;
    private boolean WxP;
    private boolean Xqg;
    protected float Yf;
    protected String Ym;
    protected float Zq;
    protected boolean aNB;
    protected float aZ;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    protected String f20828aa;
    protected ViewGroup.LayoutParams cX;
    private boolean dLt;
    protected float dNu;
    private boolean dU;

    /* JADX INFO: renamed from: db, reason: collision with root package name */
    protected float f20829db;
    protected boolean dwU;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    protected float f20830dx;
    private com.bytedance.adsdk.ugeno.EjP.Sj.Sj eEJ;
    protected Fmk eI;
    protected vS eMB;
    protected boolean fF;
    protected float gR;
    protected String gY;

    /* JADX INFO: renamed from: gq, reason: collision with root package name */
    private boolean f20831gq;
    private boolean hif;
    private com.bytedance.adsdk.ugeno.core.Sj hzV;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    protected boolean f20832ib;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    protected float f20833jb;
    private boolean jjS;
    protected boolean kF;

    /* JADX INFO: renamed from: kb, reason: collision with root package name */
    protected com.bytedance.adsdk.ugeno.Sj.Sj f20834kb;
    protected float ley;
    protected com.bytedance.adsdk.ugeno.Jcg.Sj.C0199Sj liH;
    protected float mZN;

    /* JADX INFO: renamed from: mj, reason: collision with root package name */
    private boolean f20835mj;
    protected boolean nP;
    protected float ndK;
    private boolean nou;
    protected float nru;
    private boolean oWa;
    protected float pfr;
    protected float qRN;
    private boolean ron;
    protected Context sP;
    protected float sU;
    protected boolean sdp;
    protected float sef;
    private String tPD;

    @Deprecated
    private com.bytedance.adsdk.ugeno.core.sP.EjP tX;
    protected uA tY;

    /* JADX INFO: renamed from: tz, reason: collision with root package name */
    protected float f20836tz;
    protected Dq uA;
    protected boolean uP;
    protected float uvD;
    protected Sj<ViewGroup> vS;

    /* JADX INFO: renamed from: vb, reason: collision with root package name */
    @Deprecated
    private com.bytedance.adsdk.ugeno.core.sP.Sj f20837vb;
    private boolean vll;
    protected float wE;
    protected String xD;
    protected float xhi;

    /* JADX INFO: renamed from: xu, reason: collision with root package name */
    protected float f20838xu;
    private boolean xzt;
    protected boolean zR;
    private boolean zwV;

    public TKC(Context context) {
        this(context, null);
    }

    public TKC(Context context, Sj<ViewGroup> sj2) {
        this.Fmk = -2.0f;
        this.sef = -2.0f;
        this.gY = "solid";
        this.Chv = 0;
        this.aNB = true;
        this.Uc = 0.0f;
        this.f20838xu = 0.0f;
        this.gR = 0.0f;
        this.Ir = 1.0f;
        this.aZ = 1.0f;
        this.HS = 1.0f;
        this.f20836tz = 0.0f;
        this.TFd = 0.0f;
        this.mZN = 0.0f;
        this.HcZ = 0.0f;
        this.nru = 1.0f;
        this.f20835mj = true;
        this.vll = true;
        this.ron = false;
        this.jjS = false;
        this.DhB = 12.0f;
        this.sP = context;
        this.vS = sj2;
        this.QZ = new HashMap();
        this.Ph = new GradientDrawable();
        this.HiB = (T) Sj();
    }

    private boolean Dq(String str) {
        return TextUtils.isEmpty(str) || !TextUtils.equals(str, "hidden");
    }

    @Deprecated
    private void EjP() {
        com.bytedance.adsdk.ugeno.core.sP.TKC tkcEjP;
        this.HiB.setVisibility(this.Chv);
        float f11 = this.HcZ;
        if (f11 != 0.0f) {
            this.HiB.setRotation(f11);
        }
        HiB.Sj sj2 = this.Dq;
        if (sj2 != null && TextUtils.isEmpty(sj2.sP())) {
            this.HiB.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.adsdk.ugeno.sP.TKC.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TKC tkc = TKC.this;
                    if (tkc.eMB != null) {
                        boolean unused = tkc.vll;
                    }
                }
            });
        } else if (sP(1) && !this.WxP) {
            this.HiB.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.adsdk.ugeno.sP.TKC.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TKC tkc = TKC.this;
                    if (tkc.TO == null || !tkc.vll) {
                        return;
                    }
                    TKC tkc2 = TKC.this;
                    aa aaVar = tkc2.TO;
                    TEQ teq = tkc2.QZ.get(1);
                    TKC tkc3 = TKC.this;
                    aaVar.Sj(teq, tkc3, tkc3);
                }
            });
        }
        if (this.TO != null && sP(4)) {
            if (sP(1)) {
                this.dU = true;
                this.tX = new com.bytedance.adsdk.ugeno.core.sP.EjP(this.sP, this.QZ.get(4), this.QZ.get(1), this.dU);
            } else {
                this.tX = new com.bytedance.adsdk.ugeno.core.sP.EjP(this.sP, this.QZ.get(4), this.dU);
            }
        }
        if (this.TO != null && sP(1) && this.WxP) {
            this.Grp = new com.bytedance.adsdk.ugeno.core.sP.sP(this.sP, this.QZ.get(1));
        }
        uA();
        if (this.TO != null && sP(3) && (tkcEjP = com.bytedance.adsdk.ugeno.HiB.Sj().EjP()) != null) {
            this.Aw = tkcEjP.Sj(this.sP, this);
            new Object() { // from class: com.bytedance.adsdk.ugeno.sP.TKC.3
            };
        }
        if (this.TO != null && sP(9)) {
            com.bytedance.adsdk.ugeno.core.sP.HiB hiB = new com.bytedance.adsdk.ugeno.core.sP.HiB(this.sP, this.QZ.get(9), this);
            this.TX = hiB;
            hiB.Sj(this.TO);
        }
        if (sP(10)) {
            com.bytedance.adsdk.ugeno.core.sP.Sj sj3 = new com.bytedance.adsdk.ugeno.core.sP.Sj(this.sP, this.QZ.get(10), this);
            this.f20837vb = sj3;
            sj3.Sj(this.TO);
        }
    }

    private ImageView.ScaleType Jcg(String str) {
        str.hashCode();
        switch (str) {
            case "center":
                this.Fm = ImageView.ScaleType.CENTER;
                break;
            case "fit":
                this.Fm = ImageView.ScaleType.FIT_CENTER;
                break;
            case "crop":
                this.Fm = ImageView.ScaleType.CENTER_CROP;
                break;
            default:
                this.Fm = ImageView.ScaleType.FIT_XY;
                break;
        }
        return this.Fm;
    }

    private void TEQ() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.Ym);
        this.HiB.setContentDescription(sb2);
    }

    private void TKC() {
        if (this.Sj) {
            this.HiB.setTranslationX(this.f20838xu);
        }
        if (this.AVc) {
            this.HiB.setTranslationY(this.gR);
        }
        if (this.RrR) {
            this.HiB.setScaleX(this.aZ);
        }
        if (this.SP) {
            this.HiB.setScaleY(this.HS);
        }
        if (this.dLt) {
            this.HiB.setRotation(this.f20836tz);
        }
        if (this.zwV) {
            this.HiB.setRotationX(this.TFd);
        }
        if (this.Xqg) {
            this.HiB.setRotationY(this.mZN);
        }
        if (this.oWa) {
            this.HiB.setAlpha(this.nru);
        }
        float f11 = this.HcZ;
        if (f11 != 0.0f) {
            this.HiB.setRotation(f11);
        }
    }

    private void dwU() {
        if (TextUtils.equals("dashed", this.gY)) {
            GradientDrawable gradientDrawable = this.Ph;
            float f11 = this.pfr;
            gradientDrawable.setStroke((int) f11, this.EZ, 3.0f * f11, f11);
        } else {
            if (!TextUtils.equals("dotted", this.gY)) {
                this.Ph.setStroke((int) this.pfr, this.EZ);
                return;
            }
            GradientDrawable gradientDrawable2 = this.Ph;
            float f12 = this.pfr;
            gradientDrawable2.setStroke((int) f12, this.EZ, f12 / 2.0f, f12);
        }
    }

    private void sdp() {
        float f11 = this.dwU ? this.f20829db : this.xhi;
        float f12 = this.sdp ? this.qRN : this.xhi;
        float f13 = this.MuB ? this.ndK : this.xhi;
        float f14 = this.IOh ? this.UHs : this.xhi;
        this.Ph.setCornerRadii(new float[]{f11, f11, f12, f12, f14, f14, f13, f13});
    }

    private void uA() {
        TEQ teq;
        if (this.TO == null || !sP(18) || (teq = this.QZ.get(18)) == null) {
            return;
        }
        JSONObject jSONObjectTKC = teq.TKC();
        if (jSONObjectTKC != null) {
            try {
                jSONObjectTKC.put("rotateZ", com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObjectTKC.optString("rotateZ"), this.EjP));
            } catch (JSONException unused) {
            }
        }
        this.TO.Sj(teq, this, this);
    }

    @Override // com.bytedance.adsdk.ugeno.EjP
    public void Dq() {
        Jcg jcg = this.Ov;
        if (jcg != null) {
            jcg.sP();
        }
        com.bytedance.adsdk.ugeno.Sj.Sj sj2 = this.f20834kb;
        if (sj2 != null) {
            sj2.sP();
        }
    }

    protected void Ei() {
    }

    public TKC<T> EjP(String str) {
        return sP(str);
    }

    protected void EjP(int i11) {
        this.Ph.setShape(0);
        this.Ph.setColor(i11);
        sdp();
        dwU();
        this.HiB.setBackground(this.Ph);
    }

    public int FPG() {
        return (int) this.sef;
    }

    public com.bytedance.adsdk.ugeno.EjP.Sj.Sj Fm() {
        return this.eEJ;
    }

    protected void Fmk() {
        this.HiB.setPadding((int) (this.JcM ? this.ley : this.wE), (int) (this.Mts ? this.Yf : this.wE), (int) (this.WMZ ? this.LqL : this.wE), (int) (this.FPG ? this.LD : this.wE));
    }

    @Override // com.bytedance.adsdk.ugeno.EjP
    public void HiB() {
        if (this.DPc == null || this.xzt) {
            return;
        }
        this.xzt = true;
    }

    public void HiB(int i11) {
        if (!LD()) {
            ViewGroup.LayoutParams layoutParams = this.HiB.getLayoutParams();
            layoutParams.width = i11;
            this.HiB.setLayoutParams(layoutParams);
            return;
        }
        T t11 = this.HiB;
        if (t11 instanceof sP) {
            ((sP) t11).Sj(i11);
            return;
        }
        ViewParent viewParent = (ViewGroup) t11.getParent();
        if (viewParent instanceof sP) {
            ((sP) viewParent).Sj(this.HiB, i11);
        }
    }

    public void HiB(String str) {
        this.Ym = str;
    }

    public boolean HpB() {
        return this.Bml > 0.0f;
    }

    public String JcM() {
        return this.Ym;
    }

    @Override // com.bytedance.adsdk.ugeno.EjP
    public void Jcg() {
        com.bytedance.adsdk.ugeno.core.Sj sj2 = this.hzV;
        if (sj2 != null) {
            Jcg jcg = new Jcg(this.HiB, sj2);
            this.Ov = jcg;
            jcg.Sj();
        }
        com.bytedance.adsdk.ugeno.Sj.Sj sj3 = this.f20834kb;
        if (sj3 != null) {
            sj3.Sj();
        }
        uA uAVar = this.tY;
        if (uAVar != null) {
            uAVar.EjP();
        }
        if (this.f20837vb != null && sP(10)) {
            this.f20837vb.Sj();
        }
        if (this.TX == null || !sP(9)) {
            return;
        }
        this.TX.Sj();
    }

    public boolean LD() {
        return this.TEQ;
    }

    public void LqL() {
        if (this.HiB != null) {
            Sj(this.cX);
            HiB((int) this.Fmk);
            vS((int) this.sef);
        }
    }

    public int Mts() {
        return (int) this.Fmk;
    }

    public float RiZ() {
        return this.mZN;
    }

    public T Sj() {
        return null;
    }

    protected TKC<T> Sj(String str) {
        if (TextUtils.isEmpty(this.Ym) || !TextUtils.equals(this.Ym, str)) {
            return null;
        }
        return this;
    }

    @Override // com.bytedance.adsdk.ugeno.EjP
    public void Sj(int i11, int i12, int i13, int i14) {
        if (this.DPc == null || this.nou) {
            return;
        }
        this.nou = true;
    }

    @Deprecated
    protected void Sj(int i11, JSONObject jSONObject, TEQ teq) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
        if (jSONObjectOptJSONObject != null) {
            TEQ teq2 = new TEQ();
            teq2.Sj(jSONObjectOptJSONObject);
            teq2.Sj(this);
            teq.Sj(teq2);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("fail");
        if (jSONObjectOptJSONObject2 != null) {
            TEQ teq3 = new TEQ();
            teq3.Sj(jSONObjectOptJSONObject2);
            teq3.Sj(this);
            teq.sP(teq3);
        }
        teq.Sj(jSONObject);
        this.QZ.put(Integer.valueOf(i11), teq);
    }

    @Override // com.bytedance.adsdk.ugeno.EjP
    public void Sj(Canvas canvas) {
        com.bytedance.adsdk.ugeno.Sj.Sj sj2;
        if ((this instanceof Sj) || (sj2 = this.f20834kb) == null) {
            return;
        }
        sj2.Sj(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.EjP
    public void Sj(Canvas canvas, IAnimation iAnimation) {
        Jcg jcg = this.Ov;
        if (jcg != null) {
            jcg.Sj(canvas, iAnimation);
        }
    }

    protected void Sj(Drawable drawable) {
        this.HiB.setBackground(drawable);
    }

    public void Sj(ViewGroup.LayoutParams layoutParams) {
        T t11 = this.HiB;
        if (t11 != null) {
            t11.setLayoutParams(layoutParams);
        }
        this.cX = layoutParams;
    }

    public void Sj(com.bytedance.adsdk.ugeno.EjP.Sj.Sj sj2) {
        this.eEJ = sj2;
    }

    protected void Sj(com.bytedance.adsdk.ugeno.Jcg.Sj.C0199Sj c0199Sj) {
        if (c0199Sj == null) {
            return;
        }
        this.Ph.setShape(0);
        this.Ph.setOrientation(c0199Sj.Sj);
        if (Build.VERSION.SDK_INT >= 29) {
            this.Ph.setColors(c0199Sj.sP, c0199Sj.TKC);
        } else {
            this.Ph.setColors(c0199Sj.sP);
        }
        sdp();
        dwU();
        this.HiB.setBackground(this.Ph);
    }

    public void Sj(Dq dq2) {
        this.uA = dq2;
    }

    public void Sj(Fmk fmk) {
        this.eI = fmk;
    }

    public void Sj(HiB.Sj sj2) {
        this.Dq = sj2;
    }

    @Override // com.bytedance.adsdk.ugeno.core.aa.sP
    public void Sj(TEQ teq) {
        Sj<ViewGroup> sj2;
        TKC<T> TKC;
        if (teq == null || teq.TKC() == null || !TextUtils.equals(teq.TKC().optString(NativeComponentConstants.KEY_COMPONENT_TYPE), "onDismiss")) {
            return;
        }
        String strOptString = teq.TKC().optString("nodeId");
        TKC(8);
        this.Jcg = (Sj) sP(this);
        if (TextUtils.isEmpty(strOptString) || (sj2 = this.Jcg) == null || (TKC = sj2.TKC(strOptString)) == null) {
            return;
        }
        TKC.TKC(8);
    }

    public void Sj(Zq zq2) {
        this.DPc = zq2;
    }

    public void Sj(aa aaVar) {
        this.TO = aaVar;
    }

    public void Sj(vS vSVar) {
        this.eMB = vSVar;
    }

    public void Sj(Sj sj2) {
        this.vS = sj2;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void Sj(String str, String str2) {
        Sj<ViewGroup> sj2;
        Sj<ViewGroup> sj3;
        if (TextUtils.isEmpty(str)) {
        }
        str.hashCode();
        byte b11 = -1;
        switch (str.hashCode()) {
            case -1964681502:
                if (str.equals("clickable")) {
                    b11 = 0;
                }
                break;
            case -1901681170:
                if (str.equals("onRenderSuccess")) {
                    b11 = 1;
                }
                break;
            case -1721943862:
                if (str.equals("translateX")) {
                    b11 = 2;
                }
                break;
            case -1721943861:
                if (str.equals("translateY")) {
                    b11 = 3;
                }
                break;
            case -1501175880:
                if (str.equals("paddingLeft")) {
                    b11 = 4;
                }
                break;
            case -1375815020:
                if (str.equals("minWidth")) {
                    b11 = 5;
                }
                break;
            case -1351184668:
                if (str.equals("onDelay")) {
                    b11 = 6;
                }
                break;
            case -1337252761:
                if (str.equals("onShake")) {
                    b11 = 7;
                }
                break;
            case -1337126126:
                if (str.equals("onSlide")) {
                    b11 = 8;
                }
                break;
            case -1336288090:
                if (str.equals("onTimer")) {
                    b11 = 9;
                }
                break;
            case -1335874424:
                if (str.equals("onTwist")) {
                    b11 = 10;
                }
                break;
            case -1332194002:
                if (str.equals("background")) {
                    b11 = 11;
                }
                break;
            case -1291329255:
                if (str.equals("events")) {
                    b11 = 12;
                }
                break;
            case -1267206133:
                if (str.equals("opacity")) {
                    b11 = 13;
                }
                break;
            case -1228066334:
                if (str.equals("borderTopLeftRadius")) {
                    b11 = 14;
                }
                break;
            case -1221029593:
                if (str.equals("height")) {
                    b11 = 15;
                }
                break;
            case -1081309778:
                if (str.equals("margin")) {
                    b11 = 16;
                }
                break;
            case -1044792121:
                if (str.equals("marginTop")) {
                    b11 = 17;
                }
                break;
            case -1013407967:
                if (str.equals("onDown")) {
                    b11 = 18;
                }
                break;
            case -933876756:
                if (str.equals("backgroundDrawable")) {
                    b11 = 19;
                }
                break;
            case -925180581:
                if (str.equals("rotate")) {
                    b11 = 20;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    b11 = 21;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    b11 = 22;
                }
                break;
            case -806339567:
                if (str.equals("padding")) {
                    b11 = 23;
                }
                break;
            case -681357156:
                if (str.equals("triggerFunc")) {
                    b11 = 24;
                }
                break;
            case -289173127:
                if (str.equals("marginBottom")) {
                    b11 = 25;
                }
                break;
            case -133587431:
                if (str.equals("minHeight")) {
                    b11 = 26;
                }
                break;
            case 3355:
                if (str.equals("id")) {
                    b11 = 27;
                }
                break;
            case 3176990:
                if (str.equals("i18n")) {
                    b11 = 28;
                }
                break;
            case 3373707:
                if (str.equals("name")) {
                    b11 = 29;
                }
                break;
            case 87811796:
                if (str.equals("backgroundImageBlur")) {
                    b11 = 30;
                }
                break;
            case 90130308:
                if (str.equals("paddingTop")) {
                    b11 = 31;
                }
                break;
            case 94750088:
                if (str.equals("click")) {
                    b11 = 32;
                }
                break;
            case 105871684:
                if (str.equals("onTap")) {
                    b11 = 33;
                }
                break;
            case 108285963:
                if (str.equals("ratio")) {
                    b11 = 34;
                }
                break;
            case 109250890:
                if (str.equals("scale")) {
                    b11 = 35;
                }
                break;
            case 113126854:
                if (str.equals("width")) {
                    b11 = 36;
                }
                break;
            case 202355100:
                if (str.equals("paddingBottom")) {
                    b11 = 37;
                }
                break;
            case 320386138:
                if (str.equals("onLoadMore")) {
                    b11 = 38;
                }
                break;
            case 333432965:
                if (str.equals("borderTopRightRadius")) {
                    b11 = 39;
                }
                break;
            case 529642498:
                if (str.equals("overflow")) {
                    b11 = 40;
                }
                break;
            case 581268560:
                if (str.equals("borderBottomLeftRadius")) {
                    b11 = 41;
                }
                break;
            case 588239831:
                if (str.equals("borderBottomRightRadius")) {
                    b11 = 42;
                }
                break;
            case 713848971:
                if (str.equals("paddingRight")) {
                    b11 = 43;
                }
                break;
            case 722830999:
                if (str.equals("borderColor")) {
                    b11 = 44;
                }
                break;
            case 737768677:
                if (str.equals("borderStyle")) {
                    b11 = 45;
                }
                break;
            case 741115130:
                if (str.equals("borderWidth")) {
                    b11 = 46;
                }
                break;
            case 843948038:
                if (str.equals("onExposure")) {
                    b11 = 47;
                }
                break;
            case 975087886:
                if (str.equals("marginRight")) {
                    b11 = 48;
                }
                break;
            case 1052832078:
                if (str.equals("translate")) {
                    b11 = 49;
                }
                break;
            case 1087723621:
                if (str.equals("onAnimation")) {
                    b11 = 50;
                }
                break;
            case 1118509956:
                if (str.equals("animation")) {
                    b11 = 51;
                }
                break;
            case 1151851515:
                if (str.equals("animatorSet")) {
                    b11 = 52;
                }
                break;
            case 1158381436:
                if (str.equals("onPullToRefresh")) {
                    b11 = 53;
                }
                break;
            case 1287124693:
                if (str.equals("backgroundColor")) {
                    b11 = 54;
                }
                break;
            case 1292595405:
                if (str.equals("backgroundImage")) {
                    b11 = 55;
                }
                break;
            case 1301532860:
                if (str.equals("backgroundScale")) {
                    b11 = 56;
                }
                break;
            case 1349188574:
                if (str.equals("borderRadius")) {
                    b11 = 57;
                }
                break;
            case 1384173149:
                if (str.equals("rotateX")) {
                    b11 = 58;
                }
                break;
            case 1384173150:
                if (str.equals("rotateY")) {
                    b11 = 59;
                }
                break;
            case 1384173151:
                if (str.equals("rotateZ")) {
                    b11 = 60;
                }
                break;
            case 1490730380:
                if (str.equals("onScroll")) {
                    b11 = 61;
                }
                break;
            case 1671308008:
                if (str.equals("disable")) {
                    b11 = 62;
                }
                break;
            case 1685004456:
                if (str.equals("onLongTap")) {
                    b11 = Utf8.REPLACEMENT_BYTE;
                }
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    b11 = 64;
                }
                break;
            case 1970934485:
                if (str.equals("marginLeft")) {
                    b11 = 65;
                }
                break;
            case 1997542747:
                if (str.equals("availability")) {
                    b11 = 66;
                }
                break;
        }
        switch (b11) {
            case 0:
                this.vll = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, true);
                break;
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 18:
            case 33:
            case 38:
            case 47:
            case 50:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case 61:
            case 63:
                sP(str, str2);
                break;
            case 2:
                this.Sj = true;
                this.f20838xu = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case 3:
                this.AVc = true;
                this.gR = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case 4:
                this.ley = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.JcM = true;
                break;
            case 5:
                this.sU = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 11:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                if (!com.bytedance.adsdk.ugeno.Jcg.Sj.TKC(str2)) {
                    this.Wjd = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2, 0);
                    this.nP = false;
                } else {
                    this.nP = true;
                    this.liH = com.bytedance.adsdk.ugeno.Jcg.Sj.sP(str2);
                }
                break;
            case 12:
                this.tY = uA.Sj(this, str2);
                break;
            case 13:
                this.oWa = true;
                this.nru = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 1.0f);
                break;
            case 14:
                this.f20829db = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.dwU = true;
                break;
            case 15:
                if (TextUtils.equals(str2, "match_parent")) {
                    if (LD() && (sj2 = this.vS) != null && sj2.FPG() == -2) {
                        this.sef = -2.0f;
                    } else {
                        this.sef = -1.0f;
                    }
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.sef = -2.0f;
                } else {
                    this.sef = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                }
                this.jjS = true;
                break;
            case 16:
                this.Zq = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                break;
            case 17:
                this.TzV = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.kF = true;
                break;
            case 19:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                this.xD = str2;
                break;
            case 20:
                this.dLt = true;
                this.f20836tz = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 21:
                this.RrR = true;
                this.aZ = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 22:
                this.SP = true;
                this.HS = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 23:
                this.wE = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.fF = true;
                break;
            case 24:
                this.tPD = str2;
                break;
            case 25:
                this.RiZ = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.uP = true;
                break;
            case 26:
                this.f20830dx = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 27:
                this.Ym = str2;
                break;
            case 28:
                this.GJs = com.bytedance.adsdk.ugeno.Jcg.sP.Sj(str2, (JSONObject) null);
                break;
            case NOTIFICATION_REDIRECT_VALUE:
                this.f20828aa = str2;
                break;
            case 30:
                float fSj = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                this.f20833jb = fSj;
                if (fSj > 0.0f) {
                    this.Ei = true;
                }
                break;
            case TEMPLATE_HTML_SIZE_VALUE:
                this.Yf = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.Mts = true;
                break;
            case 32:
                this.GMp = str2;
                break;
            case 34:
                this.Bml = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 35:
                this.RrR = true;
                this.SP = true;
                float[] fArrTKC = com.bytedance.adsdk.ugeno.Sj.TKC.TKC(str2);
                this.aZ = fArrTKC[0];
                this.HS = fArrTKC[1];
                break;
            case 36:
                if (TextUtils.equals(str2, "match_parent")) {
                    if (LD() && (sj3 = this.vS) != null && sj3.Mts() == -2) {
                        this.Fmk = -2.0f;
                    } else {
                        this.Fmk = -1.0f;
                    }
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.Fmk = -2.0f;
                } else {
                    this.Fmk = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                }
                this.ron = true;
                break;
            case 37:
                this.LD = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.FPG = true;
                break;
            case 39:
                this.qRN = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.sdp = true;
                break;
            case 40:
                this.f20835mj = Dq(str2);
                break;
            case 41:
                this.ndK = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.MuB = true;
                break;
            case 42:
                this.UHs = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.IOh = true;
                break;
            case 43:
                this.LqL = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.WMZ = true;
                break;
            case 44:
                this.EZ = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2);
                break;
            case 45:
                this.gY = str2;
                break;
            case 46:
                this.pfr = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                break;
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                this.dNu = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.f20832ib = true;
                break;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                this.Sj = true;
                this.AVc = true;
                float[] fArrTKC2 = com.bytedance.adsdk.ugeno.Sj.TKC.TKC(str2);
                this.f20838xu = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, fArrTKC2[0]);
                this.gR = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, fArrTKC2[1]);
                break;
            case AD_REWARD_USER_VALUE:
                try {
                    this.f20834kb = new com.bytedance.adsdk.ugeno.Sj.Sj(this.sP, this, com.bytedance.adsdk.ugeno.Sj.TKC.Sj(new JSONObject(str2)));
                } catch (JSONException unused) {
                    return;
                }
                break;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                this.hzV = com.bytedance.adsdk.ugeno.core.Sj.Sj(str2, this);
                break;
            case AD_VISIBILITY_VALUE:
                this.HpB = true;
                this.Fm = Jcg(str2);
                break;
            case 57:
                this.xhi = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                break;
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                this.zwV = true;
                this.TFd = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 59:
                this.Xqg = true;
                this.mZN = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 60:
                this.HcZ = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case 62:
                this.f20831gq = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, false);
                break;
            case 64:
                if (TextUtils.equals("visible", str2)) {
                    this.Chv = 0;
                } else if (TextUtils.equals("invisible", str2)) {
                    this.Chv = 4;
                } else if (TextUtils.equals("gone", str2) || TextUtils.equals("hidden", str2)) {
                    this.Chv = 8;
                }
                this.HiB.setVisibility(this.Chv);
                break;
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                this.uvD = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, str2);
                this.zR = true;
                break;
            case 66:
                this.aNB = !TextUtils.equals(str2, "unavailable");
                break;
        }
    }

    public void Sj(JSONObject jSONObject) {
        this.EjP = jSONObject;
        JSONObject jSONObject2 = this.TKC;
        if (jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject2.keys();
        Sj<ViewGroup> sj2 = this.vS;
        Sj.C0204Sj c0204SjTEQ = sj2 instanceof Sj ? sj2.TEQ() : null;
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(this.TKC.optString(next), jSONObject);
            Sj(next, strSj);
            if (c0204SjTEQ != null) {
                c0204SjTEQ.Sj(this.sP, next, strSj);
            }
        }
        if (c0204SjTEQ != null) {
            Sj(c0204SjTEQ.Sj());
        }
        if (this.GJs == null || this.EjP == null) {
            return;
        }
        try {
            if (!LD()) {
                this.EjP.put("i18n", this.GJs);
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("i18n", this.GJs);
            this.EjP.put("xNode", jSONObject3);
        } catch (JSONException unused) {
        }
    }

    public void Sj(boolean z10) {
        this.TEQ = z10;
    }

    @Override // com.bytedance.adsdk.ugeno.EjP
    public int[] Sj(int i11, int i12) {
        if (this.Bml > 0.0f) {
            if (this.ron) {
                int size = View.MeasureSpec.getSize(i11);
                float f11 = this.Bml;
                if (f11 != 0.0f) {
                    i12 = View.MeasureSpec.makeMeasureSpec((int) (size / f11), 1073741824);
                }
            } else if (this.jjS) {
                int size2 = View.MeasureSpec.getSize(i12);
                float f12 = this.Bml;
                if (f12 != 0.0f) {
                    i11 = View.MeasureSpec.makeMeasureSpec((int) (size2 * f12), 1073741824);
                }
            }
        }
        if (this.DPc != null && !this.hif) {
            this.hif = true;
        }
        return new int[]{i11, i12};
    }

    public TKC<T> TKC(String str) {
        return Sj(str);
    }

    public void TKC(int i11) {
        ViewParent viewParent = (ViewGroup) this.HiB.getParent();
        if (viewParent instanceof sP) {
            ((sP) viewParent).TKC(this.HiB, i11);
        } else {
            this.HiB.setVisibility(i11);
        }
    }

    public void TKC(JSONObject jSONObject) {
        this.TKC = jSONObject;
    }

    public float TzV() {
        return this.TFd;
    }

    public boolean UHs() {
        return this.f20831gq;
    }

    public String WMZ() {
        return this.f20828aa;
    }

    public boolean Wjd() {
        return this.aNB;
    }

    public HiB.Sj Yf() {
        return this.Dq;
    }

    public T Ym() {
        return this.HiB;
    }

    public float Zq() {
        return this.gR;
    }

    public JSONObject aa() {
        return this.EjP;
    }

    public float dNu() {
        return this.HS;
    }

    public float db() {
        T t11 = this.HiB;
        if (t11 instanceof com.bytedance.adsdk.ugeno.Sj.HiB) {
            return ((com.bytedance.adsdk.ugeno.Sj.HiB) t11).getShine();
        }
        return 0.0f;
    }

    public float dx() {
        return this.nru;
    }

    public Sj fF() {
        return this.vS;
    }

    public aa ib() {
        return this.TO;
    }

    protected void jb() {
    }

    public JSONObject kF() {
        return this.TKC;
    }

    public ViewGroup.LayoutParams ley() {
        return this.cX;
    }

    public float ndK() {
        T t11 = this.HiB;
        if (t11 instanceof com.bytedance.adsdk.ugeno.Sj.HiB) {
            return ((com.bytedance.adsdk.ugeno.Sj.HiB) t11).getStretch();
        }
        return 0.0f;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.adsdk.ugeno.core.sP.EjP ejP;
        aa aaVar;
        com.bytedance.adsdk.ugeno.core.sP.sP sPVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            jb();
        } else if (action == 1 || action == 3) {
            Ei();
        }
        Fmk fmk = this.eI;
        if (fmk != null) {
            fmk.Sj(this, motionEvent);
        }
        if (sP(17) && motionEvent.getAction() == 0) {
            this.TO.Sj(this.QZ.get(17), this, this);
        }
        if (sP(1) && this.WxP && (aaVar = this.TO) != null && (sPVar = this.Grp) != null) {
            return sPVar.Sj(aaVar, this, motionEvent);
        }
        aa aaVar2 = this.TO;
        if (aaVar2 != null && (ejP = this.tX) != null) {
            return ejP.Sj(aaVar2, this, motionEvent);
        }
        uA uAVar = this.tY;
        if (uAVar != null) {
            return uAVar.Sj(motionEvent);
        }
        return false;
    }

    public float qRN() {
        T t11 = this.HiB;
        if (t11 instanceof com.bytedance.adsdk.ugeno.Sj.HiB) {
            return ((com.bytedance.adsdk.ugeno.Sj.HiB) t11).getRubIn();
        }
        return 0.0f;
    }

    public TKC sP(TKC tkc) {
        return (tkc.fF() == null && (tkc instanceof Sj)) ? tkc : sP(tkc.fF());
    }

    protected TKC<T> sP(String str) {
        if (TextUtils.isEmpty(this.f20828aa) || !TextUtils.equals(this.f20828aa, str)) {
            return null;
        }
        return this;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void sP() {
        uP();
        Fmk();
        TKC(this.Chv);
        TKC();
        EjP();
        uA uAVar = this.tY;
        if (uAVar != null) {
            uAVar.Sj();
            this.tY.sP();
            this.tY.TKC();
        }
        this.HiB.setOnTouchListener(this);
        TEQ();
        ViewGroup viewGroup = (ViewGroup) this.HiB.getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(!this.f20835mj);
        }
        com.bytedance.adsdk.ugeno.Sj.Sj sj2 = this.f20834kb;
        if (sj2 != null) {
            sj2.TKC();
        }
        if (this.TO == null || !sP(22)) {
            return;
        }
        this.TO.Sj(this.QZ.get(22), this, this);
    }

    @Override // com.bytedance.adsdk.ugeno.EjP
    public void sP(int i11, int i12, int i13, int i14) {
        Jcg jcg = this.Ov;
        if (jcg != null) {
            jcg.Sj(i11, i12);
        }
        com.bytedance.adsdk.ugeno.Sj.Sj sj2 = this.f20834kb;
        if (sj2 != null) {
            sj2.Sj(i11, i12);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.EjP
    public void sP(Canvas canvas) {
        com.bytedance.adsdk.ugeno.Sj.Sj sj2;
        if (!(this instanceof Sj) || (sj2 = this.f20834kb) == null) {
            return;
        }
        sj2.sP(canvas);
    }

    protected void sP(String str, String str2) {
        if (TextUtils.isEmpty(str2) || this.QZ == null) {
            return;
        }
        try {
            int iSj = Ym.Sj(str).Sj();
            TEQ teq = new TEQ();
            teq.Sj(iSj);
            teq.Sj(this);
            JSONObject jSONObject = new JSONObject(str2);
            if (iSj == 3) {
                try {
                    this.DhB = Float.parseFloat(com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObject.optString("shakeAmplitude"), this.EjP));
                } catch (NumberFormatException unused) {
                    this.DhB = 12.0f;
                }
            }
            if (this.TO instanceof com.bytedance.adsdk.ugeno.core.Sj.sP) {
                throw null;
            }
            Sj(iSj, jSONObject, teq);
        } catch (JSONException unused2) {
        }
    }

    public void sP(JSONObject jSONObject) {
        this.EjP = jSONObject;
    }

    public boolean sP(int i11) {
        Map<Integer, TEQ> map = this.QZ;
        return map != null && map.containsKey(Integer.valueOf(i11));
    }

    public float sU() {
        return this.HcZ;
    }

    public float sef() {
        return this.f20838xu;
    }

    protected void uP() {
        BitmapDrawable bitmapDrawable;
        Bitmap bitmapSj;
        if (TextUtils.isEmpty(this.xD)) {
            if (this.nP) {
                Sj(this.liH);
                return;
            } else {
                this.Ph.setColor(this.Wjd);
                EjP(this.Wjd);
                return;
            }
        }
        if (!this.xD.startsWith("local://")) {
            wE();
            return;
        }
        String strReplace = this.xD.replace("local://", "");
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = this.Ei ? Bitmap.Config.ARGB_4444 : Bitmap.Config.RGB_565;
            options.inPurgeable = true;
            options.inInputShareable = true;
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(this.sP.getResources().openRawResource(com.bytedance.adsdk.ugeno.Jcg.EjP.Sj(this.sP, strReplace)), null, options);
            if (!this.Ei || (bitmapSj = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(this.sP, bitmapDecodeStream, (int) this.f20833jb)) == null) {
                BitmapDrawable bitmapDrawable2 = new BitmapDrawable(this.sP.getResources(), bitmapDecodeStream);
                bitmapDrawable = bitmapDrawable2;
            } else {
                bitmapDrawable = new BitmapDrawable(this.sP.getResources(), bitmapSj);
            }
            Sj(bitmapDrawable);
        } catch (Throwable unused) {
        }
    }

    public float uvD() {
        return this.aZ;
    }

    @Override // com.bytedance.adsdk.ugeno.EjP
    public void vS() {
        if (this.DPc == null || this.Gn) {
            return;
        }
        this.Gn = true;
    }

    public void vS(int i11) {
        if (!LD()) {
            ViewGroup.LayoutParams layoutParams = this.HiB.getLayoutParams();
            layoutParams.height = i11;
            this.HiB.setLayoutParams(layoutParams);
            return;
        }
        T t11 = this.HiB;
        if (t11 instanceof sP) {
            ((sP) t11).sP(i11);
            return;
        }
        ViewParent viewParent = (ViewGroup) t11.getParent();
        if (viewParent instanceof sP) {
            ((sP) viewParent).sP(this.HiB, i11);
        }
    }

    public void vS(String str) {
        this.f20828aa = str;
    }

    protected void wE() {
        com.bytedance.adsdk.ugeno.HiB.Sj().sP().Sj(this.uA, this.xD, new com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj() { // from class: com.bytedance.adsdk.ugeno.sP.TKC.4
            @Override // com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj
            public void Sj(final Bitmap bitmap) {
                if (bitmap != null) {
                    TKC tkc = TKC.this;
                    if (!tkc.Ei) {
                        com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(new Runnable() { // from class: com.bytedance.adsdk.ugeno.sP.TKC.4.2
                            @Override // java.lang.Runnable
                            public void run() {
                                TKC.this.Sj(new BitmapDrawable(bitmap));
                            }
                        });
                        return;
                    }
                    final Bitmap bitmapSj = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(tkc.sP, bitmap, (int) tkc.f20833jb);
                    if (bitmapSj != null) {
                        com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(new Runnable() { // from class: com.bytedance.adsdk.ugeno.sP.TKC.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TKC.this.Sj(new BitmapDrawable(bitmapSj));
                            }
                        });
                    }
                }
            }
        });
    }

    public int xD() {
        return this.Wjd;
    }

    public float xhi() {
        T t11 = this.HiB;
        if (t11 instanceof com.bytedance.adsdk.ugeno.Sj.HiB) {
            return ((com.bytedance.adsdk.ugeno.Sj.HiB) t11).getRipple();
        }
        return 0.0f;
    }

    public float zR() {
        return this.xhi;
    }
}
