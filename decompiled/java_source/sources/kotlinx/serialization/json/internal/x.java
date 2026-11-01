package kotlinx.serialization.json.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object[] f68346a = new Object[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f68347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f68348c;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f68349a = new a();

        private a() {
        }
    }

    public x() {
        int[] iArr = new int[8];
        for (int i11 = 0; i11 < 8; i11++) {
            iArr[i11] = -1;
        }
        this.f68347b = iArr;
        this.f68348c = -1;
    }

    private final void e() {
        int i11 = this.f68348c * 2;
        Object[] objArrCopyOf = Arrays.copyOf(this.f68346a, i11);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        this.f68346a = objArrCopyOf;
        int[] iArrCopyOf = Arrays.copyOf(this.f68347b, i11);
        Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
        this.f68347b = iArrCopyOf;
    }

    public final String a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("$");
        int i11 = this.f68348c + 1;
        for (int i12 = 0; i12 < i11; i12++) {
            Object obj = this.f68346a[i12];
            if (obj instanceof kotlinx.serialization.descriptors.f) {
                kotlinx.serialization.descriptors.f fVar = (kotlinx.serialization.descriptors.f) obj;
                if (!Intrinsics.c(fVar.d(), kotlinx.serialization.descriptors.i.b.f68071a)) {
                    int i13 = this.f68347b[i12];
                    if (i13 >= 0) {
                        sb2.append(".");
                        sb2.append(fVar.f(i13));
                    }
                } else if (this.f68347b[i12] != -1) {
                    sb2.append("[");
                    sb2.append(this.f68347b[i12]);
                    sb2.append("]");
                }
            } else if (obj != a.f68349a) {
                sb2.append("[");
                sb2.append("'");
                sb2.append(obj);
                sb2.append("'");
                sb2.append("]");
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final void b() {
        int i11 = this.f68348c;
        int[] iArr = this.f68347b;
        if (iArr[i11] == -2) {
            iArr[i11] = -1;
            this.f68348c = i11 - 1;
        }
        int i12 = this.f68348c;
        if (i12 != -1) {
            this.f68348c = i12 - 1;
        }
    }

    public final void c(kotlinx.serialization.descriptors.f sd2) {
        Intrinsics.h(sd2, "sd");
        int i11 = this.f68348c + 1;
        this.f68348c = i11;
        if (i11 == this.f68346a.length) {
            e();
        }
        this.f68346a[i11] = sd2;
    }

    public final void d() {
        int[] iArr = this.f68347b;
        int i11 = this.f68348c;
        if (iArr[i11] == -2) {
            this.f68346a[i11] = a.f68349a;
        }
    }

    public final void f(Object obj) {
        int[] iArr = this.f68347b;
        int i11 = this.f68348c;
        if (iArr[i11] != -2) {
            int i12 = i11 + 1;
            this.f68348c = i12;
            if (i12 == this.f68346a.length) {
                e();
            }
        }
        Object[] objArr = this.f68346a;
        int i13 = this.f68348c;
        objArr[i13] = obj;
        this.f68347b[i13] = -2;
    }

    public final void g(int i11) {
        this.f68347b[this.f68348c] = i11;
    }

    public String toString() {
        return a();
    }
}
