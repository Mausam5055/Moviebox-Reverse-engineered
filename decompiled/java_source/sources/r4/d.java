package r4;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f74096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f74097b;

    public d(float[] fArr, int[] iArr) {
        this.f74096a = fArr;
        this.f74097b = iArr;
    }

    private void a(d dVar) {
        int i11 = 0;
        while (true) {
            int[] iArr = dVar.f74097b;
            if (i11 >= iArr.length) {
                return;
            }
            this.f74096a[i11] = dVar.f74096a[i11];
            this.f74097b[i11] = iArr[i11];
            i11++;
        }
    }

    private int c(float f11) {
        int iBinarySearch = Arrays.binarySearch(this.f74096a, f11);
        if (iBinarySearch >= 0) {
            return this.f74097b[iBinarySearch];
        }
        int i11 = -(iBinarySearch + 1);
        if (i11 == 0) {
            return this.f74097b[0];
        }
        int[] iArr = this.f74097b;
        if (i11 == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.f74096a;
        int i12 = i11 - 1;
        float f12 = fArr[i12];
        return v4.d.c((f11 - f12) / (fArr[i11] - f12), iArr[i12], iArr[i11]);
    }

    public d b(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i11 = 0; i11 < fArr.length; i11++) {
            iArr[i11] = c(fArr[i11]);
        }
        return new d(fArr, iArr);
    }

    public int[] d() {
        return this.f74097b;
    }

    public float[] e() {
        return this.f74096a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return Arrays.equals(this.f74096a, dVar.f74096a) && Arrays.equals(this.f74097b, dVar.f74097b);
    }

    public int f() {
        return this.f74097b.length;
    }

    public void g(d dVar, d dVar2, float f11) {
        int[] iArr;
        if (dVar.equals(dVar2)) {
            a(dVar);
            return;
        }
        if (f11 <= 0.0f) {
            a(dVar);
            return;
        }
        if (f11 >= 1.0f) {
            a(dVar2);
            return;
        }
        if (dVar.f74097b.length != dVar2.f74097b.length) {
            throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + dVar.f74097b.length + " vs " + dVar2.f74097b.length + ")");
        }
        int i11 = 0;
        while (true) {
            iArr = dVar.f74097b;
            if (i11 >= iArr.length) {
                break;
            }
            this.f74096a[i11] = v4.k.i(dVar.f74096a[i11], dVar2.f74096a[i11], f11);
            this.f74097b[i11] = v4.d.c(f11, dVar.f74097b[i11], dVar2.f74097b[i11]);
            i11++;
        }
        int length = iArr.length;
        while (true) {
            float[] fArr = this.f74096a;
            if (length >= fArr.length) {
                return;
            }
            int[] iArr2 = dVar.f74097b;
            fArr[length] = fArr[iArr2.length - 1];
            int[] iArr3 = this.f74097b;
            iArr3[length] = iArr3[iArr2.length - 1];
            length++;
        }
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f74096a) * 31) + Arrays.hashCode(this.f74097b);
    }
}
