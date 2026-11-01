package a5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public class a1 implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a1 f187a = new a1();

    @Override // a5.z0
    public final void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.p0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int i12 = 0;
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            j1Var.write(91);
            while (i12 < iArr.length) {
                if (i12 != 0) {
                    j1Var.write(44);
                }
                j1Var.h0(iArr[i12]);
                i12++;
            }
            j1Var.write(93);
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            j1Var.write(91);
            while (i12 < sArr.length) {
                if (i12 != 0) {
                    j1Var.write(44);
                }
                j1Var.h0(sArr[i12]);
                i12++;
            }
            j1Var.write(93);
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            j1Var.write(91);
            while (i12 < jArr.length) {
                if (i12 != 0) {
                    j1Var.write(44);
                }
                j1Var.l0(jArr[i12]);
                i12++;
            }
            j1Var.write(93);
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            j1Var.write(91);
            while (i12 < zArr.length) {
                if (i12 != 0) {
                    j1Var.write(44);
                }
                j1Var.s(zArr[i12]);
                i12++;
            }
            j1Var.write(93);
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            j1Var.write(91);
            while (i12 < fArr.length) {
                if (i12 != 0) {
                    j1Var.write(44);
                }
                float f11 = fArr[i12];
                if (Float.isNaN(f11)) {
                    j1Var.m0();
                } else {
                    j1Var.append(Float.toString(f11));
                }
                i12++;
            }
            j1Var.write(93);
            return;
        }
        if (!(obj instanceof double[])) {
            if (obj instanceof byte[]) {
                j1Var.t((byte[]) obj);
                return;
            } else {
                j1Var.r0((char[]) obj);
                return;
            }
        }
        double[] dArr = (double[]) obj;
        j1Var.write(91);
        while (i12 < dArr.length) {
            if (i12 != 0) {
                j1Var.write(44);
            }
            double d11 = dArr[i12];
            if (Double.isNaN(d11)) {
                j1Var.m0();
            } else {
                j1Var.append(Double.toString(d11));
            }
            i12++;
        }
        j1Var.write(93);
    }
}
