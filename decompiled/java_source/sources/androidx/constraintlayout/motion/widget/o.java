package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
class o implements Comparable {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static String[] f7403t = {RequestParameters.POSITION, "x", "y", "width", "height", "pathRotate"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    androidx.constraintlayout.core.motion.utils.c f7404a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    float f7406c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f7407d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f7408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f7409f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f7410g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f7411h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f7414k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f7415l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f7416m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    m f7417n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    LinkedHashMap f7418o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f7419p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f7420q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    double[] f7421r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    double[] f7422s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f7405b = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f7412i = Float.NaN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f7413j = Float.NaN;

    public o() {
        int i11 = d.f7249f;
        this.f7414k = i11;
        this.f7415l = i11;
        this.f7416m = Float.NaN;
        this.f7417n = null;
        this.f7418o = new LinkedHashMap();
        this.f7419p = 0;
        this.f7421r = new double[18];
        this.f7422s = new double[18];
    }

    public o(int i11, int i12, h hVar, o oVar, o oVar2) {
        int i13 = d.f7249f;
        this.f7414k = i13;
        this.f7415l = i13;
        this.f7416m = Float.NaN;
        this.f7417n = null;
        this.f7418o = new LinkedHashMap();
        this.f7419p = 0;
        this.f7421r = new double[18];
        this.f7422s = new double[18];
        if (oVar.f7415l != d.f7249f) {
            o(i11, i12, hVar, oVar, oVar2);
            return;
        }
        int i14 = hVar.f7305q;
        if (i14 == 1) {
            n(hVar, oVar, oVar2);
        } else if (i14 != 2) {
            m(hVar, oVar, oVar2);
        } else {
            p(i11, i12, hVar, oVar, oVar2);
        }
    }

    private boolean d(float f11, float f12) {
        if (Float.isNaN(f11) || Float.isNaN(f12)) {
            return Float.isNaN(f11) != Float.isNaN(f12);
        }
        return Math.abs(f11 - f12) > 1.0E-6f;
    }

