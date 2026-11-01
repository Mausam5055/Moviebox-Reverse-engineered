package com.bytedance.adsdk.ugeno.Sj.Sj;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.util.Log;
import android.view.View;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends Sj {
    private Paint Dq;
    private float EjP;
    private float HiB;
    private Paint Jcg;
    private LinearGradient TEQ;
    private String TKC;
    private Matrix Ym;
    private PorterDuffXfermode uA;
    private View vS;

    public TKC(com.bytedance.adsdk.ugeno.sP.TKC tkc, JSONObject jSONObject) {
        super(tkc, jSONObject);
        this.vS = this.sP.Ym();
        Paint paint = new Paint();
        this.Jcg = paint;
        paint.setAntiAlias(true);
        this.vS.setLayerType(2, null);
        this.uA = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.Dq = new Paint();
        this.Ym = new Matrix();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void TKC(Canvas canvas) {
        byte b11;
        try {
            if (this.sP.qRN() > 0.0f) {
                int iQRN = (int) (this.EjP * this.sP.qRN());
                int iQRN2 = (int) (this.HiB * this.sP.qRN());
                this.Jcg.setXfermode(this.uA);
                String str = this.TKC;
                switch (str.hashCode()) {
                    case -1383228885:
                        if (!str.equals(IntegrationConstants.TAB_BAR_POSITION_DEFAULT)) {
                            b11 = -1;
                        } else {
                            b11 = 2;
                        }
                        break;
                    case 115029:
                        if (!str.equals(IntegrationConstants.TAB_BAR_POSITION_TOP)) {
                            b11 = -1;
                        } else {
                            b11 = 3;
                        }
                        break;
                    case 3317767:
                        if (!str.equals(TtmlNode.LEFT)) {
                            b11 = -1;
                        } else {
                            b11 = 1;
                        }
                        break;
                    case 108511772:
                        if (!str.equals(TtmlNode.RIGHT)) {
                            b11 = -1;
                        } else {
                            b11 = 0;
                        }
                        break;
                    default:
                        b11 = -1;
                        break;
                }
                if (b11 == 0) {
                    float f11 = iQRN;
                    canvas.drawRect(f11, 0.0f, this.EjP, this.HiB, this.Jcg);
                    this.Ym.setTranslate(f11, this.HiB);
                    this.TEQ.setLocalMatrix(this.Ym);
                    this.Dq.setShader(this.TEQ);
                    if (this.sP.qRN() <= 1.0f && this.sP.qRN() > 0.9f) {
                        this.Dq.setAlpha((int) (255.0f - (this.sP.qRN() * 255.0f)));
                    }
                    canvas.drawRect(0.0f, 0.0f, f11, this.HiB, this.Dq);
                    return;
                }
                if (b11 == 1) {
                    float f12 = iQRN;
                    canvas.drawRect(0.0f, 0.0f, this.EjP - f12, this.HiB, this.Jcg);
                    this.Ym.setTranslate(this.EjP - f12, 0.0f);
                    this.TEQ.setLocalMatrix(this.Ym);
                    this.Dq.setShader(this.TEQ);
                    if (this.sP.qRN() <= 1.0f && this.sP.qRN() > 0.9f) {
                        this.Dq.setAlpha((int) (255.0f - (this.sP.qRN() * 255.0f)));
                    }
                    float f13 = this.EjP;
                    canvas.drawRect(f13, this.HiB, f13 - f12, 0.0f, this.Dq);
                    return;
                }
                if (b11 == 2) {
                    float f14 = iQRN2;
                    canvas.drawRect(0.0f, f14, this.EjP, this.HiB, this.Jcg);
                    this.Ym.setTranslate(0.0f, f14);
                    this.TEQ.setLocalMatrix(this.Ym);
                    this.Dq.setShader(this.TEQ);
                    if (this.sP.qRN() <= 1.0f && this.sP.qRN() > 0.9f) {
                        this.Dq.setAlpha((int) (255.0f - (this.sP.qRN() * 255.0f)));
                    }
                    canvas.drawRect(0.0f, 0.0f, this.EjP, f14, this.Dq);
                    return;
                }
                if (b11 != 3) {
                    return;
                }
                float f15 = iQRN2;
                canvas.drawRect(0.0f, 0.0f, this.EjP, this.HiB - f15, this.Jcg);
                this.Ym.setTranslate(0.0f, this.HiB - f15);
                this.TEQ.setLocalMatrix(this.Ym);
                this.Dq.setShader(this.TEQ);
                if (this.sP.qRN() <= 1.0f && this.sP.qRN() > 0.9f) {
                    this.Dq.setAlpha((int) (255.0f - (this.sP.qRN() * 255.0f)));
                }
                float f16 = this.EjP;
                float f17 = this.HiB;
                canvas.drawRect(f16, f17, 0.0f, f17 - f15, this.Dq);
            }
        } catch (Throwable th2) {
            Log.e("BaseEffectWrapper", th2.getMessage());
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public void Sj(int i11, int i12) {
        this.EjP = i11;
        this.HiB = i12;
        String str = this.TKC;
        str.hashCode();
        switch (str) {
            case "bottom":
                this.TEQ = new LinearGradient(0.0f, -this.HiB, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "top":
                this.TEQ = new LinearGradient(0.0f, this.HiB, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "left":
                this.TEQ = new LinearGradient(this.EjP, 0.0f, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "right":
                this.TEQ = new LinearGradient(-this.EjP, 0.0f, 0.0f, this.HiB, 0, -1, Shader.TileMode.CLAMP);
                break;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public void Sj(Canvas canvas) {
        TKC(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public List<PropertyValuesHolder> TKC() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(PropertyValuesHolder.ofFloat("rubIn", 0.0f, 1.0f));
        arrayList.add(PropertyValuesHolder.ofFloat(com.bytedance.adsdk.ugeno.Sj.EjP.ALPHA.sP(), 0.0f, 1.0f));
        return arrayList;
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public void sP() {
        this.TKC = this.Sj.optString("direction", TtmlNode.LEFT);
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public void sP(Canvas canvas) {
        TKC(canvas);
    }
}
