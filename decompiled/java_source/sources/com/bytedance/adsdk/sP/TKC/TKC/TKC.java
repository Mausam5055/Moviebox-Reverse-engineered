package com.bytedance.adsdk.sP.TKC.TKC;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.adsdk.sP.sU;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends EjP {
    private LinearLayout Dq;
    private final List<String> TEQ;
    private final List<TextView> Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String f20785aa;
    private final LinearLayout.LayoutParams uA;

    public TKC(com.bytedance.adsdk.sP.uA uAVar, HiB hiB, Context context) {
        List<com.bytedance.adsdk.sP.TEQ.Sj> listTKC;
        super(uAVar, hiB);
        this.uA = new LinearLayout.LayoutParams(-2, -2);
        this.TEQ = new ArrayList();
        this.Ym = new ArrayList();
        com.bytedance.adsdk.sP.TEQ teq = ((EjP) this).Jcg;
        if (teq == null || (listTKC = teq.TKC()) == null || listTKC.size() <= 0) {
            return;
        }
        LinearLayout linearLayout = new LinearLayout(context);
        this.Dq = linearLayout;
        int i11 = 0;
        linearLayout.setOrientation(0);
        sP(listTKC.get(0).Jcg);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(80);
        this.Dq.addView(linearLayout2);
        List<String> listAa = aa();
        while (i11 < listTKC.size()) {
            com.bytedance.adsdk.sP.TEQ.Sj sj2 = listTKC.get(i11);
            TextView textView = new TextView(context);
            Sj(textView, sj2, (listAa == null || i11 >= listAa.size()) ? "" : listAa.get(i11));
            int i12 = sj2.vS;
            if (i12 != 0) {
                this.uA.bottomMargin = (int) (i12 * com.bytedance.adsdk.sP.vS.vS.Sj());
                linearLayout2.addView(textView, this.uA);
            } else {
                linearLayout2.addView(textView);
            }
            i11++;
        }
        float fSj = com.bytedance.adsdk.sP.vS.vS.Sj();
        Sj(this.Dq, (int) (((EjP) this).Jcg.Sj() * fSj), (int) (((EjP) this).Jcg.sP() * fSj));
    }

    private static void Sj(View view, int i11, int i12) {
        view.layout(0, 0, i11, i12);
        view.measure(View.MeasureSpec.makeMeasureSpec(i11, 1073741824), View.MeasureSpec.makeMeasureSpec(i12, 1073741824));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    private void Sj(TextView textView, com.bytedance.adsdk.sP.TEQ.Sj sj2, String str) {
        if (TextUtils.isEmpty(str)) {
            textView.setText("");
        } else {
            textView.setText(str);
        }
        if (!TextUtils.isEmpty(sj2.TKC)) {
            textView.setTextColor(Color.parseColor(sj2.TKC));
        }
        if (!TextUtils.isEmpty(sj2.EjP)) {
            textView.setBackgroundColor(Color.parseColor(sj2.EjP));
        }
        textView.setGravity(17);
        textView.setTextSize(sj2.HiB);
    }

    private void TKC(float f11) {
        List<com.bytedance.adsdk.sP.TEQ.Sj> listTKC;
        com.bytedance.adsdk.sP.TEQ teq = ((EjP) this).Jcg;
        if (teq == null || (listTKC = teq.TKC()) == null || listTKC.size() <= 0) {
            return;
        }
        this.Dq.setOrientation(0);
        this.Dq.setGravity(17);
        if (this.Dq.getChildCount() <= 0) {
            return;
        }
        LinearLayout linearLayout = (LinearLayout) this.Dq.getChildAt(0);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(80);
        this.Dq.removeAllViews();
        if (linearLayout.getChildCount() != listTKC.size()) {
            return;
        }
        List<String> listAa = aa();
        this.Ym.clear();
        int i11 = 0;
        while (i11 < listTKC.size()) {
            com.bytedance.adsdk.sP.TEQ.Sj sj2 = listTKC.get(i11);
            TextView textView = (TextView) linearLayout.getChildAt(i11);
            this.Ym.add(textView);
            Sj(textView, sj2, (listAa == null || i11 >= listAa.size()) ? "" : listAa.get(i11));
            i11++;
        }
        linearLayout.removeAllViews();
        for (int i12 = 0; i12 < listTKC.size(); i12++) {
            com.bytedance.adsdk.sP.TEQ.Sj sj3 = listTKC.get(i12);
            TextView textView2 = this.Ym.get(i12);
            textView2.setAlpha(f11);
            linearLayout.setAlpha(f11);
            int i13 = sj3.vS;
            if (i13 != 0) {
                this.uA.bottomMargin = (int) (i13 * com.bytedance.adsdk.sP.vS.vS.Sj());
                linearLayout.addView(textView2, this.uA);
            } else {
                linearLayout.addView(textView2);
            }
        }
        this.Dq.setAlpha(f11);
        this.Dq.addView(linearLayout);
        float fSj = com.bytedance.adsdk.sP.vS.vS.Sj();
        Sj(this.Dq, (int) (((EjP) this).Jcg.Sj() * fSj), (int) (((EjP) this).Jcg.sP() * fSj));
    }

    private List<String> aa() {
        com.bytedance.adsdk.sP.uA uAVar;
        sU sUVarKF;
        List<com.bytedance.adsdk.sP.TEQ.Sj> listTKC;
        if (((EjP) this).Jcg == null || (uAVar = this.sP) == null || (sUVarKF = uAVar.kF()) == null) {
            return null;
        }
        String strEjP = ((EjP) this).Jcg.EjP();
        if ((!TextUtils.isEmpty(strEjP) || !TextUtils.isEmpty(this.f20785aa)) && (listTKC = ((EjP) this).Jcg.TKC()) != null) {
            String strSj = this.f20785aa;
            if (TextUtils.isEmpty(strSj)) {
                strSj = sUVarKF.Sj(strEjP);
            }
            if (!TextUtils.isEmpty(strSj)) {
                int length = strSj.length();
                this.TEQ.clear();
                for (int i11 = 0; i11 < listTKC.size(); i11++) {
                    com.bytedance.adsdk.sP.TEQ.Sj sj2 = listTKC.get(i11);
                    int iMax = sj2.Sj;
                    int iMax2 = sj2.sP;
                    if (iMax < 0) {
                        iMax = Math.max(iMax + length, 0);
                    }
                    if (iMax2 < 0) {
                        iMax2 = Math.max(iMax2 + length, 0);
                    }
                    if (iMax + iMax2 > length) {
                        this.TEQ.add("");
                    } else {
                        if (listTKC.size() == 1 && iMax == 0 && iMax2 == 0) {
                            iMax2 = length;
                        }
                        this.TEQ.add(strSj.substring(iMax, iMax2 + iMax));
                    }
                }
                return this.TEQ;
            }
        }
        return null;
    }

    private void sP(String str) {
        if (TextUtils.isEmpty(str)) {
            this.Dq.setGravity(17);
            return;
        }
        str.hashCode();
        if (str.equals(TtmlNode.LEFT)) {
            this.Dq.setGravity(3);
        } else if (str.equals(TtmlNode.RIGHT)) {
            this.Dq.setGravity(5);
        } else {
            this.Dq.setGravity(17);
        }
    }

    public void Sj(String str) {
        this.f20785aa = str;
    }

    @Override // com.bytedance.adsdk.sP.TKC.TKC.EjP, com.bytedance.adsdk.sP.TKC.TKC.Sj
    public void sP(Canvas canvas, Matrix matrix, int i11) {
        if (this.Dq == null) {
            super.sP(canvas, matrix, i11);
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        Sj(i11);
        TKC(vS());
        this.Dq.draw(canvas);
        canvas.restore();
    }
}
