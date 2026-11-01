package p0;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements p0.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f72226c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f72227d = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f72228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f72229b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float b(float f11, float[] fArr, float[] fArr2) {
            float f12;
            float f13;
            float f14;
            float fA;
            float fAbs = Math.abs(f11);
            float fSignum = Math.signum(f11);
            int iBinarySearch = Arrays.binarySearch(fArr, fAbs);
            if (iBinarySearch >= 0) {
                fA = fArr2[iBinarySearch];
            } else {
                int i11 = -(iBinarySearch + 1);
                int i12 = i11 - 1;
                float f15 = 0.0f;
                if (i12 >= fArr.length - 1) {
                    float f16 = fArr[fArr.length - 1];
                    float f17 = fArr2[fArr.length - 1];
                    if (f16 == 0.0f) {
                        return 0.0f;
                    }
                    return f11 * (f17 / f16);
                }
                if (i12 == -1) {
                    float f18 = fArr[0];
                    f14 = fArr2[0];
                    f13 = f18;
                    f12 = 0.0f;
                } else {
                    float f19 = fArr[i12];
                    float f20 = fArr[i11];
                    f12 = fArr2[i12];
                    f15 = f19;
                    f13 = f20;
                    f14 = fArr2[i11];
                }
                fA = d.f72230a.a(f12, f14, f15, f13, fAbs);
            }
            return fSignum * fA;
        }
    }

    public c(float[] fArr, float[] fArr2) {
        if (fArr.length != fArr2.length || fArr.length == 0) {
            throw new IllegalArgumentException("Array lengths must match and be nonzero");
        }
        this.f72228a = fArr;
        this.f72229b = fArr2;
    }

    @Override // p0.a
    public float a(float f11) {
        return f72226c.b(f11, this.f72229b, this.f72228a);
    }

    @Override // p0.a
    public float b(float f11) {
        return f72226c.b(f11, this.f72228a, this.f72229b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Arrays.equals(this.f72228a, cVar.f72228a) && Arrays.equals(this.f72229b, cVar.f72229b);
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f72228a) * 31) + Arrays.hashCode(this.f72229b);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("FontScaleConverter{fromSpValues=");
        String string = Arrays.toString(this.f72228a);
        Intrinsics.g(string, "toString(this)");
        sb2.append(string);
        sb2.append(", toDpValues=");
        String string2 = Arrays.toString(this.f72229b);
        Intrinsics.g(string2, "toString(this)");
        sb2.append(string2);
        sb2.append('}');
        return sb2.toString();
    }
}
