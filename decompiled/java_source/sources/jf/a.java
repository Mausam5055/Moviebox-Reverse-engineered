package jf;

/* JADX INFO: loaded from: classes5.dex */
public class a implements Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f66008d = new int[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f66009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f66010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f66011c;

    public a() {
        this(10);
    }

    public a(int i11) {
        if (i11 == 0) {
            int[] iArr = f66008d;
            this.f66009a = iArr;
            this.f66010b = iArr;
        } else {
            int[] iArr2 = new int[i11];
            this.f66009a = iArr2;
            this.f66010b = new int[iArr2.length];
        }
        this.f66011c = 0;
    }

    private int[] b(int[] iArr, int i11, int i12) {
        if (i11 <= iArr.length) {
            if (i11 + 1 > iArr.length) {
                int[] iArr2 = new int[j(i11)];
                System.arraycopy(iArr, 0, iArr2, 0, i11);
                iArr = iArr2;
            }
            iArr[i11] = i12;
            return iArr;
        }
        throw new IllegalArgumentException("Bad currentSize, originalSize: " + iArr.length + " currentSize: " + i11);
    }

    private int c(int[] iArr, int i11, int i12) {
        int i13 = i11 - 1;
        int i14 = 0;
        while (i14 <= i13) {
            int i15 = (i14 + i13) >>> 1;
            int i16 = iArr[i15];
            if (i16 < i12) {
                i14 = i15 + 1;
            } else {
                if (i16 <= i12) {
                    return i15;
                }
                i13 = i15 - 1;
            }
        }
        return ~i14;
    }

    public static int j(int i11) {
        if (i11 <= 4) {
            return 8;
        }
        return i11 + (i11 >> 1);
    }

    private int[] l(int[] iArr, int i11, int i12, int i13) {
        if (i11 > iArr.length) {
            throw new IllegalArgumentException("Bad currentSize, originalSize: " + iArr.length + " currentSize: " + i11);
        }
        if (i11 + 1 <= iArr.length) {
            System.arraycopy(iArr, i12, iArr, i12 + 1, i11 - i12);
            iArr[i12] = i13;
            return iArr;
        }
        int[] iArr2 = new int[j(i11)];
        System.arraycopy(iArr, 0, iArr2, 0, i12);
        iArr2[i12] = i13;
        System.arraycopy(iArr, i12, iArr2, i12 + 1, iArr.length - i12);
        return iArr2;
    }

    public void a(int i11, int i12) {
        int i13 = this.f66011c;
        if (i13 != 0 && i11 <= this.f66009a[i13 - 1]) {
            n(i11, i12);
            return;
        }
        this.f66009a = b(this.f66009a, i13, i11);
        this.f66010b = b(this.f66010b, this.f66011c, i12);
        this.f66011c++;
    }

    public void e() {
        this.f66011c = 0;
    }

    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public a clone() {
        a aVar = null;
        try {
            a aVar2 = (a) super.clone();
            try {
                aVar2.f66009a = (int[]) this.f66009a.clone();
                aVar2.f66010b = (int[]) this.f66010b.clone();
                return aVar2;
            } catch (CloneNotSupportedException unused) {
                aVar = aVar2;
                return aVar;
            }
        } catch (CloneNotSupportedException unused2) {
        }
    }

    public int g(int i11) {
        return i(i11, 0);
    }

    public int i(int i11, int i12) {
        int iC = c(this.f66009a, this.f66011c, i11);
        return iC < 0 ? i12 : this.f66010b[iC];
    }

    public int k(int i11) {
        return c(this.f66009a, this.f66011c, i11);
    }

    public int m(int i11) {
        return this.f66009a[i11];
    }

    public void n(int i11, int i12) {
        int iC = c(this.f66009a, this.f66011c, i11);
        if (iC >= 0) {
            this.f66010b[iC] = i12;
            return;
        }
        int i13 = ~iC;
        this.f66009a = l(this.f66009a, this.f66011c, i13, i11);
        this.f66010b = l(this.f66010b, this.f66011c, i13, i12);
        this.f66011c++;
    }

    public int o() {
        return this.f66011c;
    }

    public int p(int i11) {
        return this.f66010b[i11];
    }

    public String toString() {
        if (o() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f66011c * 28);
        sb2.append('{');
        for (int i11 = 0; i11 < this.f66011c; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            sb2.append(m(i11));
            sb2.append('=');
            sb2.append(p(i11));
        }
        sb2.append('}');
        return sb2.toString();
    }
}