    public void a(androidx.constraintlayout.widget.b.a aVar) {
        this.f7404a = androidx.constraintlayout.core.motion.utils.c.c(aVar.f7766d.f7831d);
        androidx.constraintlayout.widget.b.c cVar = aVar.f7766d;
        this.f7414k = cVar.f7832e;
        this.f7415l = cVar.f7829b;
        this.f7412i = cVar.f7836i;
        this.f7405b = cVar.f7833f;
        this.f7420q = cVar.f7830c;
        this.f7413j = aVar.f7765c.f7846e;
        this.f7416m = aVar.f7767e.D;
        for (String str : aVar.f7769g.keySet()) {
            ConstraintAttribute constraintAttribute = (ConstraintAttribute) aVar.f7769g.get(str);
            if (constraintAttribute != null && constraintAttribute.g()) {
                this.f7418o.put(str, constraintAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(o oVar) {
        return Float.compare(this.f7407d, oVar.f7407d);
    }

    void e(o oVar, boolean[] zArr, String[] strArr, boolean z10) {
        boolean zD = d(this.f7408e, oVar.f7408e);
        boolean zD2 = d(this.f7409f, oVar.f7409f);
        zArr[0] = zArr[0] | d(this.f7407d, oVar.f7407d);
        boolean z11 = zD | zD2 | z10;
        zArr[1] = zArr[1] | z11;
        zArr[2] = z11 | zArr[2];
        zArr[3] = zArr[3] | d(this.f7410g, oVar.f7410g);
        zArr[4] = d(this.f7411h, oVar.f7411h) | zArr[4];
    }

    void f(double[] dArr, int[] iArr) {
        float[] fArr = {this.f7407d, this.f7408e, this.f7409f, this.f7410g, this.f7411h, this.f7412i};
        int i11 = 0;
        for (int i12 : iArr) {
            if (i12 < 6) {
                dArr[i11] = fArr[i12];
                i11++;
            }
        }
    }

    void g(double d11, int[] iArr, double[] dArr, float[] fArr, int i11) {
        float fSin = this.f7408e;
        float fCos = this.f7409f;
        float f11 = this.f7410g;
        float f12 = this.f7411h;
        for (int i12 = 0; i12 < iArr.length; i12++) {
            float f13 = (float) dArr[i12];
            int i13 = iArr[i12];
            if (i13 == 1) {
                fSin = f13;
            } else if (i13 == 2) {
                fCos = f13;
            } else if (i13 == 3) {
                f11 = f13;
            } else if (i13 == 4) {
                f12 = f13;
            }
        }
        m mVar = this.f7417n;
        if (mVar != null) {
            float[] fArr2 = new float[2];
            mVar.i(d11, fArr2, new float[2]);
            float f14 = fArr2[0];
            float f15 = fArr2[1];
            double d12 = f14;
            double d13 = fSin;
            double d14 = fCos;
            fSin = (float) ((d12 + (Math.sin(d14) * d13)) - ((double) (f11 / 2.0f)));
            fCos = (float) ((((double) f15) - (d13 * Math.cos(d14))) - ((double) (f12 / 2.0f)));
        }
        fArr[i11] = fSin + (f11 / 2.0f) + 0.0f;
        fArr[i11 + 1] = fCos + (f12 / 2.0f) + 0.0f;
    }

    void h(double d11, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f11 = this.f7408e;
        float f12 = this.f7409f;
        float f13 = this.f7410g;
        float f14 = this.f7411h;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        float f18 = 0.0f;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f19 = (float) dArr[i11];
            float f20 = (float) dArr2[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                f11 = f19;
                f15 = f20;
            } else if (i12 == 2) {
                f12 = f19;
                f17 = f20;
            } else if (i12 == 3) {
                f13 = f19;
                f16 = f20;
            } else if (i12 == 4) {
                f14 = f19;
                f18 = f20;
            }
        }
        float f21 = 2.0f;
        float f22 = (f16 / 2.0f) + f15;
        float fCos = (f18 / 2.0f) + f17;
        m mVar = this.f7417n;
        if (mVar != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            mVar.i(d11, fArr3, fArr4);
            float f23 = fArr3[0];
            float f24 = fArr3[1];
            float f25 = fArr4[0];
            float f26 = fArr4[1];
            double d12 = f11;
            double d13 = f12;
            float fSin = (float) ((((double) f23) + (Math.sin(d13) * d12)) - ((double) (f13 / 2.0f)));
            float fCos2 = (float) ((((double) f24) - (d12 * Math.cos(d13))) - ((double) (f14 / 2.0f)));
            double d14 = f15;
            double d15 = f17;
            float fSin2 = (float) (((double) f25) + (Math.sin(d13) * d14) + (Math.cos(d13) * d15));
            fCos = (float) ((((double) f26) - (d14 * Math.cos(d13))) + (Math.sin(d13) * d15));
            f22 = fSin2;
            f11 = fSin;
            f12 = fCos2;
            f21 = 2.0f;
        }
        fArr[0] = f11 + (f13 / f21) + 0.0f;
        fArr[1] = f12 + (f14 / f21) + 0.0f;
        fArr2[0] = f22;
        fArr2[1] = fCos;
    }

    int i(String str, double[] dArr, int i11) {
        ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f7418o.get(str);
        int i12 = 0;
        if (constraintAttribute == null) {
            return 0;
        }
        if (constraintAttribute.h() == 1) {
            dArr[i11] = constraintAttribute.e();
            return 1;
        }
        int iH = constraintAttribute.h();
        float[] fArr = new float[iH];
        constraintAttribute.f(fArr);
        while (i12 < iH) {
            dArr[i11] = fArr[i12];
            i12++;
            i11++;
        }
        return iH;
    }

    int j(String str) {
        ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f7418o.get(str);
        if (constraintAttribute == null) {
            return 0;
        }
        return constraintAttribute.h();
    }

    void k(int[] iArr, double[] dArr, float[] fArr, int i11) {
        float f11 = this.f7408e;
        float fCos = this.f7409f;
        float f12 = this.f7410g;
        float f13 = this.f7411h;
        for (int i12 = 0; i12 < iArr.length; i12++) {
            float f14 = (float) dArr[i12];
            int i13 = iArr[i12];
            if (i13 == 1) {
                f11 = f14;
            } else if (i13 == 2) {
                fCos = f14;
            } else if (i13 == 3) {
                f12 = f14;
            } else if (i13 == 4) {
                f13 = f14;
            }
        }
        m mVar = this.f7417n;
        if (mVar != null) {
            float fJ = mVar.j();
            float fK = this.f7417n.k();
            double d11 = f11;
            double d12 = fCos;
            float fSin = (float) ((((double) fJ) + (Math.sin(d12) * d11)) - ((double) (f12 / 2.0f)));
            fCos = (float) ((((double) fK) - (d11 * Math.cos(d12))) - ((double) (f13 / 2.0f)));
            f11 = fSin;
        }
        float f15 = f12 + f11;
        float f16 = f13 + fCos;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        fArr[i11] = f11 + 0.0f;
        fArr[i11 + 1] = fCos + 0.0f;
        fArr[i11 + 2] = f15 + 0.0f;
        fArr[i11 + 3] = fCos + 0.0f;
        fArr[i11 + 4] = f15 + 0.0f;
        fArr[i11 + 5] = f16 + 0.0f;
        fArr[i11 + 6] = f11 + 0.0f;
        fArr[i11 + 7] = f16 + 0.0f;
    }

    boolean l(String str) {
        return this.f7418o.containsKey(str);
    }

    void m(h hVar, o oVar, o oVar2) {
        float f11 = hVar.f7250a / 100.0f;
        this.f7406c = f11;
        this.f7405b = hVar.f7298j;
        float f12 = Float.isNaN(hVar.f7299k) ? f11 : hVar.f7299k;
        float f13 = Float.isNaN(hVar.f7300l) ? f11 : hVar.f7300l;
        float f14 = oVar2.f7410g;
        float f15 = oVar.f7410g;
        float f16 = oVar2.f7411h;
        float f17 = oVar.f7411h;
        this.f7407d = this.f7406c;
        float f18 = oVar.f7408e;
        float f19 = oVar.f7409f;
        float f20 = (oVar2.f7408e + (f14 / 2.0f)) - ((f15 / 2.0f) + f18);
        float f21 = (oVar2.f7409f + (f16 / 2.0f)) - (f19 + (f17 / 2.0f));
        float f22 = (f14 - f15) * f12;
        float f23 = f22 / 2.0f;
        this.f7408e = (int) ((f18 + (f20 * f11)) - f23);
        float f24 = (f16 - f17) * f13;
        float f25 = f24 / 2.0f;
        this.f7409f = (int) ((f19 + (f21 * f11)) - f25);
        this.f7410g = (int) (f15 + f22);
        this.f7411h = (int) (f17 + f24);
        float f26 = Float.isNaN(hVar.f7301m) ? f11 : hVar.f7301m;
        float f27 = Float.isNaN(hVar.f7304p) ? 0.0f : hVar.f7304p;
        if (!Float.isNaN(hVar.f7302n)) {
            f11 = hVar.f7302n;
        }
        float f28 = Float.isNaN(hVar.f7303o) ? 0.0f : hVar.f7303o;
        this.f7419p = 0;
        this.f7408e = (int) (((oVar.f7408e + (f26 * f20)) + (f28 * f21)) - f23);
        this.f7409f = (int) (((oVar.f7409f + (f20 * f27)) + (f21 * f11)) - f25);
        this.f7404a = androidx.constraintlayout.core.motion.utils.c.c(hVar.f7296h);
        this.f7414k = hVar.f7297i;
    }

    void n(h hVar, o oVar, o oVar2) {
        float f11 = hVar.f7250a / 100.0f;
        this.f7406c = f11;
        this.f7405b = hVar.f7298j;
        float f12 = Float.isNaN(hVar.f7299k) ? f11 : hVar.f7299k;
        float f13 = Float.isNaN(hVar.f7300l) ? f11 : hVar.f7300l;
        float f14 = oVar2.f7410g - oVar.f7410g;
        float f15 = oVar2.f7411h - oVar.f7411h;
        this.f7407d = this.f7406c;
        if (!Float.isNaN(hVar.f7301m)) {
            f11 = hVar.f7301m;
        }
        float f16 = oVar.f7408e;
        float f17 = oVar.f7410g;
        float f18 = oVar.f7409f;
        float f19 = oVar.f7411h;
        float f20 = (oVar2.f7408e + (oVar2.f7410g / 2.0f)) - ((f17 / 2.0f) + f16);
        float f21 = (oVar2.f7409f + (oVar2.f7411h / 2.0f)) - ((f19 / 2.0f) + f18);
        float f22 = f20 * f11;
        float f23 = f14 * f12;
        float f24 = f23 / 2.0f;
        this.f7408e = (int) ((f16 + f22) - f24);
        float f25 = f11 * f21;
        float f26 = f15 * f13;
        float f27 = f26 / 2.0f;
        this.f7409f = (int) ((f18 + f25) - f27);
        this.f7410g = (int) (f17 + f23);
        this.f7411h = (int) (f19 + f26);
        float f28 = Float.isNaN(hVar.f7302n) ? 0.0f : hVar.f7302n;
        this.f7419p = 1;
        float f29 = (int) ((oVar.f7408e + f22) - f24);
        float f30 = (int) ((oVar.f7409f + f25) - f27);
        this.f7408e = f29 + ((-f21) * f28);
        this.f7409f = f30 + (f20 * f28);
        this.f7415l = this.f7415l;
        this.f7404a = androidx.constraintlayout.core.motion.utils.c.c(hVar.f7296h);
        this.f7414k = hVar.f7297i;
    }

    void o(int i11, int i12, h hVar, o oVar, o oVar2) {
        float fMin;
        float f11;
        float f12 = hVar.f7250a / 100.0f;
        this.f7406c = f12;
        this.f7405b = hVar.f7298j;
        this.f7419p = hVar.f7305q;
        float f13 = Float.isNaN(hVar.f7299k) ? f12 : hVar.f7299k;
        float f14 = Float.isNaN(hVar.f7300l) ? f12 : hVar.f7300l;
        float f15 = oVar2.f7410g;
        float f16 = oVar.f7410g;
        float f17 = oVar2.f7411h;
        float f18 = oVar.f7411h;
        this.f7407d = this.f7406c;
        this.f7410g = (int) (f16 + ((f15 - f16) * f13));
        this.f7411h = (int) (f18 + ((f17 - f18) * f14));
        int i13 = hVar.f7305q;
        if (i13 == 1) {
            float f19 = Float.isNaN(hVar.f7301m) ? f12 : hVar.f7301m;
            float f20 = oVar2.f7408e;
            float f21 = oVar.f7408e;
            this.f7408e = (f19 * (f20 - f21)) + f21;
            if (!Float.isNaN(hVar.f7302n)) {
                f12 = hVar.f7302n;
            }
            float f22 = oVar2.f7409f;
            float f23 = oVar.f7409f;
            this.f7409f = (f12 * (f22 - f23)) + f23;
        } else if (i13 != 2) {
            float f24 = Float.isNaN(hVar.f7301m) ? f12 : hVar.f7301m;
            float f25 = oVar2.f7408e;
            float f26 = oVar.f7408e;
            this.f7408e = (f24 * (f25 - f26)) + f26;
            if (!Float.isNaN(hVar.f7302n)) {
                f12 = hVar.f7302n;
            }
            float f27 = oVar2.f7409f;
            float f28 = oVar.f7409f;
            this.f7409f = (f12 * (f27 - f28)) + f28;
        } else {
            if (Float.isNaN(hVar.f7301m)) {
                float f29 = oVar2.f7408e;
                float f30 = oVar.f7408e;
                fMin = ((f29 - f30) * f12) + f30;
            } else {
                fMin = Math.min(f14, f13) * hVar.f7301m;
            }
            this.f7408e = fMin;
            if (Float.isNaN(hVar.f7302n)) {
                float f31 = oVar2.f7409f;
                float f32 = oVar.f7409f;
                f11 = (f12 * (f31 - f32)) + f32;
            } else {
                f11 = hVar.f7302n;
            }
            this.f7409f = f11;
        }
        this.f7415l = oVar.f7415l;
        this.f7404a = androidx.constraintlayout.core.motion.utils.c.c(hVar.f7296h);
        this.f7414k = hVar.f7297i;
    }

    void p(int i11, int i12, h hVar, o oVar, o oVar2) {
        float f11 = hVar.f7250a / 100.0f;
        this.f7406c = f11;
        this.f7405b = hVar.f7298j;
        float f12 = Float.isNaN(hVar.f7299k) ? f11 : hVar.f7299k;
        float f13 = Float.isNaN(hVar.f7300l) ? f11 : hVar.f7300l;
        float f14 = oVar2.f7410g;
        float f15 = oVar.f7410g;
        float f16 = oVar2.f7411h;
        float f17 = oVar.f7411h;
        this.f7407d = this.f7406c;
        float f18 = oVar.f7408e;
        float f19 = oVar.f7409f;
        float f20 = oVar2.f7408e + (f14 / 2.0f);
        float f21 = oVar2.f7409f + (f16 / 2.0f);
        float f22 = (f14 - f15) * f12;
        this.f7408e = (int) ((f18 + ((f20 - ((f15 / 2.0f) + f18)) * f11)) - (f22 / 2.0f));
        float f23 = (f16 - f17) * f13;
        this.f7409f = (int) ((f19 + ((f21 - (f19 + (f17 / 2.0f))) * f11)) - (f23 / 2.0f));
        this.f7410g = (int) (f15 + f22);
        this.f7411h = (int) (f17 + f23);
        this.f7419p = 2;
        if (!Float.isNaN(hVar.f7301m)) {
            this.f7408e = (int) (hVar.f7301m * ((int) (i11 - this.f7410g)));
        }
        if (!Float.isNaN(hVar.f7302n)) {
            this.f7409f = (int) (hVar.f7302n * ((int) (i12 - this.f7411h)));
        }
        this.f7415l = this.f7415l;
        this.f7404a = androidx.constraintlayout.core.motion.utils.c.c(hVar.f7296h);
        this.f7414k = hVar.f7297i;
    }

    void q(float f11, float f12, float f13, float f14) {
        this.f7408e = f11;
        this.f7409f = f12;
        this.f7410g = f13;
        this.f7411h = f14;
    }

    void r(float f11, float f12, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        float f16 = 0.0f;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f17 = (float) dArr[i11];
            double d11 = dArr2[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                f13 = f17;
            } else if (i12 == 2) {
                f15 = f17;
            } else if (i12 == 3) {
                f14 = f17;
            } else if (i12 == 4) {
                f16 = f17;
            }
        }
        float f18 = f13 - ((0.0f * f14) / 2.0f);
        float f19 = f15 - ((0.0f * f16) / 2.0f);
        fArr[0] = (f18 * (1.0f - f11)) + (((f14 * 1.0f) + f18) * f11) + 0.0f;
        fArr[1] = (f19 * (1.0f - f12)) + (((f16 * 1.0f) + f19) * f12) + 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void s(float f11, View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3, boolean z10) {
        float f12;
        float f13;
        float f14 = this.f7408e;
        float f15 = this.f7409f;
        float f16 = this.f7410g;
        float f17 = this.f7411h;
        if (iArr.length != 0 && this.f7421r.length <= iArr[iArr.length - 1]) {
            int i11 = iArr[iArr.length - 1] + 1;
            this.f7421r = new double[i11];
            this.f7422s = new double[i11];
        }
        Arrays.fill(this.f7421r, Double.NaN);
        for (int i12 = 0; i12 < iArr.length; i12++) {
            double[] dArr4 = this.f7421r;
            int i13 = iArr[i12];
            dArr4[i13] = dArr[i12];
            this.f7422s[i13] = dArr2[i12];
        }
        float f18 = Float.NaN;
        int i14 = 0;
        float f19 = 0.0f;
        float f20 = 0.0f;
        float f21 = 0.0f;
        float f22 = 0.0f;
        while (true) {
            double[] dArr5 = this.f7421r;
            if (i14 >= dArr5.length) {
                break;
            }
            if (Double.isNaN(dArr5[i14]) && (dArr3 == null || dArr3[i14] == 0.0d)) {
                f13 = f18;
            } else {
                double d11 = dArr3 != null ? dArr3[i14] : 0.0d;
                if (!Double.isNaN(this.f7421r[i14])) {
                    d11 = this.f7421r[i14] + d11;
                }
                f13 = f18;
                float f23 = (float) d11;
                float f24 = (float) this.f7422s[i14];
                if (i14 == 1) {
                    f18 = f13;
                    f19 = f24;
                    f14 = f23;
                } else if (i14 == 2) {
                    f18 = f13;
                    f20 = f24;
                    f15 = f23;
                } else if (i14 == 3) {
                    f18 = f13;
                    f21 = f24;
                    f16 = f23;
                } else if (i14 == 4) {
                    f18 = f13;
                    f22 = f24;
                    f17 = f23;
                } else if (i14 == 5) {
                    f18 = f23;
                }
                i14++;
            }
            f18 = f13;
            i14++;
        }
        float f25 = f18;
        m mVar = this.f7417n;
        if (mVar != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            mVar.i(f11, fArr, fArr2);
            float f26 = fArr[0];
            float f27 = fArr[1];
            float f28 = fArr2[0];
            float f29 = fArr2[1];
            double d12 = f14;
            double d13 = f15;
            float fSin = (float) ((((double) f26) + (Math.sin(d13) * d12)) - ((double) (f16 / 2.0f)));
            f12 = f17;
            float fCos = (float) ((((double) f27) - (Math.cos(d13) * d12)) - ((double) (f17 / 2.0f)));
            double d14 = f19;
            double d15 = f20;
            float fSin2 = (float) (((double) f28) + (Math.sin(d13) * d14) + (Math.cos(d13) * d12 * d15));
            float fCos2 = (float) ((((double) f29) - (d14 * Math.cos(d13))) + (d12 * Math.sin(d13) * d15));
            if (dArr2.length >= 2) {
                dArr2[0] = fSin2;
                dArr2[1] = fCos2;
            }
            if (!Float.isNaN(f25)) {
                view.setRotation((float) (((double) f25) + Math.toDegrees(Math.atan2(fCos2, fSin2))));
            }
            f14 = fSin;
            f15 = fCos;
        } else {
            f12 = f17;
            if (!Float.isNaN(f25)) {
                view.setRotation((float) (((double) 0.0f) + ((double) f25) + Math.toDegrees(Math.atan2(f20 + (f22 / 2.0f), f19 + (f21 / 2.0f)))));
            }
        }
        if (view instanceof c) {
            ((c) view).layout(f14, f15, f16 + f14, f15 + f12);
            return;
        }
        float f30 = f14 + 0.5f;
        int i15 = (int) f30;
        float f31 = f15 + 0.5f;
        int i16 = (int) f31;
        int i17 = (int) (f30 + f16);
        int i18 = (int) (f31 + f12);
        int i19 = i17 - i15;
        int i20 = i18 - i16;
        if (i19 != view.getMeasuredWidth() || i20 != view.getMeasuredHeight() || z10) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i19, 1073741824), View.MeasureSpec.makeMeasureSpec(i20, 1073741824));
        }
        view.layout(i15, i16, i17, i18);
    }

    public void t(m mVar, o oVar) {
        double d11 = ((this.f7408e + (this.f7410g / 2.0f)) - oVar.f7408e) - (oVar.f7410g / 2.0f);
        double d12 = ((this.f7409f + (this.f7411h / 2.0f)) - oVar.f7409f) - (oVar.f7411h / 2.0f);
        this.f7417n = mVar;
        this.f7408e = (float) Math.hypot(d12, d11);
        if (Float.isNaN(this.f7416m)) {
            this.f7409f = (float) (Math.atan2(d12, d11) + 1.5707963267948966d);
        } else {
            this.f7409f = (float) Math.toRadians(this.f7416m);
        }
    }
}
