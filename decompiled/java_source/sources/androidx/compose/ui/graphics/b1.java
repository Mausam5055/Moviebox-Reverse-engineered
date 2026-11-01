package androidx.compose.ui.graphics;

/* JADX INFO: loaded from: classes.dex */
public abstract class b1 {
    public static final long b(float f11, float f12, float f13, float f14, float[] fArr, int i11) {
        float f15 = (f12 - f11) * 3.0f;
        float f16 = (f13 - f12) * 3.0f;
        float f17 = (f14 - f13) * 3.0f;
        int iF = f(f15, f16, f17, fArr, i11);
        float f18 = (f16 - f15) * 2.0f;
        int iG = iF + g((-f18) / (((f17 - f16) * 2.0f) - f18), fArr, i11 + iF);
        float fMin = Math.min(f11, f14);
        float fMax = Math.max(f11, f14);
        for (int i12 = 0; i12 < iG; i12++) {
            float fD = d(f11, f12, f13, f14, fArr[i12]);
            fMin = Math.min(fMin, fD);
            fMax = Math.max(fMax, fD);
        }
        return androidx.collection.h.a(fMin, fMax);
    }

    public static final float c(float f11, float f12, float f13) {
        return ((((((f11 - f12) + 0.33333334f) * f13) + (f12 - (2.0f * f11))) * f13) + f11) * 3.0f * f13;
    }

