package com.bytedance.adsdk.ugeno.uA.vS;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import com.bytedance.adsdk.ugeno.sP.TKC;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends TKC<Sj> {
    protected int AVc;
    private float Aw;
    private float GMp;

    @Deprecated
    private float Grp;
    private float Ov;
    private TextUtils.TruncateAt Ph;
    protected int RrR;
    private float SP;
    protected String Sj;
    private int TX;
    private float WxP;
    private int Xqg;
    private int dLt;

    /* JADX INFO: renamed from: gq, reason: collision with root package name */
    @Deprecated
    private TextUtils.TruncateAt f20844gq;
    private float hzV;

    /* JADX INFO: renamed from: mj, reason: collision with root package name */
    private int f20845mj;
    private int oWa;
    private float tPD;

    @Deprecated
    private float tX;

    /* JADX INFO: renamed from: vb, reason: collision with root package name */
    private boolean f20846vb;
    private int zwV;

    public sP(Context context) {
        super(context);
        this.AVc = ViewCompat.MEASURED_STATE_MASK;
        this.SP = 12.0f;
        this.zwV = Integer.MAX_VALUE;
        this.oWa = 2;
        this.RrR = 3;
        this.Ph = TextUtils.TruncateAt.END;
        this.GMp = -1.0f;
        this.hzV = 400.0f;
    }

    private TextUtils.TruncateAt Dq(String str) {
        str.hashCode();
        switch (str) {
            case "center":
                this.f20844gq = TextUtils.TruncateAt.MIDDLE;
                break;
            case "end":
                this.f20844gq = TextUtils.TruncateAt.END;
                break;
            case "start":
                this.f20844gq = TextUtils.TruncateAt.START;
                break;
            default:
                this.f20844gq = null;
                break;
        }
        return this.f20844gq;
    }

    private void EjP() {
        ((Sj) this.HiB).setLineSpacing(0.0f, this.GMp);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0035  */
    private int TEQ(String str) {
        byte b11;
        int iHashCode = str.hashCode();
        if (iHashCode != -1178781136) {
            if (iHashCode != -1039745817) {
                if (iHashCode == 3029637 && str.equals(TtmlNode.BOLD)) {
                    b11 = 0;
                } else {
                    b11 = -1;
                }
            } else if (str.equals("normal")) {
                b11 = 2;
            } else {
                b11 = -1;
            }
        } else if (str.equals(TtmlNode.ITALIC)) {
            b11 = 1;
        } else {
            b11 = -1;
        }
        if (b11 != 0) {
            return b11 != 1 ? 0 : 2;
        }
        return 1;
    }

    private int Ym(String str) {
        str.hashCode();
        switch (str) {
            case "center":
                return 17;
            case "left":
                return 3;
            case "right":
                return 5;
            default:
                return 2;
        }
    }

    private int aa(String str) {
        str.hashCode();
        switch (str) {
            case "underline":
                return 8;
            case "strikethrough":
                return 16;
            case "none":
            default:
                return Integer.MAX_VALUE;
        }
    }

    private TextUtils.TruncateAt uA(String str) {
        if (TextUtils.equals(str, "none")) {
            return null;
        }
        return TextUtils.TruncateAt.END;
    }

    private void uA() {
        float f11 = this.GMp;
        if (f11 <= 3.0f) {
            ((Sj) this.HiB).setLineSpacing(0.0f, f11);
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            int iRound = Math.round(Dq.Sj(this.sP, (f11 - (this.SP * 1.2f)) / 2.0f));
            int paddingTop = ((Sj) this.HiB).getPaddingTop() + iRound;
            int paddingBottom = ((Sj) this.HiB).getPaddingBottom() + iRound;
            T t11 = this.HiB;
            ((Sj) t11).setPadding(((Sj) t11).getPaddingLeft(), paddingTop, ((Sj) this.HiB).getPaddingRight(), paddingBottom);
            ((Sj) this.HiB).setLineHeight(Math.round(Dq.Sj(this.sP, this.GMp)));
        }
    }

    public void Jcg(String str) {
        this.Sj = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.equals("null", str)) {
            this.Sj = "";
        }
        ((Sj) this.HiB).setText(this.Sj);
    }

    public void Sj(int i11) {
        this.f20845mj = i11;
        if (i11 == Integer.MAX_VALUE) {
            return;
        }
        ((Sj) this.HiB).setPaintFlags(i11);
    }

    public void Sj(TextUtils.TruncateAt truncateAt) {
        if (truncateAt == null) {
            return;
        }
        ((Sj) this.HiB).setEllipsize(truncateAt);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
        }
        super.Sj(str, str2);
        str.hashCode();
        switch (str) {
            case "shadowRadius":
            case "shadowBlur":
                this.tPD = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case "shadowColor":
                this.TX = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2);
                this.f20846vb = true;
                break;
            case "shadowOffsetX":
                this.Aw = Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case "shadowOffsetY":
                this.Ov = Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case "textAlign":
                this.oWa = Ym(str2);
                break;
            case "textColor":
                this.AVc = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2);
                break;
            case "textStyle":
                this.dLt = TEQ(str2);
                break;
            case "textSize":
                this.SP = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case "textDecoration":
                this.f20845mj = aa(str2);
                break;
            case "shadowDx":
                this.Grp = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case "shadowDy":
                this.tX = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case "fontWeight":
                float fSj = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, -1.0f);
                this.hzV = fSj;
                if (fSj < 1.0f || fSj > 1000.0f) {
                    this.hzV = 400.0f;
                    break;
                }
                break;
            case "lineHeight":
                this.GMp = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 1.0f);
                break;
            case "text":
                this.Sj = str2;
                break;
            case "lines":
                this.Xqg = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0);
                break;
            case "ellipsis":
                this.Ph = uA(str2);
                break;
            case "maxLines":
                int iSj = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, Integer.MAX_VALUE);
                this.zwV = iSj > 0 ? iSj : Integer.MAX_VALUE;
                break;
            case "ellipsize":
                this.f20844gq = Dq(str2);
                break;
            case "letterSpacing":
                this.WxP = Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    /* JADX INFO: renamed from: TKC, reason: merged with bridge method [inline-methods] */
    public Sj Sj() {
        Sj sj2 = new Sj(this.sP);
        sj2.Sj(this);
        return sj2;
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
        if (TextUtils.equals("null", this.Sj)) {
            this.Sj = "";
        }
        Jcg(this.Sj);
        ((Sj) this.HiB).setTextSize(1, this.SP);
        ((Sj) this.HiB).setTextColor(this.AVc);
        ((Sj) this.HiB).setLines(this.Xqg);
        ((Sj) this.HiB).setMaxLines(this.zwV);
        ((Sj) this.HiB).setGravity(this.oWa);
        ((Sj) this.HiB).setIncludeFontPadding(false);
        Sj(this.f20845mj);
        if (LD()) {
            Sj(this.Ph);
        } else {
            Sj(this.f20844gq);
        }
        if (this.GMp > 0.0f) {
            if (LD()) {
                uA();
            } else {
                EjP();
            }
        }
        int i11 = Build.VERSION.SDK_INT;
        ((Sj) this.HiB).setBreakStrategy(0);
        if (!LD()) {
            ((Sj) this.HiB).setShadowLayer(this.tPD, this.Grp, this.tX, this.TX);
        } else if (this.f20846vb) {
            if (this.tPD <= 0.0f) {
                this.tPD = 1.0E-5f;
            }
            ((Sj) this.HiB).setShadowLayer(this.tPD, this.Aw, this.Ov, this.TX);
        }
        int i12 = this.dLt;
        if (i12 == 1) {
            ((Sj) this.HiB).setTypeface(Typeface.DEFAULT, i12);
        } else if (i11 >= 28) {
            ((Sj) this.HiB).setTypeface(Typeface.create(Typeface.DEFAULT, (int) this.hzV, i12 == 2));
        } else if (this.hzV >= 500.0f) {
            ((Sj) this.HiB).setTypeface(Typeface.DEFAULT, 1);
        }
        if (Dq.Sj(this.sP, this.SP) > 0.0f) {
            ((Sj) this.HiB).setLetterSpacing(this.WxP / Dq.Sj(this.sP, this.SP));
        }
    }
}
