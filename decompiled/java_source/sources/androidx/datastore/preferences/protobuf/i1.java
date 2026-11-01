package androidx.datastore.preferences.protobuf;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class i1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final i1 f8834f = new i1(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f8835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f8836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f8837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8839e;

    private i1() {
        this(0, new int[8], new Object[8], true);
    }

    private i1(int i11, int[] iArr, Object[] objArr, boolean z10) {
        this.f8838d = -1;
        this.f8835a = i11;
        this.f8836b = iArr;
        this.f8837c = objArr;
        this.f8839e = z10;
    }

    private void b(int i11) {
        int[] iArr = this.f8836b;
        if (i11 > iArr.length) {
            int i12 = this.f8835a;
            int i13 = i12 + (i12 / 2);
            if (i13 >= i11) {
                i11 = i13;
            }
            if (i11 < 8) {
                i11 = 8;
            }
            this.f8836b = Arrays.copyOf(iArr, i11);
            this.f8837c = Arrays.copyOf(this.f8837c, i11);
        }
    }

    public static i1 c() {
        return f8834f;
    }

    private static int f(int[] iArr, int i11) {
        int i12 = 17;
        for (int i13 = 0; i13 < i11; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        return i12;
    }

    private static int g(Object[] objArr, int i11) {
        int iHashCode = 17;
        for (int i12 = 0; i12 < i11; i12++) {
            iHashCode = (iHashCode * 31) + objArr[i12].hashCode();
        }
        return iHashCode;
    }

    static i1 j(i1 i1Var, i1 i1Var2) {
        int i11 = i1Var.f8835a + i1Var2.f8835a;
        int[] iArrCopyOf = Arrays.copyOf(i1Var.f8836b, i11);
        System.arraycopy(i1Var2.f8836b, 0, iArrCopyOf, i1Var.f8835a, i1Var2.f8835a);
        Object[] objArrCopyOf = Arrays.copyOf(i1Var.f8837c, i11);
        System.arraycopy(i1Var2.f8837c, 0, objArrCopyOf, i1Var.f8835a, i1Var2.f8835a);
        return new i1(i11, iArrCopyOf, objArrCopyOf, true);
    }

    static i1 k() {
        return new i1();
    }

    private static boolean l(Object[] objArr, Object[] objArr2, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (!objArr[i12].equals(objArr2[i12])) {
                return false;
            }
        }
        return true;
    }

    private static boolean o(int[] iArr, int[] iArr2, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (iArr[i12] != iArr2[i12]) {
                return false;
            }
        }
        return true;
    }

    private static void q(int i11, Object obj, Writer writer) {
        int iA = WireFormat.a(i11);
        int iB = WireFormat.b(i11);
        if (iB == 0) {
            writer.writeInt64(iA, ((Long) obj).longValue());
            return;
        }
        if (iB == 1) {
            writer.writeFixed64(iA, ((Long) obj).longValue());
            return;
        }
        if (iB == 2) {
            writer.b(iA, (ByteString) obj);
            return;
        }
        if (iB != 3) {
            if (iB != 5) {
                throw new RuntimeException(InvalidProtocolBufferException.invalidWireType());
            }
            writer.writeFixed32(iA, ((Integer) obj).intValue());
        } else if (writer.fieldOrder() == Writer.FieldOrder.ASCENDING) {
            writer.writeStartGroup(iA);
            ((i1) obj).r(writer);
            writer.writeEndGroup(iA);
        } else {
            writer.writeEndGroup(iA);
            ((i1) obj).r(writer);
            writer.writeStartGroup(iA);
        }
    }

    void a() {
        if (!this.f8839e) {
            throw new UnsupportedOperationException();
        }
    }

    public int d() {
        int iV;
        int i11 = this.f8838d;
        if (i11 != -1) {
            return i11;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.f8835a; i13++) {
            int i14 = this.f8836b[i13];
            int iA = WireFormat.a(i14);
            int iB = WireFormat.b(i14);
            if (iB == 0) {
                iV = CodedOutputStream.V(iA, ((Long) this.f8837c[i13]).longValue());
            } else if (iB == 1) {
                iV = CodedOutputStream.p(iA, ((Long) this.f8837c[i13]).longValue());
            } else if (iB == 2) {
                iV = CodedOutputStream.h(iA, (ByteString) this.f8837c[i13]);
            } else if (iB == 3) {
                iV = (CodedOutputStream.S(iA) * 2) + ((i1) this.f8837c[i13]).d();
            } else {
                if (iB != 5) {
                    throw new IllegalStateException(InvalidProtocolBufferException.invalidWireType());
                }
                iV = CodedOutputStream.n(iA, ((Integer) this.f8837c[i13]).intValue());
            }
            i12 += iV;
        }
        this.f8838d = i12;
        return i12;
    }

    public int e() {
        int i11 = this.f8838d;
        if (i11 != -1) {
            return i11;
        }
        int iH = 0;
        for (int i12 = 0; i12 < this.f8835a; i12++) {
            iH += CodedOutputStream.H(WireFormat.a(this.f8836b[i12]), (ByteString) this.f8837c[i12]);
        }
        this.f8838d = iH;
        return iH;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof i1)) {
            return false;
        }
        i1 i1Var = (i1) obj;
        int i11 = this.f8835a;
        return i11 == i1Var.f8835a && o(this.f8836b, i1Var.f8836b, i11) && l(this.f8837c, i1Var.f8837c, this.f8835a);
    }

    public void h() {
        if (this.f8839e) {
            this.f8839e = false;
        }
    }

    public int hashCode() {
        int i11 = this.f8835a;
        return ((((527 + i11) * 31) + f(this.f8836b, i11)) * 31) + g(this.f8837c, this.f8835a);
    }

    i1 i(i1 i1Var) {
        if (i1Var.equals(c())) {
            return this;
        }
        a();
        int i11 = this.f8835a + i1Var.f8835a;
        b(i11);
        System.arraycopy(i1Var.f8836b, 0, this.f8836b, this.f8835a, i1Var.f8835a);
        System.arraycopy(i1Var.f8837c, 0, this.f8837c, this.f8835a, i1Var.f8835a);
        this.f8835a = i11;
        return this;
    }

    final void m(StringBuilder sb2, int i11) {
        for (int i12 = 0; i12 < this.f8835a; i12++) {
            p0.d(sb2, i11, String.valueOf(WireFormat.a(this.f8836b[i12])), this.f8837c[i12]);
        }
    }

    void n(int i11, Object obj) {
        a();
        b(this.f8835a + 1);
        int[] iArr = this.f8836b;
        int i12 = this.f8835a;
        iArr[i12] = i11;
        this.f8837c[i12] = obj;
        this.f8835a = i12 + 1;
    }

    void p(Writer writer) {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            for (int i11 = this.f8835a - 1; i11 >= 0; i11--) {
                writer.writeMessageSetItem(WireFormat.a(this.f8836b[i11]), this.f8837c[i11]);
            }
            return;
        }
        for (int i12 = 0; i12 < this.f8835a; i12++) {
            writer.writeMessageSetItem(WireFormat.a(this.f8836b[i12]), this.f8837c[i12]);
        }
    }

    public void r(Writer writer) {
        if (this.f8835a == 0) {
            return;
        }
        if (writer.fieldOrder() == Writer.FieldOrder.ASCENDING) {
            for (int i11 = 0; i11 < this.f8835a; i11++) {
                q(this.f8836b[i11], this.f8837c[i11], writer);
            }
            return;
        }
        for (int i12 = this.f8835a - 1; i12 >= 0; i12--) {
            q(this.f8836b[i12], this.f8837c[i12], writer);
        }
    }
}
