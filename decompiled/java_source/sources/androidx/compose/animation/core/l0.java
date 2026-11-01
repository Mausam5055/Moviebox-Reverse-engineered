package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes.dex */
public abstract class l0 {
    public static final long a(double d11, double d12, double d13, double d14, double d15) {
        double dSqrt = 2.0d * d12 * Math.sqrt(d11);
        double d16 = (dSqrt * dSqrt) - (4.0d * d11);
        double d17 = -dSqrt;
        s sVarA = t.a(d16);
        sVarA.f2493a += d17;
        sVarA.f2493a *= 0.5d;
        sVarA.f2494b *= 0.5d;
        s sVarA2 = t.a(d16);
        double d18 = -1;
        sVarA2.f2493a *= d18;
        sVarA2.f2494b *= d18;
        sVarA2.f2493a += d17;
        sVarA2.f2493a *= 0.5d;
        sVarA2.f2494b *= 0.5d;
        return d(sVarA, sVarA2, d12, d13, d14, d15);
    }

    public static final long b(float f11, float f12, float f13, float f14, float f15) {
        if (f12 == 0.0f) {
            return 9223372036854L;
        }
        return a(f11, f12, f13, f14, f15);
    }

    private static final double c(s sVar, double d11, double d12, double d13) {
        double d14 = d13;
        double dF = sVar.f();
        double d15 = dF * d11;
        double d16 = d12 - d15;
        double dLog = Math.log(Math.abs(d14 / d11)) / dF;
        double dLog2 = Math.log(Math.abs(d14 / d16));
        double dLog3 = dLog2;
        for (int i11 = 0; i11 < 6; i11++) {
            dLog3 = dLog2 - Math.log(Math.abs(dLog3 / dF));
        }
        double d17 = dLog3 / dF;
        if (!((Double.isInfinite(dLog) || Double.isNaN(dLog)) ? false : true)) {
            dLog = d17;
        } else if ((Double.isInfinite(d17) || Double.isNaN(d17)) ? false : true) {
            dLog = Math.max(dLog, d17);
        }
        double d18 = (-(d15 + d16)) / (dF * d16);
        double d19 = dF * d18;
        double dExp = (Math.exp(d19) * d11) + (d16 * d18 * Math.exp(d19));
        if (Double.isNaN(d18) || d18 <= 0.0d) {
            d14 = -d14;
        } else if (d18 <= 0.0d || (-dExp) >= d14) {
            dLog = (-(2.0d / dF)) - (d11 / d16);
        } else {
            if (d16 < 0.0d && d11 > 0.0d) {
                dLog = 0.0d;
            }
            d14 = -d14;
        }
        double dAbs = Double.MAX_VALUE;
        int i12 = 0;
        while (dAbs > 0.001d && i12 < 100) {
            i12++;
            double d20 = dF * dLog;
            double d21 = d14;
            double dExp2 = dLog - ((((d11 + (d16 * dLog)) * Math.exp(d20)) + d14) / ((((((double) 1) + d20) * d16) + d15) * Math.exp(d20)));
            dAbs = Math.abs(dLog - dExp2);
            dLog = dExp2;
            d14 = d21;
        }
        return dLog;
    }

