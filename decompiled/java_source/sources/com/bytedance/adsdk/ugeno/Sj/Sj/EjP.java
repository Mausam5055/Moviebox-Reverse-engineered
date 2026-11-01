package com.bytedance.adsdk.ugeno.Sj.Sj;

import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends Sj {
    private static final float Zq;
    private static final float dNu;
    private static final float sef;
    private static final float uvD;
    private int Dq;
    private Paint EjP;
    private Path Fmk;
    private Path HiB;
    private int Jcg;
    private int TEQ;
    private int TKC;
    private float TzV;
    private int Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f20813aa;
    private float uA;
    private com.bytedance.adsdk.ugeno.Jcg.Sj.C0199Sj vS;

    static {
        float radians = (float) Math.toRadians(30.0d);
        sef = radians;
        Zq = (float) Math.tan(radians);
        uvD = (float) Math.cos(radians);
        dNu = (float) Math.sin(radians);
    }

    public EjP(com.bytedance.adsdk.ugeno.sP.TKC tkc, JSONObject jSONObject) {
        super(tkc, jSONObject);
        this.f20813aa = true;
        Paint paint = new Paint();
        this.EjP = paint;
        paint.setAntiAlias(true);
        this.HiB = new Path();
        this.uA = this.sP.zR();
        this.Fmk = new Path();
    }

    private void TKC(Canvas canvas) {
        LinearGradient linearGradient;
        try {
            if (this.sP.db() > 0.0f) {
                int i11 = this.TEQ;
                float f11 = Zq;
                float fDb = (i11 + (i11 * f11)) * this.sP.db();
                this.Fmk.reset();
                this.Fmk.moveTo(fDb, 0.0f);
                int i12 = this.Ym;
                float f12 = fDb - (i12 * f11);
                this.Fmk.lineTo(f12, i12);
                this.Fmk.lineTo(f12 + this.TKC, this.Ym);
                this.Fmk.lineTo(this.TKC + fDb, 0.0f);
                this.Fmk.close();
                float f13 = this.TzV;
                float f14 = uvD * f13;
                float f15 = f13 * dNu;
                if (!this.f20813aa || this.vS == null) {
                    float f16 = fDb + f14;
                    int i13 = this.Dq;
                    linearGradient = new LinearGradient(fDb, 0.0f, f16, f15, new int[]{i13, this.Jcg, i13}, (float[]) null, Shader.TileMode.CLAMP);
                } else {
                    linearGradient = new LinearGradient(fDb, 0.0f, fDb + f14, f15, this.vS.sP, (float[]) null, Shader.TileMode.CLAMP);
                }
                this.EjP.setShader(linearGradient);
                Path path = this.HiB;
                if (path != null) {
                    canvas.clipPath(path, Region.Op.INTERSECT);
                }
                canvas.drawPath(this.Fmk, this.EjP);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public void Sj(int i11, int i12) {
        this.TEQ = i11;
        this.Ym = i12;
        try {
            RectF rectF = new RectF(0.0f, 0.0f, i11, i12);
            Path path = this.HiB;
            float f11 = this.uA;
            path.addRoundRect(rectF, f11, f11, Path.Direction.CW);
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    @SuppressLint({"DrawAllocation"})
    public void Sj(Canvas canvas) {
        TKC(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public List<PropertyValuesHolder> TKC() {
        PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(EjP(), 0.0f, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(propertyValuesHolderOfFloat);
        return arrayList;
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public void sP() {
        this.TKC = (int) Dq.Sj(this.sP.Ym().getContext(), this.Sj.optInt("shineWidth", 30));
        String strOptString = this.Sj.optString("backgroundColor", "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))");
        String str = TextUtils.isEmpty(strOptString) ? "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))" : strOptString;
        if (str.startsWith("linear")) {
            this.vS = com.bytedance.adsdk.ugeno.Jcg.Sj.sP(str);
        } else {
            int iSj = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str);
            this.Jcg = iSj;
            this.Dq = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(iSj, 32);
            this.f20813aa = false;
        }
        this.TzV = uvD * this.TKC;
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public void sP(Canvas canvas) {
        TKC(canvas);
    }
}
