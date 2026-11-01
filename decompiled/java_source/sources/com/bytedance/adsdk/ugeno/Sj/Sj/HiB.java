package com.bytedance.adsdk.ugeno.Sj.Sj;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends Sj {
    private boolean Dq;
    private float EjP;
    private PorterDuffXfermode Fmk;
    private Paint HiB;
    private String Jcg;
    private Path TEQ;
    private float TKC;
    private Path Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private Path f20814aa;
    private boolean uA;
    private float vS;

    public HiB(com.bytedance.adsdk.ugeno.sP.TKC tkc, JSONObject jSONObject) {
        super(tkc, jSONObject);
        this.Dq = true;
        this.uA = true;
        Paint paint = new Paint();
        this.HiB = paint;
        paint.setAntiAlias(true);
        this.sP.Ym().setLayerType(2, null);
        this.Fmk = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.TEQ = new Path();
        this.Ym = new Path();
        this.f20814aa = new Path();
    }

    private void TKC(Canvas canvas) {
        if (this.sP.ndK() > 0.0f) {
            int iNdK = (int) (this.TKC * this.sP.ndK());
            int iNdK2 = (int) (this.EjP * this.sP.ndK());
            this.HiB.setXfermode(this.Fmk);
            String str = this.Jcg;
            str.hashCode();
            switch (str) {
                case "bottom":
                    canvas.drawRect(0.0f, iNdK2, this.TKC, this.EjP, this.HiB);
                    break;
                case "center":
                    this.TEQ.reset();
                    this.Ym.reset();
                    this.f20814aa.reset();
                    Path.Direction direction = Path.Direction.CW;
                    this.TEQ.addCircle(this.TKC / 2.0f, this.EjP / 2.0f, iNdK, direction);
                    Path path = this.Ym;
                    float f11 = this.TKC;
                    path.addRect(f11 / 2.0f, 0.0f, f11, this.EjP, direction);
                    Path path2 = this.Ym;
                    Path path3 = this.TEQ;
                    Path.Op op2 = Path.Op.DIFFERENCE;
                    path2.op(path3, op2);
                    this.f20814aa.addRect(0.0f, 0.0f, this.TKC / 2.0f, this.EjP, direction);
                    this.f20814aa.op(this.TEQ, op2);
                    canvas.drawPath(this.Ym, this.HiB);
                    canvas.drawPath(this.f20814aa, this.HiB);
                    break;
                case "top":
                    canvas.drawRect(0.0f, 0.0f, this.TKC, this.EjP - iNdK2, this.HiB);
                    break;
                case "left":
                    canvas.drawRect(0.0f, 0.0f, this.TKC - iNdK, this.EjP, this.HiB);
                    break;
                case "right":
                    canvas.drawRect(iNdK, 0.0f, this.TKC, this.EjP, this.HiB);
                    break;
            }
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public void Sj(int i11, int i12) {
        if (i11 > 0 && this.Dq) {
            this.TKC = i11;
            this.Dq = false;
        }
        if (i12 <= 0 || !this.uA) {
            return;
        }
        this.EjP = i12;
        this.uA = false;
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public void Sj(Canvas canvas) {
        TKC(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public List<PropertyValuesHolder> TKC() {
        PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(EjP(), this.vS, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(propertyValuesHolderOfFloat);
        return arrayList;
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public void sP() {
        this.vS = (float) this.Sj.optDouble("start", 0.0d);
        this.Jcg = this.Sj.optString("direction", TtmlNode.CENTER);
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.Sj.Sj
    public void sP(Canvas canvas) {
        TKC(canvas);
    }
}
