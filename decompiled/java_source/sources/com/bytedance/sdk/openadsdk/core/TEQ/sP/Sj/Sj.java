package com.bytedance.sdk.openadsdk.core.TEQ.sP.Sj;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.adsdk.sP.EjP;
import com.bytedance.adsdk.sP.TEQ;
import com.bytedance.adsdk.ugeno.HiB;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import com.bytedance.adsdk.ugeno.sP.TKC;
import com.google.android.gms.common.internal.ImagesContract;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class Sj extends TKC<sP> {
    protected HashMap<String, Bitmap> AVc;
    private float Ph;
    protected ImageView.ScaleType RrR;
    protected ImageView.ScaleType SP;
    protected String Sj;

    @Deprecated
    private boolean Xqg;
    private String dLt;

    /* JADX INFO: renamed from: gq, reason: collision with root package name */
    private float f21031gq;

    /* JADX INFO: renamed from: mj, reason: collision with root package name */
    private boolean f21032mj;
    private int oWa;
    private boolean zwV;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.TEQ.sP.Sj.Sj$1, reason: invalid class name */
    class AnonymousClass1 implements EjP {
        AnonymousClass1() {
        }

        @Override // com.bytedance.adsdk.sP.EjP
        public Bitmap Sj(final TEQ teq) {
            final String strSj;
            if (teq == null) {
                return null;
            }
            String strTEQ = teq.TEQ();
            String strUA = teq.uA();
            if (!TextUtils.isEmpty(strTEQ) && TextUtils.isEmpty(strUA)) {
                strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(strTEQ, ((TKC) Sj.this).EjP);
            } else if (!TextUtils.isEmpty(strUA) && TextUtils.isEmpty(strTEQ)) {
                strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(strUA, ((TKC) Sj.this).EjP);
            } else if (TextUtils.isEmpty(strUA) || TextUtils.isEmpty(strTEQ)) {
                strSj = null;
            } else {
                strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(strTEQ, ((TKC) Sj.this).EjP) + com.bytedance.adsdk.ugeno.TKC.sP.Sj(strUA, ((TKC) Sj.this).EjP);
            }
            if (TextUtils.isEmpty(strSj)) {
                return null;
            }
            Bitmap bitmap = Sj.this.AVc.get(strSj);
            if (bitmap != null) {
                return bitmap;
            }
            HiB.Sj().sP().Sj(((TKC) Sj.this).uA, strSj, new com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.sP.Sj.Sj.1.1
                @Override // com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj
                public void Sj(Bitmap bitmap2) {
                    if (bitmap2 != null) {
                        final Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap2, teq.Sj(), teq.sP(), false);
                        Sj.this.AVc.put(strSj, bitmapCreateScaledBitmap);
                        Dq.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.sP.Sj.Sj.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ((sP) ((TKC) Sj.this).HiB).Sj(teq.Dq(), bitmapCreateScaledBitmap);
                            }
                        });
                    }
                }
            });
            return Sj.this.AVc.get(strSj);
        }
    }

    public Sj(Context context) {
        super(context);
        this.dLt = "images";
        this.Ph = 1.0f;
        this.RrR = ImageView.ScaleType.FIT_CENTER;
        this.SP = ImageView.ScaleType.FIT_XY;
        this.AVc = new HashMap<>();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private ImageView.ScaleType Dq(String str) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        str.hashCode();
        byte b11 = -1;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    b11 = 0;
                }
                break;
            case -1274298614:
                if (str.equals("fitEnd")) {
                    b11 = 1;
                }
                break;
            case -522179887:
                if (str.equals("fitStart")) {
                    b11 = 2;
                }
                break;
            case -340708175:
                if (str.equals("centerInside")) {
                    b11 = 3;
                }
                break;
            case 97441490:
                if (str.equals("fitXY")) {
                    b11 = 4;
                }
                break;
            case 520762310:
                if (str.equals("fitCenter")) {
                    b11 = 5;
                }
                break;
            case 1161480325:
                if (str.equals("centerCrop")) {
                    b11 = 6;
                }
                break;
        }
        switch (b11) {
            case 0:
                return ImageView.ScaleType.CENTER;
            case 1:
                return ImageView.ScaleType.FIT_END;
            case 2:
                return ImageView.ScaleType.FIT_START;
            case 3:
                return ImageView.ScaleType.CENTER_INSIDE;
            case 4:
            default:
                return scaleType;
            case 5:
                return ImageView.ScaleType.FIT_CENTER;
            case 6:
                return ImageView.ScaleType.CENTER_CROP;
        }
    }

    private String Jcg(String str) {
        if (TextUtils.isEmpty(str) || !str.contains(ImagesContract.LOCAL)) {
            return "";
        }
        if (str.contains("shake_phone")) {
            return "lottie_json/shake_phone.json";
        }
        return str.contains("swipe_right") ? "lottie_json/swipe_right.json" : "";
    }

    private ImageView.ScaleType uA(String str) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        str.hashCode();
        switch (str) {
            case "center":
            case "none":
                return ImageView.ScaleType.CENTER;
            case "fit":
                return ImageView.ScaleType.FIT_CENTER;
            case "crop":
                return ImageView.ScaleType.CENTER_CROP;
            case "fill":
            default:
                return scaleType;
        }
    }

    protected void EjP() {
        ((sP) this.HiB).Sj();
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
        }
        super.Sj(str, str2);
        str.hashCode();
        switch (str) {
            case "scaleMode":
                this.SP = uA(str2);
                break;
            case "scaleType":
                this.RrR = Dq(str2);
                break;
            case "progress":
                this.f21031gq = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case "imagePath":
                this.dLt = str2;
                break;
            case "autoReverse":
                this.zwV = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, false);
                break;
            case "src":
                this.Sj = com.bytedance.sdk.openadsdk.core.TEQ.TKC.Sj(str2);
                break;
            case "loop":
                if (!LD()) {
                    this.Xqg = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, false);
                    break;
                } else {
                    this.oWa = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0);
                    break;
                }
                break;
            case "speed":
                this.Ph = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 1.0f);
                break;
            case "autoPlay":
                this.f21032mj = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, false);
                break;
            case "autoplay":
                this.f21032mj = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, true);
                break;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    /* JADX INFO: renamed from: TKC, reason: merged with bridge method [inline-methods] */
    public sP Sj() {
        sP sPVar = new sP(this.sP);
        sPVar.Sj(this);
        return sPVar;
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
        ((sP) this.HiB).setProgress(this.f21031gq);
        if (this.Ph <= 0.0f) {
            this.Ph = 1.0f;
        }
        ((sP) this.HiB).setSpeed(this.Ph);
        if (this.Sj.startsWith(ImagesContract.LOCAL)) {
            ((sP) this.HiB).setAnimation(Jcg(this.Sj));
            ((sP) this.HiB).setImageAssetsFolder(this.dLt);
        } else {
            ((sP) this.HiB).setAnimationFromUrl(this.Sj);
        }
        ((sP) this.HiB).setImageAssetDelegate(new AnonymousClass1());
        if (LD()) {
            ((sP) this.HiB).setScaleType(this.SP);
        } else {
            ((sP) this.HiB).setScaleType(this.RrR);
        }
        if (LD()) {
            ((sP) this.HiB).setRepeatCount(this.oWa);
        } else {
            ((sP) this.HiB).Sj(this.Xqg);
        }
        EjP();
    }
}
