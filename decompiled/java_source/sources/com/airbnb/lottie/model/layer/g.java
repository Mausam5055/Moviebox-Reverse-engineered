package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.collection.x;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import n4.o;
import n4.q;
import q4.k;
import q4.l;
import q4.m;

/* JADX INFO: loaded from: classes2.dex */
public class g extends com.airbnb.lottie.model.layer.a {
    private final StringBuilder E;
    private final RectF F;
    private final Matrix G;
    private final Paint H;
    private final Paint I;
    private final Map J;
    private final x K;
    private final List L;
    private final o M;
    private final LottieDrawable N;
    private final h O;
    private TextRangeUnits P;
    private n4.a Q;
    private n4.a R;
    private n4.a S;
    private n4.a T;
    private n4.a U;
    private n4.a V;
    private n4.a W;
    private n4.a X;
    private n4.a Y;
    private n4.a Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private n4.a f17887a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private n4.a f17888b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private n4.a f17889c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private n4.a f17890d0;

    class a extends Paint {
        a(int i11) {
            super(i11);
            setStyle(Paint.Style.FILL);
        }
    }

    class b extends Paint {
        b(int i11) {
            super(i11);
            setStyle(Paint.Style.STROKE);
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17893a;

        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            f17893a = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17893a[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17893a[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f17894a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f17895b;

        private d() {
            this.f17894a = "";
            this.f17895b = 0.0f;
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        void c(String str, float f11) {
            this.f17894a = str;
            this.f17895b = f11;
        }
    }

    g(LottieDrawable lottieDrawable, Layer layer) {
        l lVar;
        l lVar2;
        q4.d dVar;
        l lVar3;
        q4.d dVar2;
        l lVar4;
        q4.d dVar3;
        m mVar;
        q4.d dVar4;
        m mVar2;
        q4.b bVar;
        m mVar3;
        q4.b bVar2;
        m mVar4;
        q4.a aVar;
        m mVar5;
        q4.a aVar2;
        super(lottieDrawable, layer);
        this.E = new StringBuilder(2);
        this.F = new RectF();
        this.G = new Matrix();
        this.H = new a(1);
        this.I = new b(1);
        this.J = new HashMap();
        this.K = new x();
        this.L = new ArrayList();
        this.P = TextRangeUnits.INDEX;
        this.N = lottieDrawable;
        this.O = layer.c();
        o oVarA = layer.t().a();
        this.M = oVarA;
        oVarA.a(this);
        i(oVarA);
        k kVarU = layer.u();
        if (kVarU != null && (mVar5 = kVarU.f73090a) != null && (aVar2 = mVar5.f73096a) != null) {
            n4.a aVarA = aVar2.a();
            this.Q = aVarA;
            aVarA.a(this);
            i(this.Q);
        }
        if (kVarU != null && (mVar4 = kVarU.f73090a) != null && (aVar = mVar4.f73097b) != null) {
            n4.a aVarA2 = aVar.a();
            this.S = aVarA2;
            aVarA2.a(this);
            i(this.S);
        }
        if (kVarU != null && (mVar3 = kVarU.f73090a) != null && (bVar2 = mVar3.f73098c) != null) {
            n4.d dVarA = bVar2.a();
            this.U = dVarA;
            dVarA.a(this);
            i(this.U);
        }
        if (kVarU != null && (mVar2 = kVarU.f73090a) != null && (bVar = mVar2.f73099d) != null) {
            n4.d dVarA2 = bVar.a();
            this.W = dVarA2;
            dVarA2.a(this);
            i(this.W);
        }
        if (kVarU != null && (mVar = kVarU.f73090a) != null && (dVar4 = mVar.f73100e) != null) {
            n4.a aVarA3 = dVar4.a();
            this.Y = aVarA3;
            aVarA3.a(this);
            i(this.Y);
        }
        if (kVarU != null && (lVar4 = kVarU.f73091b) != null && (dVar3 = lVar4.f73092a) != null) {
            n4.a aVarA4 = dVar3.a();
            this.f17888b0 = aVarA4;
            aVarA4.a(this);
            i(this.f17888b0);
        }
        if (kVarU != null && (lVar3 = kVarU.f73091b) != null && (dVar2 = lVar3.f73093b) != null) {
            n4.a aVarA5 = dVar2.a();
            this.f17889c0 = aVarA5;
            aVarA5.a(this);
            i(this.f17889c0);
        }
        if (kVarU != null && (lVar2 = kVarU.f73091b) != null && (dVar = lVar2.f73094c) != null) {
            n4.a aVarA6 = dVar.a();
            this.f17890d0 = aVarA6;
            aVarA6.a(this);
            i(this.f17890d0);
        }
        if (kVarU == null || (lVar = kVarU.f73091b) == null) {
            return;
        }
        this.P = lVar.f73095d;
    }

    private String P(String str, int i11) {
        int iCodePointAt = str.codePointAt(i11);
        int iCharCount = Character.charCount(iCodePointAt) + i11;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (!e0(iCodePointAt2)) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j11 = iCodePointAt;
        if (this.K.d(j11)) {
            return (String) this.K.e(j11);
        }
        this.E.setLength(0);
        while (i11 < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i11);
            this.E.appendCodePoint(iCodePointAt3);
            i11 += Character.charCount(iCodePointAt3);
        }
        String string = this.E.toString();
        this.K.k(j11, string);
        return string;
    }

    private void Q(DocumentData documentData, int i11, int i12) {
        n4.a aVar = this.R;
        if (aVar != null) {
            this.H.setColor(((Integer) aVar.h()).intValue());
        } else if (this.Q == null || !d0(i12)) {
            this.H.setColor(documentData.f17777h);
        } else {
            this.H.setColor(((Integer) this.Q.h()).intValue());
        }
        n4.a aVar2 = this.T;
        if (aVar2 != null) {
            this.I.setColor(((Integer) aVar2.h()).intValue());
        } else if (this.S == null || !d0(i12)) {
            this.I.setColor(documentData.f17778i);
        } else {
            this.I.setColor(((Integer) this.S.h()).intValue());
        }
        int iIntValue = 100;
        int iIntValue2 = this.f17881x.h() == null ? 100 : ((Integer) this.f17881x.h().h()).intValue();
        if (this.Y != null && d0(i12)) {
            iIntValue = ((Integer) this.Y.h()).intValue();
        }
        int iRound = Math.round(((((iIntValue2 * 255.0f) / 100.0f) * (iIntValue / 100.0f)) * i11) / 255.0f);
        this.H.setAlpha(iRound);
        this.I.setAlpha(iRound);
        n4.a aVar3 = this.V;
        if (aVar3 != null) {
            this.I.setStrokeWidth(((Float) aVar3.h()).floatValue());
        } else if (this.U == null || !d0(i12)) {
            this.I.setStrokeWidth(documentData.f17779j * v4.l.e());
        } else {
            this.I.setStrokeWidth(((Float) this.U.h()).floatValue());
        }
    }

    private void R(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private void S(p4.c cVar, float f11, DocumentData documentData, Canvas canvas, int i11, int i12) {
        Q(documentData, i12, i11);
        List listA0 = a0(cVar);
        for (int i13 = 0; i13 < listA0.size(); i13++) {
            Path path = ((m4.d) listA0.get(i13)).getPath();
            path.computeBounds(this.F, false);
            this.G.reset();
            this.G.preTranslate(0.0f, (-documentData.f17776g) * v4.l.e());
            this.G.preScale(f11, f11);
            path.transform(this.G);
            if (documentData.f17780k) {
                V(path, this.H, canvas);
                V(path, this.I, canvas);
            } else {
                V(path, this.I, canvas);
                V(path, this.H, canvas);
            }
        }
    }

    private void T(String str, DocumentData documentData, Canvas canvas, int i11, int i12) {
        Q(documentData, i12, i11);
        if (documentData.f17780k) {
            R(str, this.H, canvas);
            R(str, this.I, canvas);
        } else {
            R(str, this.I, canvas);
            R(str, this.H, canvas);
        }
    }

    private void U(String str, DocumentData documentData, Canvas canvas, float f11, int i11, int i12) {
        int length = 0;
        while (length < str.length()) {
            String strP = P(str, length);
            T(strP, documentData, canvas, i11 + length, i12);
            canvas.translate(this.H.measureText(strP) + f11, 0.0f);
            length += strP.length();
        }
    }

    private void V(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void W(String str, DocumentData documentData, p4.b bVar, Canvas canvas, float f11, float f12, float f13, int i11) {
        for (int i12 = 0; i12 < str.length(); i12++) {
            p4.c cVar = (p4.c) this.O.c().f(p4.c.c(str.charAt(i12), bVar.a(), bVar.c()));
            if (cVar != null) {
                S(cVar, f12, documentData, canvas, i12, i11);
                canvas.translate((((float) cVar.b()) * f12 * v4.l.e()) + f13, 0.0f);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0089  */
    /* JADX WARN: Code duplicated, block: B:20:0x0094  */
    /* JADX WARN: Code duplicated, block: B:22:0x0097  */
    /* JADX WARN: Code duplicated, block: B:26:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:28:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:29:0x00dc  */
    private void X(DocumentData documentData, p4.b bVar, Canvas canvas, int i11) {
        float fFloatValue;
        float fE;
        List listB0;
        int size;
        int i12;
        int i13;
        int length;
        PointF pointF;
        float f11;
        List listG0;
        int i14;
        d dVar;
        Typeface typefaceC0 = c0(bVar);
        if (typefaceC0 == null) {
            return;
        }
        String str = documentData.f17770a;
        this.N.f0();
        this.H.setTypeface(typefaceC0);
        n4.a aVar = this.Z;
        float fFloatValue2 = aVar != null ? ((Float) aVar.h()).floatValue() : documentData.f17772c;
        this.H.setTextSize(v4.l.e() * fFloatValue2);
        this.I.setTypeface(this.H.getTypeface());
        this.I.setTextSize(this.H.getTextSize());
        float f12 = documentData.f17774e / 10.0f;
        n4.a aVar2 = this.X;
        if (aVar2 == null) {
            n4.a aVar3 = this.W;
            if (aVar3 != null) {
                fFloatValue = ((Float) aVar3.h()).floatValue();
            }
            fE = ((f12 * v4.l.e()) * fFloatValue2) / 100.0f;
            listB0 = b0(str);
            size = listB0.size();
            i12 = -1;
            length = 0;
            for (i13 = 0; i13 < size; i13++) {
                String str2 = (String) listB0.get(i13);
                pointF = documentData.f17782m;
                if (pointF == null) {
                    f11 = 0.0f;
                } else {
                    f11 = pointF.x;
                }
                i14 = 0;
                for (listG0 = g0(str2, f11, bVar, 0.0f, fE, false); i14 < listG0.size(); listG0 = listG0) {
                    dVar = (d) listG0.get(i14);
                    i12++;
                    canvas.save();
                    if (f0(canvas, documentData, i12, dVar.f17895b)) {
                        U(dVar.f17894a, documentData, canvas, fE, length, i11);
                    }
                    length += dVar.f17894a.length();
                    canvas.restore();
                    i14++;
                }
            }
        }
        fFloatValue = ((Float) aVar2.h()).floatValue();
        f12 += fFloatValue;
        fE = ((f12 * v4.l.e()) * fFloatValue2) / 100.0f;
        listB0 = b0(str);
        size = listB0.size();
        i12 = -1;
        length = 0;
        while (i13 < size) {
            String str3 = (String) listB0.get(i13);
            pointF = documentData.f17782m;
            if (pointF == null) {
                f11 = 0.0f;
            } else {
                f11 = pointF.x;
            }
            i14 = 0;
            while (i14 < listG0.size()) {
                dVar = (d) listG0.get(i14);
                i12++;
                canvas.save();
                if (f0(canvas, documentData, i12, dVar.f17895b)) {
                    U(dVar.f17894a, documentData, canvas, fE, length, i11);
                }
                length += dVar.f17894a.length();
                canvas.restore();
                i14++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0055  */
    /* JADX WARN: Code duplicated, block: B:18:0x0060  */
    /* JADX WARN: Code duplicated, block: B:20:0x0063  */
    /* JADX WARN: Code duplicated, block: B:24:0x0079  */
    /* JADX WARN: Code duplicated, block: B:26:0x0090  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ad  */
    private void Y(DocumentData documentData, Matrix matrix, p4.b bVar, Canvas canvas, int i11) {
        float fFloatValue;
        float f11;
        int i12;
        int i13;
        PointF pointF;
        float f12;
        List listG0;
        int i14;
        d dVar;
        int i15;
        n4.a aVar = this.Z;
        float fFloatValue2 = (aVar != null ? ((Float) aVar.h()).floatValue() : documentData.f17772c) / 100.0f;
        float fG = v4.l.g(matrix);
        List listB0 = b0(documentData.f17770a);
        int size = listB0.size();
        float f13 = documentData.f17774e / 10.0f;
        n4.a aVar2 = this.X;
        if (aVar2 == null) {
            n4.a aVar3 = this.W;
            if (aVar3 != null) {
                fFloatValue = ((Float) aVar3.h()).floatValue();
            }
            f11 = f13;
            i12 = -1;
            i13 = 0;
            while (i13 < size) {
                String str = (String) listB0.get(i13);
                pointF = documentData.f17782m;
                if (pointF == null) {
                    f12 = 0.0f;
                } else {
                    f12 = pointF.x;
                }
                listG0 = g0(str, f12, bVar, fFloatValue2, f11, true);
                i14 = 0;
                while (i14 < listG0.size()) {
                    dVar = (d) listG0.get(i14);
                    i15 = i12 + 1;
                    canvas.save();
                    if (f0(canvas, documentData, i15, dVar.f17895b)) {
                        W(dVar.f17894a, documentData, bVar, canvas, fG, fFloatValue2, f11, i11);
                    }
                    canvas.restore();
                    i14++;
                    listG0 = listG0;
                    i12 = i15;
                    i13 = i13;
                }
                i13++;
            }
        }
        fFloatValue = ((Float) aVar2.h()).floatValue();
        f13 += fFloatValue;
        f11 = f13;
        i12 = -1;
        i13 = 0;
        while (i13 < size) {
            String str2 = (String) listB0.get(i13);
            pointF = documentData.f17782m;
            if (pointF == null) {
                f12 = 0.0f;
            } else {
                f12 = pointF.x;
            }
            listG0 = g0(str2, f12, bVar, fFloatValue2, f11, true);
            i14 = 0;
            while (i14 < listG0.size()) {
                dVar = (d) listG0.get(i14);
                i15 = i12 + 1;
                canvas.save();
                if (f0(canvas, documentData, i15, dVar.f17895b)) {
                    W(dVar.f17894a, documentData, bVar, canvas, fG, fFloatValue2, f11, i11);
                }
                canvas.restore();
                i14++;
                listG0 = listG0;
                i12 = i15;
                i13 = i13;
            }
            i13++;
        }
    }

    private d Z(int i11) {
        for (int size = this.L.size(); size < i11; size++) {
            this.L.add(new d(null));
        }
        return (d) this.L.get(i11 - 1);
    }

    private List a0(p4.c cVar) {
        if (this.J.containsKey(cVar)) {
            return (List) this.J.get(cVar);
        }
        List listA = cVar.a();
        int size = listA.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            arrayList.add(new m4.d(this.N, this, (r4.k) listA.get(i11), this.O));
        }
        this.J.put(cVar, arrayList);
        return arrayList;
    }

    private List b0(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private Typeface c0(p4.b bVar) {
        Typeface typeface;
        n4.a aVar = this.f17887a0;
        if (aVar != null && (typeface = (Typeface) aVar.h()) != null) {
            return typeface;
        }
        Typeface typefaceG0 = this.N.g0(bVar);
        return typefaceG0 != null ? typefaceG0 : bVar.d();
    }

    private boolean d0(int i11) {
        int length = ((DocumentData) this.M.h()).f17770a.length();
        n4.a aVar = this.f17888b0;
        if (aVar == null || this.f17889c0 == null) {
            return true;
        }
        int iMin = Math.min(((Integer) aVar.h()).intValue(), ((Integer) this.f17889c0.h()).intValue());
        int iMax = Math.max(((Integer) this.f17888b0.h()).intValue(), ((Integer) this.f17889c0.h()).intValue());
        n4.a aVar2 = this.f17890d0;
        if (aVar2 != null) {
            int iIntValue = ((Integer) aVar2.h()).intValue();
            iMin += iIntValue;
            iMax += iIntValue;
        }
        if (this.P == TextRangeUnits.INDEX) {
            return i11 >= iMin && i11 < iMax;
        }
        float f11 = (i11 / length) * 100.0f;
        return f11 >= ((float) iMin) && f11 < ((float) iMax);
    }

    private boolean e0(int i11) {
        return Character.getType(i11) == 16 || Character.getType(i11) == 27 || Character.getType(i11) == 6 || Character.getType(i11) == 28 || Character.getType(i11) == 8 || Character.getType(i11) == 19;
    }

    private boolean f0(Canvas canvas, DocumentData documentData, int i11, float f11) {
        PointF pointF = documentData.f17781l;
        PointF pointF2 = documentData.f17782m;
        float fE = v4.l.e();
        float f12 = (i11 * documentData.f17775f * fE) + (pointF == null ? 0.0f : (documentData.f17775f * fE) + pointF.y);
        if (this.N.M() && pointF2 != null && pointF != null && f12 >= pointF.y + pointF2.y + documentData.f17772c) {
            return false;
        }
        float f13 = pointF == null ? 0.0f : pointF.x;
        float f14 = pointF2 != null ? pointF2.x : 0.0f;
        int i12 = c.f17893a[documentData.f17773d.ordinal()];
        if (i12 == 1) {
            canvas.translate(f13, f12);
        } else if (i12 == 2) {
            canvas.translate((f13 + f14) - f11, f12);
        } else if (i12 == 3) {
            canvas.translate((f13 + (f14 / 2.0f)) - (f11 / 2.0f), f12);
        }
        return true;
    }

    private List g0(String str, float f11, p4.b bVar, float f12, float f13, boolean z10) {
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
                p4.c cVar = (p4.c) this.O.c().f(p4.c.c(cCharAt, bVar.a(), bVar.c()));
                if (cVar != null) {
                    fMeasureText = ((float) cVar.b()) * f12 * v4.l.e();
                }
            } else {
                fMeasureText = this.H.measureText(str.substring(i14, i14 + 1));
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
                d dVarZ = Z(i11);
                if (i13 == i12) {
                    String strSubstring = str.substring(i12, i14);
                    String strTrim = strSubstring.trim();
                    dVarZ.c(strTrim, (f14 - f17) - ((strTrim.length() - strSubstring.length()) * f16));
                    i12 = i14;
                    i13 = i12;
                    f14 = f17;
                    f15 = f14;
                } else {
                    String strSubstring2 = str.substring(i12, i13 - 1);
                    String strTrim2 = strSubstring2.trim();
                    dVarZ.c(strTrim2, ((f14 - f15) - ((strSubstring2.length() - strTrim2.length()) * f16)) - f16);
                    f14 = f15;
                    i12 = i13;
                }
            }
        }
        if (f14 > 0.0f) {
            i11++;
            Z(i11).c(str.substring(i12), f14);
        }
        return this.L.subList(0, i11);
    }

    @Override // com.airbnb.lottie.model.layer.a, p4.e
    public void b(Object obj, w4.c cVar) {
        super.b(obj, cVar);
        if (obj == p0.f17903a) {
            n4.a aVar = this.R;
            if (aVar != null) {
                H(aVar);
            }
            if (cVar == null) {
                this.R = null;
                return;
            }
            q qVar = new q(cVar);
            this.R = qVar;
            qVar.a(this);
            i(this.R);
            return;
        }
        if (obj == p0.f17904b) {
            n4.a aVar2 = this.T;
            if (aVar2 != null) {
                H(aVar2);
            }
            if (cVar == null) {
                this.T = null;
                return;
            }
            q qVar2 = new q(cVar);
            this.T = qVar2;
            qVar2.a(this);
            i(this.T);
            return;
        }
        if (obj == p0.f17921s) {
            n4.a aVar3 = this.V;
            if (aVar3 != null) {
                H(aVar3);
            }
            if (cVar == null) {
                this.V = null;
                return;
            }
            q qVar3 = new q(cVar);
            this.V = qVar3;
            qVar3.a(this);
            i(this.V);
            return;
        }
        if (obj == p0.f17922t) {
            n4.a aVar4 = this.X;
            if (aVar4 != null) {
                H(aVar4);
            }
            if (cVar == null) {
                this.X = null;
                return;
            }
            q qVar4 = new q(cVar);
            this.X = qVar4;
            qVar4.a(this);
            i(this.X);
            return;
        }
        if (obj == p0.F) {
            n4.a aVar5 = this.Z;
            if (aVar5 != null) {
                H(aVar5);
            }
            if (cVar == null) {
                this.Z = null;
                return;
            }
            q qVar5 = new q(cVar);
            this.Z = qVar5;
            qVar5.a(this);
            i(this.Z);
            return;
        }
        if (obj != p0.M) {
            if (obj == p0.O) {
                this.M.r(cVar);
                return;
            }
            return;
        }
        n4.a aVar6 = this.f17887a0;
        if (aVar6 != null) {
            H(aVar6);
        }
        if (cVar == null) {
            this.f17887a0 = null;
            return;
        }
        q qVar6 = new q(cVar);
        this.f17887a0 = qVar6;
        qVar6.a(this);
        i(this.f17887a0);
    }

    @Override // com.airbnb.lottie.model.layer.a, m4.e
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        super.f(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.O.b().width(), this.O.b().height());
    }

    @Override // com.airbnb.lottie.model.layer.a
    void t(Canvas canvas, Matrix matrix, int i11) {
        DocumentData documentData = (DocumentData) this.M.h();
        p4.b bVar = (p4.b) this.O.g().get(documentData.f17771b);
        if (bVar == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        Q(documentData, i11, 0);
        if (this.N.C1()) {
            Y(documentData, matrix, bVar, canvas, i11);
        } else {
            X(documentData, bVar, canvas, i11);
        }
        canvas.restore();
    }
}
