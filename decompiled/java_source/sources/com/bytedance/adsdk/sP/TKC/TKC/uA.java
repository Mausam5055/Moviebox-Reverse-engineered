package com.bytedance.adsdk.sP.TKC.TKC;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.LongSparseArray;
import com.bytedance.adsdk.sP.Sj.sP.Zq;
import com.bytedance.adsdk.sP.TKC.Sj.Ym;
import com.bytedance.adsdk.sP.TKC.sP.uvD;
import com.bytedance.adsdk.sP.sU;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class uA extends com.bytedance.adsdk.sP.TKC.TKC.Sj {
    private final RectF Dq;
    private final LongSparseArray<String> Fmk;
    private final StringBuilder Jcg;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> RiZ;
    private final Paint TEQ;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> TzV;
    private final Paint Ym;
    private final Zq Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private final Map<com.bytedance.adsdk.sP.TKC.EjP, List<com.bytedance.adsdk.sP.Sj.Sj.EjP>> f20787aa;
    private final com.bytedance.adsdk.sP.Jcg dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> f20788dx;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> f20789ib;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> kF;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Typeface, Typeface> ley;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sU;
    private final List<Sj> sef;
    private final Matrix uA;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> uP;
    private final com.bytedance.adsdk.sP.uA uvD;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> wE;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> zR;

    /* JADX INFO: renamed from: com.bytedance.adsdk.sP.TKC.TKC.uA$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] Sj;

        static {
            int[] iArr = new int[com.bytedance.adsdk.sP.TKC.sP.Sj.values().length];
            Sj = iArr;
            try {
                iArr[com.bytedance.adsdk.sP.TKC.sP.Sj.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[com.bytedance.adsdk.sP.TKC.sP.Sj.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[com.bytedance.adsdk.sP.TKC.sP.Sj.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static class Sj {
        private String Sj;
        private float sP;

        private Sj() {
            this.Sj = "";
            this.sP = 0.0f;
        }

        void Sj(String str, float f11) {
            this.Sj = str;
            this.sP = f11;
        }
    }

    uA(com.bytedance.adsdk.sP.uA uAVar, HiB hiB) {
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVar;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVar2;
        com.bytedance.adsdk.sP.TKC.Sj.Sj sj2;
        com.bytedance.adsdk.sP.TKC.Sj.Sj sj3;
        super(uAVar, hiB);
        this.Jcg = new StringBuilder(2);
        this.Dq = new RectF();
        this.uA = new Matrix();
        int i11 = 1;
        this.TEQ = new Paint(i11) { // from class: com.bytedance.adsdk.sP.TKC.TKC.uA.1
            {
                setStyle(Paint.Style.FILL);
            }
        };
        this.Ym = new Paint(i11) { // from class: com.bytedance.adsdk.sP.TKC.TKC.uA.2
            {
                setStyle(Paint.Style.STROKE);
            }
        };
        this.f20787aa = new HashMap();
        this.Fmk = new LongSparseArray<>();
        this.sef = new ArrayList();
        this.uvD = uAVar;
        this.dNu = hiB.Sj();
        Zq zqSj = hiB.RiZ().Sj();
        this.Zq = zqSj;
        zqSj.Sj(this);
        Sj(zqSj);
        Ym ymSU = hiB.sU();
        if (ymSU != null && (sj3 = ymSU.Sj) != null) {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> Sj2 = sj3.Sj();
            this.TzV = Sj2;
            Sj2.Sj(this);
            Sj(this.TzV);
        }
        if (ymSU != null && (sj2 = ymSU.sP) != null) {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> Sj3 = sj2.Sj();
            this.sU = Sj3;
            Sj3.Sj(this);
            Sj(this.sU);
        }
        if (ymSU != null && (sPVar2 = ymSU.TKC) != null) {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj4 = sPVar2.Sj();
            this.zR = Sj4;
            Sj4.Sj(this);
            Sj(this.zR);
        }
        if (ymSU == null || (sPVar = ymSU.EjP) == null) {
            return;
        }
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj5 = sPVar.Sj();
        this.kF = Sj5;
        Sj5.Sj(this);
        Sj(this.kF);
    }

    private Typeface Sj(com.bytedance.adsdk.sP.TKC.TKC tkc) {
        Typeface typefaceJcg;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Typeface, Typeface> sj2 = this.ley;
        if (sj2 != null && (typefaceJcg = sj2.Jcg()) != null) {
            return typefaceJcg;
        }
        Typeface typefaceSj = this.uvD.Sj(tkc);
        return typefaceSj != null ? typefaceSj : tkc.EjP();
    }

    private String Sj(String str, int i11) {
        int iCodePointAt = str.codePointAt(i11);
        int iCharCount = Character.charCount(iCodePointAt) + i11;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (!TKC(iCodePointAt2)) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j11 = iCodePointAt;
        if (this.Fmk.indexOfKey(j11) >= 0) {
            return this.Fmk.get(j11);
        }
        this.Jcg.setLength(0);
        while (i11 < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i11);
            this.Jcg.appendCodePoint(iCodePointAt3);
            i11 += Character.charCount(iCodePointAt3);
        }
        String string = this.Jcg.toString();
        this.Fmk.put(j11, string);
        return string;
    }

    private List<com.bytedance.adsdk.sP.Sj.Sj.EjP> Sj(com.bytedance.adsdk.sP.TKC.EjP ejP) {
        if (this.f20787aa.containsKey(ejP)) {
            return this.f20787aa.get(ejP);
        }
        List<uvD> listSj = ejP.Sj();
        int size = listSj.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new com.bytedance.adsdk.sP.Sj.Sj.EjP(this.uvD, this, listSj.get(i11), this.dNu));
        }
        this.f20787aa.put(ejP, arrayList);
        return arrayList;
    }

    private List<String> Sj(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private List<Sj> Sj(String str, float f11, com.bytedance.adsdk.sP.TKC.TKC tkc, float f12, float f13, boolean z10) {
        float fMeasureText;
        int i11 = 0;
        int i12 = 0;
        boolean z11 = false;
        int i13 = 0;
        float f14 = 0.0f;
        float f15 = 0.0f;
        float f16 = 0.0f;
        for (int i14 = 0; i14 < str.length(); i14++) {
            char cCharAt = str.charAt(i14);
            if (z10) {
                com.bytedance.adsdk.sP.TKC.EjP ejP = this.dNu.sef().get(com.bytedance.adsdk.sP.TKC.EjP.Sj(cCharAt, tkc.Sj(), tkc.TKC()));
                if (ejP != null) {
                    fMeasureText = ((float) ejP.sP()) * f12 * com.bytedance.adsdk.sP.vS.vS.Sj();
                }
            } else {
                fMeasureText = this.TEQ.measureText(str.substring(i14, i14 + 1));
            }
            float f17 = fMeasureText + f13;
            if (cCharAt == ' ') {
                z11 = true;
                f16 = f17;
            } else if (z11) {
                z11 = false;
                i13 = i14;
                f15 = f17;
            } else {
                f15 += f17;
            }
            f14 += f17;
            if (f11 > 0.0f && f14 >= f11 && cCharAt != ' ') {
                i11++;
                Sj sjSP = sP(i11);
                if (i13 == i12) {
                    String strSubstring = str.substring(i12, i14);
                    String strTrim = strSubstring.trim();
                    sjSP.Sj(strTrim, (f14 - f17) - ((strTrim.length() - strSubstring.length()) * f16));
                    i12 = i14;
                    i13 = i12;
                    f14 = f17;
                    f15 = f14;
                } else {
                    String strSubstring2 = str.substring(i12, i13 - 1);
                    String strTrim2 = strSubstring2.trim();
                    sjSP.Sj(strTrim2, ((f14 - f15) - ((strSubstring2.length() - strTrim2.length()) * f16)) - f16);
                    f14 = f15;
                    i12 = i13;
                }
            }
        }
        if (f14 > 0.0f) {
            i11++;
            sP(i11).Sj(str.substring(i12), f14);
        }
        return this.sef.subList(0, i11);
    }

    private void Sj(Canvas canvas, com.bytedance.adsdk.sP.TKC.sP sPVar, int i11, float f11) {
        PointF pointF = sPVar.f20790aa;
        PointF pointF2 = sPVar.Fmk;
        float fSj = com.bytedance.adsdk.sP.vS.vS.Sj();
        float f12 = (i11 * sPVar.vS * fSj) + (pointF == null ? 0.0f : (sPVar.vS * 0.6f * fSj) + pointF.y);
        float f13 = pointF == null ? 0.0f : pointF.x;
        float f14 = pointF2 != null ? pointF2.x : 0.0f;
        int i12 = AnonymousClass3.Sj[sPVar.EjP.ordinal()];
        if (i12 == 1) {
            canvas.translate(f13, f12);
        } else if (i12 == 2) {
            canvas.translate((f13 + f14) - f11, f12);
        } else {
            if (i12 != 3) {
                return;
            }
            canvas.translate((f13 + (f14 / 2.0f)) - (f11 / 2.0f), f12);
        }
    }

    private void Sj(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void Sj(com.bytedance.adsdk.sP.TKC.EjP ejP, float f11, com.bytedance.adsdk.sP.TKC.sP sPVar, Canvas canvas) {
        List<com.bytedance.adsdk.sP.Sj.Sj.EjP> listSj = Sj(ejP);
        for (int i11 = 0; i11 < listSj.size(); i11++) {
            Path pathEjP = listSj.get(i11).EjP();
            pathEjP.computeBounds(this.Dq, false);
            this.uA.reset();
            this.uA.preTranslate(0.0f, (-sPVar.Jcg) * com.bytedance.adsdk.sP.vS.vS.Sj());
            this.uA.preScale(f11, f11);
            pathEjP.transform(this.uA);
            if (sPVar.Ym) {
                Sj(pathEjP, this.TEQ, canvas);
                Sj(pathEjP, this.Ym, canvas);
            } else {
                Sj(pathEjP, this.Ym, canvas);
                Sj(pathEjP, this.TEQ, canvas);
            }
        }
    }

    private void Sj(com.bytedance.adsdk.sP.TKC.sP sPVar, Matrix matrix) {
        com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj2 = this.RiZ;
        if (sj2 != null) {
            this.TEQ.setColor(sj2.Jcg().intValue());
        } else {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj3 = this.TzV;
            if (sj3 != null) {
                this.TEQ.setColor(sj3.Jcg().intValue());
            } else {
                this.TEQ.setColor(sPVar.Dq);
            }
        }
        com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj4 = this.f20788dx;
        if (sj4 != null) {
            this.Ym.setColor(sj4.Jcg().intValue());
        } else {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj5 = this.sU;
            if (sj5 != null) {
                this.Ym.setColor(sj5.Jcg().intValue());
            } else {
                this.Ym.setColor(sPVar.uA);
            }
        }
        int iIntValue = ((this.EjP.Sj() == null ? 100 : this.EjP.Sj().Jcg().intValue()) * 255) / 100;
        this.TEQ.setAlpha(iIntValue);
        this.Ym.setAlpha(iIntValue);
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj6 = this.f20789ib;
        if (sj6 != null) {
            this.Ym.setStrokeWidth(sj6.Jcg().floatValue());
            return;
        }
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj7 = this.zR;
        if (sj7 != null) {
            this.Ym.setStrokeWidth(sj7.Jcg().floatValue());
        } else {
            this.Ym.setStrokeWidth(sPVar.TEQ * com.bytedance.adsdk.sP.vS.vS.Sj());
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0053  */
    /* JADX WARN: Code duplicated, block: B:18:0x005e  */
    /* JADX WARN: Code duplicated, block: B:20:0x0061  */
    /* JADX WARN: Code duplicated, block: B:24:0x007b A[LOOP:1: B:22:0x0075->B:24:0x007b, LOOP_END] */
    private void Sj(com.bytedance.adsdk.sP.TKC.sP sPVar, Matrix matrix, com.bytedance.adsdk.sP.TKC.TKC tkc, Canvas canvas) {
        float fFloatValue;
        float f11;
        int i11;
        int i12;
        PointF pointF;
        float f12;
        List<Sj> listSj;
        int i13;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj2 = this.wE;
        float fFloatValue2 = (sj2 != null ? sj2.Jcg().floatValue() : sPVar.TKC) / 100.0f;
        float fSj = com.bytedance.adsdk.sP.vS.vS.Sj(matrix);
        List<String> listSj2 = Sj(sPVar.Sj);
        int size = listSj2.size();
        float f13 = sPVar.HiB / 10.0f;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj3 = this.uP;
        if (sj3 == null) {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj4 = this.kF;
            if (sj4 != null) {
                fFloatValue = sj4.Jcg().floatValue();
            }
            f11 = f13;
            i11 = -1;
            i12 = 0;
            while (i12 < size) {
                String str = listSj2.get(i12);
                pointF = sPVar.Fmk;
                if (pointF == null) {
                    f12 = 0.0f;
                } else {
                    f12 = pointF.x;
                }
                int i14 = i12;
                listSj = Sj(str, f12, tkc, fFloatValue2, f11, true);
                i13 = 0;
                while (i13 < listSj.size()) {
                    Sj sj5 = listSj.get(i13);
                    int i15 = i11 + 1;
                    canvas.save();
                    Sj(canvas, sPVar, i15, sj5.sP);
                    Sj(sj5.Sj, sPVar, tkc, canvas, fSj, fFloatValue2, f11);
                    canvas.restore();
                    i13++;
                    listSj = listSj;
                    i11 = i15;
                }
                i12 = i14 + 1;
            }
        }
        fFloatValue = sj3.Jcg().floatValue();
        f13 += fFloatValue;
        f11 = f13;
        i11 = -1;
        i12 = 0;
        while (i12 < size) {
            String str2 = listSj2.get(i12);
            pointF = sPVar.Fmk;
            if (pointF == null) {
                f12 = 0.0f;
            } else {
                f12 = pointF.x;
            }
            int i16 = i12;
            listSj = Sj(str2, f12, tkc, fFloatValue2, f11, true);
            i13 = 0;
            while (i13 < listSj.size()) {
                Sj sj6 = listSj.get(i13);
                int i17 = i11 + 1;
                canvas.save();
                Sj(canvas, sPVar, i17, sj6.sP);
                Sj(sj6.Sj, sPVar, tkc, canvas, fSj, fFloatValue2, f11);
                canvas.restore();
                i13++;
                listSj = listSj;
                i11 = i17;
            }
            i12 = i16 + 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0094  */
    /* JADX WARN: Code duplicated, block: B:23:0x009f  */
    /* JADX WARN: Code duplicated, block: B:25:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:29:0x00bc A[LOOP:1: B:27:0x00b6->B:29:0x00bc, LOOP_END] */
    private void Sj(com.bytedance.adsdk.sP.TKC.sP sPVar, com.bytedance.adsdk.sP.TKC.TKC tkc, Canvas canvas) {
        float fFloatValue;
        float fSj;
        List<String> listSj;
        int size;
        int i11;
        int i12;
        PointF pointF;
        float f11;
        List<Sj> listSj2;
        int i13;
        Typeface typefaceSj = Sj(tkc);
        if (typefaceSj == null) {
            return;
        }
        String strSP = sPVar.Sj;
        sU sUVarKF = this.uvD.kF();
        if (sUVarKF != null) {
            strSP = sUVarKF.sP(uA(), strSP);
        }
        this.TEQ.setTypeface(typefaceSj);
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj2 = this.wE;
        float fFloatValue2 = sj2 != null ? sj2.Jcg().floatValue() : sPVar.TKC;
        this.TEQ.setTextSize(com.bytedance.adsdk.sP.vS.vS.Sj() * fFloatValue2);
        this.Ym.setTypeface(this.TEQ.getTypeface());
        this.Ym.setTextSize(this.TEQ.getTextSize());
        float f12 = sPVar.HiB / 10.0f;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj3 = this.uP;
        if (sj3 == null) {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj4 = this.kF;
            if (sj4 != null) {
                fFloatValue = sj4.Jcg().floatValue();
            }
            fSj = ((f12 * com.bytedance.adsdk.sP.vS.vS.Sj()) * fFloatValue2) / 100.0f;
            listSj = Sj(strSP);
            size = listSj.size();
            i11 = -1;
            i12 = 0;
            while (i12 < size) {
                String str = listSj.get(i12);
                pointF = sPVar.Fmk;
                if (pointF == null) {
                    f11 = 0.0f;
                } else {
                    f11 = pointF.x;
                }
                int i14 = i12;
                listSj2 = Sj(str, f11, tkc, 0.0f, fSj, false);
                for (i13 = 0; i13 < listSj2.size(); i13++) {
                    Sj sj5 = listSj2.get(i13);
                    i11++;
                    canvas.save();
                    Sj(canvas, sPVar, i11, sj5.sP);
                    Sj(sj5.Sj, sPVar, canvas, fSj);
                    canvas.restore();
                }
                i12 = i14 + 1;
            }
        }
        fFloatValue = sj3.Jcg().floatValue();
        f12 += fFloatValue;
        fSj = ((f12 * com.bytedance.adsdk.sP.vS.vS.Sj()) * fFloatValue2) / 100.0f;
        listSj = Sj(strSP);
        size = listSj.size();
        i11 = -1;
        i12 = 0;
        while (i12 < size) {
            String str2 = listSj.get(i12);
            pointF = sPVar.Fmk;
            if (pointF == null) {
                f11 = 0.0f;
            } else {
                f11 = pointF.x;
            }
            int i15 = i12;
            listSj2 = Sj(str2, f11, tkc, 0.0f, fSj, false);
            while (i13 < listSj2.size()) {
                Sj sj6 = listSj2.get(i13);
                i11++;
                canvas.save();
                Sj(canvas, sPVar, i11, sj6.sP);
                Sj(sj6.Sj, sPVar, canvas, fSj);
                canvas.restore();
            }
            i12 = i15 + 1;
        }
    }

    private void Sj(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private void Sj(String str, com.bytedance.adsdk.sP.TKC.sP sPVar, Canvas canvas) {
        if (sPVar.Ym) {
            Sj(str, this.TEQ, canvas);
            Sj(str, this.Ym, canvas);
        } else {
            Sj(str, this.Ym, canvas);
            Sj(str, this.TEQ, canvas);
        }
    }

    private void Sj(String str, com.bytedance.adsdk.sP.TKC.sP sPVar, Canvas canvas, float f11) {
        int length = 0;
        while (length < str.length()) {
            String strSj = Sj(str, length);
            length += strSj.length();
            Sj(strSj, sPVar, canvas);
            canvas.translate(this.TEQ.measureText(strSj) + f11, 0.0f);
        }
    }

    private void Sj(String str, com.bytedance.adsdk.sP.TKC.sP sPVar, com.bytedance.adsdk.sP.TKC.TKC tkc, Canvas canvas, float f11, float f12, float f13) {
        for (int i11 = 0; i11 < str.length(); i11++) {
            com.bytedance.adsdk.sP.TKC.EjP ejP = this.dNu.sef().get(com.bytedance.adsdk.sP.TKC.EjP.Sj(str.charAt(i11), tkc.Sj(), tkc.TKC()));
            if (ejP != null) {
                Sj(ejP, f12, sPVar, canvas);
                canvas.translate((((float) ejP.sP()) * f12 * com.bytedance.adsdk.sP.vS.vS.Sj()) + f13, 0.0f);
            }
        }
    }

    private boolean TKC(int i11) {
        return Character.getType(i11) == 16 || Character.getType(i11) == 27 || Character.getType(i11) == 6 || Character.getType(i11) == 28 || Character.getType(i11) == 8 || Character.getType(i11) == 19;
    }

    private Sj sP(int i11) {
        for (int size = this.sef.size(); size < i11; size++) {
            this.sef.add(new Sj());
        }
        return this.sef.get(i11 - 1);
    }

    @Override // com.bytedance.adsdk.sP.TKC.TKC.Sj, com.bytedance.adsdk.sP.Sj.Sj.HiB
    public void Sj(RectF rectF, Matrix matrix, boolean z10) {
        super.Sj(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.dNu.EjP().width(), this.dNu.EjP().height());
    }

    @Override // com.bytedance.adsdk.sP.TKC.TKC.Sj
    public void sP(Canvas canvas, Matrix matrix, int i11) {
        super.sP(canvas, matrix, i11);
        com.bytedance.adsdk.sP.TKC.sP sPVarJcg = this.Zq.Jcg();
        com.bytedance.adsdk.sP.TKC.TKC tkc = this.dNu.Zq().get(sPVarJcg.sP);
        if (tkc == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        Sj(sPVarJcg, matrix);
        if (this.uvD.uP()) {
            Sj(sPVarJcg, matrix, tkc, canvas);
        } else {
            Sj(sPVarJcg, tkc, canvas);
        }
        canvas.restore();
    }
}
