package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double[] f6743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    C0059a[] f6744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6745c = true;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.utils.a$a, reason: collision with other inner class name */
    private static class C0059a {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private static double[] f6746s = new double[91];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        double[] f6747a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        double f6748b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        double f6749c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        double f6750d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        double f6751e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        double f6752f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        double f6753g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        double f6754h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        double f6755i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        double f6756j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        double f6757k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        double f6758l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        double f6759m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        double f6760n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        double f6761o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        double f6762p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f6763q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f6764r;

        C0059a(int i11, double d11, double d12, double d13, double d14, double d15, double d16) {
            this.f6764r = false;
            this.f6763q = i11 == 1;
            this.f6749c = d11;
            this.f6750d = d12;
            this.f6755i = 1.0d / (d12 - d11);
            if (3 == i11) {
                this.f6764r = true;
            }
            double d17 = d15 - d13;
            double d18 = d16 - d14;
            if (!this.f6764r && Math.abs(d17) >= 0.001d && Math.abs(d18) >= 0.001d) {
                this.f6747a = new double[101];
                boolean z10 = this.f6763q;
                this.f6756j = d17 * ((double) (z10 ? -1 : 1));
                this.f6757k = d18 * ((double) (z10 ? 1 : -1));
                this.f6758l = z10 ? d15 : d13;
                this.f6759m = z10 ? d14 : d16;
                a(d13, d14, d15, d16);
                this.f6760n = this.f6748b * this.f6755i;
                return;
            }
            this.f6764r = true;
            this.f6751e = d13;
            this.f6752f = d15;
            this.f6753g = d14;
            this.f6754h = d16;
            double dHypot = Math.hypot(d18, d17);
            this.f6748b = dHypot;
            this.f6760n = dHypot * this.f6755i;
            double d19 = this.f6750d;
            double d20 = this.f6749c;
            this.f6758l = d17 / (d19 - d20);
            this.f6759m = d18 / (d19 - d20);
        }

        private void a(double d11, double d12, double d13, double d14) {
            double dHypot;
            double d15 = d13 - d11;
            double d16 = d12 - d14;
            int i11 = 0;
            double d17 = 0.0d;
            double d18 = 0.0d;
            double d19 = 0.0d;
            while (true) {
                double[] dArr = f6746s;
                if (i11 >= dArr.length) {
                    break;
                }
                double d20 = d17;
                double radians = Math.toRadians((((double) i11) * 90.0d) / ((double) (dArr.length - 1)));
                double dSin = Math.sin(radians) * d15;
                double dCos = Math.cos(radians) * d16;
                if (i11 > 0) {
                    dHypot = Math.hypot(dSin - d18, dCos - d19) + d20;
                    f6746s[i11] = dHypot;
                } else {
                    dHypot = d20;
                }
                i11++;
                d19 = dCos;
                d17 = dHypot;
                d18 = dSin;
            }
            double d21 = d17;
            this.f6748b = d21;
            int i12 = 0;
            while (true) {
                double[] dArr2 = f6746s;
                if (i12 >= dArr2.length) {
                    break;
                }
                dArr2[i12] = dArr2[i12] / d21;
                i12++;
            }
            int i13 = 0;
            while (true) {
                double[] dArr3 = this.f6747a;
                if (i13 >= dArr3.length) {
                    return;
                }
                double length = ((double) i13) / ((double) (dArr3.length - 1));
                int iBinarySearch = Arrays.binarySearch(f6746s, length);
                if (iBinarySearch >= 0) {
                    this.f6747a[i13] = ((double) iBinarySearch) / ((double) (f6746s.length - 1));
                } else if (iBinarySearch == -1) {
                    this.f6747a[i13] = 0.0d;
                } else {
                    int i14 = -iBinarySearch;
                    int i15 = i14 - 2;
                    double[] dArr4 = f6746s;
                    double d22 = dArr4[i15];
                    this.f6747a[i13] = (((double) i15) + ((length - d22) / (dArr4[i14 - 1] - d22))) / ((double) (dArr4.length - 1));
                }
                i13++;
            }
        }

        double b() {
            double d11 = this.f6756j * this.f6762p;
            double dHypot = this.f6760n / Math.hypot(d11, (-this.f6757k) * this.f6761o);
            if (this.f6763q) {
                d11 = -d11;
            }
            return d11 * dHypot;
        }

        double c() {
            double d11 = this.f6756j * this.f6762p;
            double d12 = (-this.f6757k) * this.f6761o;
            double dHypot = this.f6760n / Math.hypot(d11, d12);
            return this.f6763q ? (-d12) * dHypot : d12 * dHypot;
        }

        public double d(double d11) {
            return this.f6758l;
        }

        public double e(double d11) {
            return this.f6759m;
        }

        public double f(double d11) {
            double d12 = (d11 - this.f6749c) * this.f6755i;
            double d13 = this.f6751e;
            return d13 + (d12 * (this.f6752f - d13));
        }

        public double g(double d11) {
            double d12 = (d11 - this.f6749c) * this.f6755i;
            double d13 = this.f6753g;
            return d13 + (d12 * (this.f6754h - d13));
        }

        double h() {
            return this.f6758l + (this.f6756j * this.f6761o);
        }

        double i() {
            return this.f6759m + (this.f6757k * this.f6762p);
        }

        double j(double d11) {
            if (d11 <= 0.0d) {
                return 0.0d;
            }
            if (d11 >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f6747a;
            double length = d11 * ((double) (dArr.length - 1));
            int i11 = (int) length;
            double d12 = length - ((double) i11);
            double d13 = dArr[i11];
            return d13 + (d12 * (dArr[i11 + 1] - d13));
        }

        void k(double d11) {
            double dJ = j((this.f6763q ? this.f6750d - d11 : d11 - this.f6749c) * this.f6755i) * 1.5707963267948966d;
            this.f6761o = Math.sin(dJ);
            this.f6762p = Math.cos(dJ);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    public a(int[] iArr, double[] dArr, double[][] dArr2) {
        this.f6743a = dArr;
        this.f6744b = new C0059a[dArr.length - 1];
        int i11 = 1;
        int i12 = 1;
        int i13 = 0;
        while (true) {
            C0059a[] c0059aArr = this.f6744b;
            if (i13 >= c0059aArr.length) {
                return;
            }
            int i14 = iArr[i13];
            if (i14 == 0) {
                i12 = 3;
            } else if (i14 == 1) {
                i11 = 1;
                i12 = i11;
            } else {
                if (i14 != 2) {
                    if (i14 == 3) {
                        if (i11 != 1) {
                            i11 = 1;
                        }
                        i12 = i11;
                    }
                }
                i11 = 2;
                i12 = i11;
            }
            double d11 = dArr[i13];
            int i15 = i13 + 1;
            double d12 = dArr[i15];
            double[] dArr3 = dArr2[i13];
            double d13 = dArr3[0];
            double d14 = dArr3[1];
            double[] dArr4 = dArr2[i15];
            c0059aArr[i13] = new C0059a(i12, d11, d12, d13, d14, dArr4[0], dArr4[1]);
            i13 = i15;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.b
    public double c(double d11, int i11) {
        double dG;
        double dE;
        double dI;
        double dC;
        double dG2;
        double dE2;
        int i12 = 0;
        if (this.f6745c) {
            C0059a[] c0059aArr = this.f6744b;
            C0059a c0059a = c0059aArr[0];
            double d12 = c0059a.f6749c;
            if (d11 < d12) {
                double d13 = d11 - d12;
                if (c0059a.f6764r) {
                    if (i11 == 0) {
                        dG2 = c0059a.f(d12);
                        dE2 = this.f6744b[0].d(d12);
                    } else {
                        dG2 = c0059a.g(d12);
                        dE2 = this.f6744b[0].e(d12);
                    }
                    return dG2 + (d13 * dE2);
                }
                c0059a.k(d12);
                if (i11 == 0) {
                    dI = this.f6744b[0].h();
                    dC = this.f6744b[0].b();
                } else {
                    dI = this.f6744b[0].i();
                    dC = this.f6744b[0].c();
                }
                return dI + (d13 * dC);
            }
            if (d11 > c0059aArr[c0059aArr.length - 1].f6750d) {
                double d14 = c0059aArr[c0059aArr.length - 1].f6750d;
                double d15 = d11 - d14;
                int length = c0059aArr.length - 1;
                if (i11 == 0) {
                    dG = c0059aArr[length].f(d14);
                    dE = this.f6744b[length].d(d14);
                } else {
                    dG = c0059aArr[length].g(d14);
                    dE = this.f6744b[length].e(d14);
                }
                return dG + (d15 * dE);
            }
        } else {
            C0059a[] c0059aArr2 = this.f6744b;
            double d16 = c0059aArr2[0].f6749c;
            if (d11 < d16) {
                d11 = d16;
            } else if (d11 > c0059aArr2[c0059aArr2.length - 1].f6750d) {
                d11 = c0059aArr2[c0059aArr2.length - 1].f6750d;
            }
        }
        while (true) {
            C0059a[] c0059aArr3 = this.f6744b;
            if (i12 >= c0059aArr3.length) {
                return Double.NaN;
            }
            C0059a c0059a2 = c0059aArr3[i12];
            if (d11 <= c0059a2.f6750d) {
                if (c0059a2.f6764r) {
                    return i11 == 0 ? c0059a2.f(d11) : c0059a2.g(d11);
                }
                c0059a2.k(d11);
                return i11 == 0 ? this.f6744b[i12].h() : this.f6744b[i12].i();
            }
            i12++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.b
    public void d(double d11, double[] dArr) {
        if (this.f6745c) {
            C0059a[] c0059aArr = this.f6744b;
            C0059a c0059a = c0059aArr[0];
            double d12 = c0059a.f6749c;
            if (d11 < d12) {
                double d13 = d11 - d12;
                if (c0059a.f6764r) {
                    dArr[0] = c0059a.f(d12) + (this.f6744b[0].d(d12) * d13);
                    dArr[1] = this.f6744b[0].g(d12) + (d13 * this.f6744b[0].e(d12));
                    return;
                } else {
                    c0059a.k(d12);
                    dArr[0] = this.f6744b[0].h() + (this.f6744b[0].b() * d13);
                    dArr[1] = this.f6744b[0].i() + (d13 * this.f6744b[0].c());
                    return;
                }
            }
            if (d11 > c0059aArr[c0059aArr.length - 1].f6750d) {
                double d14 = c0059aArr[c0059aArr.length - 1].f6750d;
                double d15 = d11 - d14;
                int length = c0059aArr.length - 1;
                C0059a c0059a2 = c0059aArr[length];
                if (c0059a2.f6764r) {
                    dArr[0] = c0059a2.f(d14) + (this.f6744b[length].d(d14) * d15);
                    dArr[1] = this.f6744b[length].g(d14) + (d15 * this.f6744b[length].e(d14));
                    return;
                } else {
                    c0059a2.k(d11);
                    dArr[0] = this.f6744b[length].h() + (this.f6744b[length].b() * d15);
                    dArr[1] = this.f6744b[length].i() + (d15 * this.f6744b[length].c());
                    return;
                }
            }
        } else {
            C0059a[] c0059aArr2 = this.f6744b;
            double d16 = c0059aArr2[0].f6749c;
            if (d11 < d16) {
                d11 = d16;
            }
            if (d11 > c0059aArr2[c0059aArr2.length - 1].f6750d) {
                d11 = c0059aArr2[c0059aArr2.length - 1].f6750d;
            }
        }
        int i11 = 0;
        while (true) {
            C0059a[] c0059aArr3 = this.f6744b;
            if (i11 >= c0059aArr3.length) {
                return;
            }
            C0059a c0059a3 = c0059aArr3[i11];
            if (d11 <= c0059a3.f6750d) {
                if (c0059a3.f6764r) {
                    dArr[0] = c0059a3.f(d11);
                    dArr[1] = this.f6744b[i11].g(d11);
                    return;
                } else {
                    c0059a3.k(d11);
                    dArr[0] = this.f6744b[i11].h();
                    dArr[1] = this.f6744b[i11].i();
                    return;
                }
            }
            i11++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.b
    public void e(double d11, float[] fArr) {
        if (this.f6745c) {
            C0059a[] c0059aArr = this.f6744b;
            C0059a c0059a = c0059aArr[0];
            double d12 = c0059a.f6749c;
            if (d11 < d12) {
                double d13 = d11 - d12;
                if (c0059a.f6764r) {
                    fArr[0] = (float) (c0059a.f(d12) + (this.f6744b[0].d(d12) * d13));
                    fArr[1] = (float) (this.f6744b[0].g(d12) + (d13 * this.f6744b[0].e(d12)));
                    return;
                } else {
                    c0059a.k(d12);
                    fArr[0] = (float) (this.f6744b[0].h() + (this.f6744b[0].b() * d13));
                    fArr[1] = (float) (this.f6744b[0].i() + (d13 * this.f6744b[0].c()));
                    return;
                }
            }
            if (d11 > c0059aArr[c0059aArr.length - 1].f6750d) {
                double d14 = c0059aArr[c0059aArr.length - 1].f6750d;
                double d15 = d11 - d14;
                int length = c0059aArr.length - 1;
                C0059a c0059a2 = c0059aArr[length];
                if (c0059a2.f6764r) {
                    fArr[0] = (float) (c0059a2.f(d14) + (this.f6744b[length].d(d14) * d15));
                    fArr[1] = (float) (this.f6744b[length].g(d14) + (d15 * this.f6744b[length].e(d14)));
                    return;
                } else {
                    c0059a2.k(d11);
                    fArr[0] = (float) this.f6744b[length].h();
                    fArr[1] = (float) this.f6744b[length].i();
                    return;
                }
            }
        } else {
            C0059a[] c0059aArr2 = this.f6744b;
            double d16 = c0059aArr2[0].f6749c;
            if (d11 < d16) {
                d11 = d16;
            } else if (d11 > c0059aArr2[c0059aArr2.length - 1].f6750d) {
                d11 = c0059aArr2[c0059aArr2.length - 1].f6750d;
            }
        }
        int i11 = 0;
        while (true) {
            C0059a[] c0059aArr3 = this.f6744b;
            if (i11 >= c0059aArr3.length) {
                return;
            }
            C0059a c0059a3 = c0059aArr3[i11];
            if (d11 <= c0059a3.f6750d) {
                if (c0059a3.f6764r) {
                    fArr[0] = (float) c0059a3.f(d11);
                    fArr[1] = (float) this.f6744b[i11].g(d11);
                    return;
                } else {
                    c0059a3.k(d11);
                    fArr[0] = (float) this.f6744b[i11].h();
                    fArr[1] = (float) this.f6744b[i11].i();
                    return;
                }
            }
            i11++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.b
    public double f(double d11, int i11) {
        C0059a[] c0059aArr = this.f6744b;
        int i12 = 0;
        double d12 = c0059aArr[0].f6749c;
        if (d11 < d12) {
            d11 = d12;
        }
        if (d11 > c0059aArr[c0059aArr.length - 1].f6750d) {
            d11 = c0059aArr[c0059aArr.length - 1].f6750d;
        }
        while (true) {
            C0059a[] c0059aArr2 = this.f6744b;
            if (i12 >= c0059aArr2.length) {
                return Double.NaN;
            }
            C0059a c0059a = c0059aArr2[i12];
            if (d11 <= c0059a.f6750d) {
                if (c0059a.f6764r) {
                    return i11 == 0 ? c0059a.d(d11) : c0059a.e(d11);
                }
                c0059a.k(d11);
                return i11 == 0 ? this.f6744b[i12].b() : this.f6744b[i12].c();
            }
            i12++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.b
    public void g(double d11, double[] dArr) {
        C0059a[] c0059aArr = this.f6744b;
        double d12 = c0059aArr[0].f6749c;
        if (d11 < d12) {
            d11 = d12;
        } else if (d11 > c0059aArr[c0059aArr.length - 1].f6750d) {
            d11 = c0059aArr[c0059aArr.length - 1].f6750d;
        }
        int i11 = 0;
        while (true) {
            C0059a[] c0059aArr2 = this.f6744b;
            if (i11 >= c0059aArr2.length) {
                return;
            }
            C0059a c0059a = c0059aArr2[i11];
            if (d11 <= c0059a.f6750d) {
                if (c0059a.f6764r) {
                    dArr[0] = c0059a.d(d11);
                    dArr[1] = this.f6744b[i11].e(d11);
                    return;
                } else {
                    c0059a.k(d11);
                    dArr[0] = this.f6744b[i11].b();
                    dArr[1] = this.f6744b[i11].c();
                    return;
                }
            }
            i11++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.b
    public double[] h() {
        return this.f6743a;
    }
}