    private static final long d(s sVar, s sVar2, double d11, double d12, double d13, double d14) {
        double dG;
        double d15 = d12;
        if (d13 == 0.0d && d15 == 0.0d) {
            return 0L;
        }
        if (d13 < 0.0d) {
            d15 = -d15;
        }
        double dAbs = Math.abs(d13);
        if (d11 > 1.0d) {
            dG = e(sVar, sVar2, dAbs, d15, d14);
        } else {
            dG = d11 < 1.0d ? g(sVar, dAbs, d15, d14) : c(sVar, dAbs, d15, d14);
        }
        return (long) (dG * 1000.0d);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00c6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d7  */
    private static final double e(s sVar, s sVar2, double d11, double d12, double d13) {
        double dLog;
        double d14;
        double d15;
        double d16;
        int i11;
        double d17 = d13;
        double dF = sVar.f();
        double dF2 = sVar2.f();
        double d18 = dF - dF2;
        double d19 = ((dF * d11) - d12) / d18;
        double d20 = d11 - d19;
        double dLog2 = Math.log(Math.abs(d17 / d20)) / dF;
        double dLog3 = Math.log(Math.abs(d17 / d19)) / dF2;
        if ((Double.isInfinite(dLog2) || Double.isNaN(dLog2)) ? false : true) {
            if ((Double.isInfinite(dLog3) || Double.isNaN(dLog3)) ? false : true) {
                dLog2 = Math.max(dLog2, dLog3);
            }
            dLog = dLog2;
        } else {
            dLog = dLog3;
        }
        double d21 = d20 * dF;
        double dLog4 = Math.log(d21 / ((-d19) * dF2)) / (dF2 - dF);
        if (!Double.isNaN(dLog4) && dLog4 > 0.0d) {
            if (dLog4 > 0.0d) {
                d14 = d19;
                if ((-f(d20, dF, dLog4, d19, dF2)) < d17) {
                    if (d14 > 0.0d && d20 < 0.0d) {
                        dLog = 0.0d;
                    }
                }
                d15 = d14 * dF2;
                if (Math.abs((Math.exp(dF * dLog) * d21) + (Math.exp(dF2 * dLog) * d15)) < 1.0E-4d) {
                    return dLog;
                }
                d16 = Double.MAX_VALUE;
                i11 = 0;
                while (d16 > 0.001d && i11 < 100) {
                    i11++;
                    double d22 = dF * dLog;
                    double d23 = dF2 * dLog;
                    double dExp = dLog - ((((Math.exp(d22) * d20) + (Math.exp(d23) * d14)) + d17) / ((Math.exp(d22) * d21) + (Math.exp(d23) * d15)));
                    double dAbs = Math.abs(dLog - dExp);
                    dLog = dExp;
                    d16 = dAbs;
                }
                return dLog;
            }
            d14 = d19;
            dLog = Math.log((-((d14 * dF2) * dF2)) / (d21 * dF)) / d18;
            d15 = d14 * dF2;
            if (Math.abs((Math.exp(dF * dLog) * d21) + (Math.exp(dF2 * dLog) * d15)) < 1.0E-4d) {
                return dLog;
            }
            d16 = Double.MAX_VALUE;
            i11 = 0;
            while (d16 > 0.001d) {
                i11++;
                double d24 = dF * dLog;
                double d25 = dF2 * dLog;
                double dExp2 = dLog - ((((Math.exp(d24) * d20) + (Math.exp(d25) * d14)) + d17) / ((Math.exp(d24) * d21) + (Math.exp(d25) * d15)));
                double dAbs2 = Math.abs(dLog - dExp2);
                dLog = dExp2;
                d16 = dAbs2;
            }
            return dLog;
        }
        d14 = d19;
        d17 = -d17;
        d15 = d14 * dF2;
        if (Math.abs((Math.exp(dF * dLog) * d21) + (Math.exp(dF2 * dLog) * d15)) < 1.0E-4d) {
            return dLog;
        }
        d16 = Double.MAX_VALUE;
        i11 = 0;
        while (d16 > 0.001d) {
            i11++;
            double d26 = dF * dLog;
            double d27 = dF2 * dLog;
            double dExp3 = dLog - ((((Math.exp(d26) * d20) + (Math.exp(d27) * d14)) + d17) / ((Math.exp(d26) * d21) + (Math.exp(d27) * d15)));
            double dAbs3 = Math.abs(dLog - dExp3);
            dLog = dExp3;
            d16 = dAbs3;
        }
        return dLog;
    }

    private static final double f(double d11, double d12, double d13, double d14, double d15) {
        return (d11 * Math.exp(d12 * d13)) + (d14 * Math.exp(d15 * d13));
    }

    private static final double g(s sVar, double d11, double d12, double d13) {
        double dF = sVar.f();
        double dE = (d12 - (dF * d11)) / sVar.e();
        return Math.log(d13 / Math.sqrt((d11 * d11) + (dE * dE))) / dF;
    }
}