    private static final float d(float f11, float f12, float f13, float f14, float f15) {
        float f16 = (f14 + ((f12 - f13) * 3.0f)) - f11;
        return (((((f16 * f15) + (((f13 - (2.0f * f12)) + f11) * 3.0f)) * f15) + ((f12 - f11) * 3.0f)) * f15) + f11;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0199  */
    /* JADX WARN: Code duplicated, block: B:27:0x008a  */
    /* JADX WARN: Code duplicated, block: B:62:0x011a  */
    /* JADX WARN: Code duplicated, block: B:76:0x0147  */
    public static final float e(float f11, float f12, float f13, float f14) {
        double d11 = f11;
        double d12 = ((d11 - (((double) f12) * 2.0d)) + ((double) f13)) * 3.0d;
        double d13 = ((double) (f12 - f11)) * 3.0d;
        double d14 = ((double) (-f11)) + (((double) (f12 - f13)) * 3.0d) + ((double) f14);
        if (Math.abs(d14 - 0.0d) < 1.0E-7d) {
            if (Math.abs(d12 - 0.0d) < 1.0E-7d) {
                if (Math.abs(d13 - 0.0d) < 1.0E-7d) {
                    return Float.NaN;
                }
                float f15 = (float) ((-d11) / d13);
                if (f15 < 0.0f) {
                    if (f15 >= -8.34465E-7f) {
                        return 0.0f;
                    }
                } else {
                    if (f15 <= 1.0f) {
                        return f15;
                    }
                    if (f15 <= 1.0000008f) {
                        return 1.0f;
                    }
                }
                return Float.NaN;
            }
            double dSqrt = Math.sqrt((d13 * d13) - ((4.0d * d12) * d11));
            double d15 = d12 * 2.0d;
            float f16 = (float) ((dSqrt - d13) / d15);
            if (f16 < 0.0f) {
                if (f16 >= -8.34465E-7f) {
                    f16 = 0.0f;
                } else {
                    f16 = Float.NaN;
                }
            } else if (f16 > 1.0f) {
                if (f16 <= 1.0000008f) {
                    f16 = 1.0f;
                } else {
                    f16 = Float.NaN;
                }
            }
            if (!Float.isNaN(f16)) {
                return f16;
            }
            float f17 = (float) (((-d13) - dSqrt) / d15);
            if (f17 < 0.0f) {
                if (f17 >= -8.34465E-7f) {
                    return 0.0f;
                }
            } else {
                if (f17 <= 1.0f) {
                    return f17;
                }
                if (f17 <= 1.0000008f) {
                    return 1.0f;
                }
            }
            return Float.NaN;
        }
        double d16 = d12 / d14;
        double d17 = d13 / d14;
        double d18 = d11 / d14;
        double d19 = ((d17 * 3.0d) - (d16 * d16)) / 9.0d;
        double d20 = (((((2.0d * d16) * d16) * d16) - ((9.0d * d16) * d17)) + (d18 * 27.0d)) / 54.0d;
        double d21 = d19 * d19 * d19;
        double d22 = (d20 * d20) + d21;
        double d23 = d16 / 3.0d;
        if (d22 >= 0.0d) {
            if (d22 != 0.0d) {
                double dSqrt2 = Math.sqrt(d22);
                float fA = (float) (((double) (q0.b.a((float) ((-d20) + dSqrt2)) - q0.b.a((float) (d20 + dSqrt2)))) - d23);
                if (fA < 0.0f) {
                    if (fA >= -8.34465E-7f) {
                        return 0.0f;
                    }
                } else {
                    if (fA <= 1.0f) {
                        return fA;
                    }
                    if (fA <= 1.0000008f) {
                        return 1.0f;
                    }
                }
                return Float.NaN;
            }
            float f18 = -q0.b.a((float) d20);
            float f19 = (float) d23;
            float f20 = (2.0f * f18) - f19;
            if (f20 < 0.0f) {
                if (f20 >= -8.34465E-7f) {
                    f20 = 0.0f;
                } else {
                    f20 = Float.NaN;
                }
            } else if (f20 > 1.0f) {
                if (f20 <= 1.0000008f) {
                    f20 = 1.0f;
                } else {
                    f20 = Float.NaN;
                }
            }
            if (!Float.isNaN(f20)) {
                return f20;
            }
            float f21 = (-f18) - f19;
            if (f21 < 0.0f) {
                if (f21 >= -8.34465E-7f) {
                    return 0.0f;
                }
            } else {
                if (f21 <= 1.0f) {
                    return f21;
                }
                if (f21 <= 1.0000008f) {
                    return 1.0f;
                }
            }
            return Float.NaN;
        }
        double dSqrt3 = Math.sqrt(-d21);
        double d24 = (-d20) / dSqrt3;
        if (d24 < -1.0d) {
            d24 = -1.0d;
        }
        if (d24 > 1.0d) {
            d24 = 1.0d;
        }
        double dAcos = Math.acos(d24);
        double dA = q0.b.a((float) dSqrt3) * 2.0f;
        float fCos = (float) ((Math.cos(dAcos / 3.0d) * dA) - d23);
        if (fCos < 0.0f) {
            if (fCos >= -8.34465E-7f) {
                fCos = 0.0f;
            } else {
                fCos = Float.NaN;
            }
        } else if (fCos > 1.0f) {
            if (fCos <= 1.0000008f) {
                fCos = 1.0f;
            } else {
                fCos = Float.NaN;
            }
        }
        if (!Float.isNaN(fCos)) {
            return fCos;
        }
        float fCos2 = (float) ((Math.cos((6.283185307179586d + dAcos) / 3.0d) * dA) - d23);
        if (fCos2 < 0.0f) {
            if (fCos2 >= -8.34465E-7f) {
                fCos2 = 0.0f;
            } else {
                fCos2 = Float.NaN;
            }
        } else if (fCos2 > 1.0f) {
            if (fCos2 <= 1.0000008f) {
                fCos2 = 1.0f;
            } else {
                fCos2 = Float.NaN;
            }
        }
        if (!Float.isNaN(fCos2)) {
            return fCos2;
        }
        float fCos3 = (float) ((dA * Math.cos((dAcos + 12.566370614359172d) / 3.0d)) - d23);
        if (fCos3 < 0.0f) {
            if (fCos3 >= -8.34465E-7f) {
                return 0.0f;
            }
        } else {
            if (fCos3 <= 1.0f) {
                return fCos3;
            }
            if (fCos3 <= 1.0000008f) {
                return 1.0f;
            }
        }
        return Float.NaN;
    }

    private static final int f(float f11, float f12, float f13, float[] fArr, int i11) {
        double d11 = f11;
        double d12 = f12;
        double d13 = f13;
        double d14 = d12 * 2.0d;
        double d15 = (d11 - d14) + d13;
        if (d15 == 0.0d) {
            if (d12 == d13) {
                return 0;
            }
            return g((float) ((d14 - d13) / (d14 - (d13 * 2.0d))), fArr, i11);
        }
        double d16 = -Math.sqrt((d12 * d12) - (d13 * d11));
        double d17 = (-d11) + d12;
        int iG = g((float) ((-(d16 + d17)) / d15), fArr, i11);
        int iG2 = iG + g((float) ((d16 - d17) / d15), fArr, i11 + iG);
        if (iG2 > 1) {
            float f14 = fArr[i11];
            int i12 = i11 + 1;
            float f15 = fArr[i12];
            if (f14 > f15) {
                fArr[i11] = f15;
                fArr[i12] = f14;
            } else if (f14 == f15) {
                return iG2 - 1;
            }
        }
        return iG2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:6:0x000d A[PHI: r0
  0x000d: PHI (r0v2 float) = (r0v1 float), (r0v0 float) binds: [B:11:0x001c, B:5:0x000b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x000f  */
    public static final int g(float f11, float[] fArr, int i11) {
        float f12 = 0.0f;
        if (f11 >= 0.0f) {
            f12 = 1.0f;
            if (f11 > 1.0f) {
                if (f11 <= 1.0000008f) {
                    f11 = f12;
                } else {
                    f11 = Float.NaN;
                }
            }
        } else if (f11 >= -8.34465E-7f) {
            f11 = f12;
        } else {
            f11 = Float.NaN;
        }
        fArr[i11] = f11;
        return !Float.isNaN(f11) ? 1 : 0;
    }
}
