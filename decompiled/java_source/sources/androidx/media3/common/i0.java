package androidx.media3.common;

import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Booleans;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class i0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i0 f10084b = new i0(ImmutableList.of());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f10085c = a1.C0(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImmutableList f10086a;

    public static final class a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final String f10087f = a1.C0(0);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final String f10088g = a1.C0(1);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final String f10089h = a1.C0(3);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final String f10090i = a1.C0(4);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10091a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final f0 f10092b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f10093c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int[] f10094d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean[] f10095e;

        public a(f0 f0Var, boolean z10, int[] iArr, boolean[] zArr) {
            int i11 = f0Var.f9971a;
            this.f10091a = i11;
            boolean z11 = false;
            androidx.media3.common.util.a.a(i11 == iArr.length && i11 == zArr.length);
            this.f10092b = f0Var;
            if (z10 && i11 > 1) {
                z11 = true;
            }
            this.f10093c = z11;
            this.f10094d = (int[]) iArr.clone();
            this.f10095e = (boolean[]) zArr.clone();
        }

        public f0 a() {
            return this.f10092b;
        }

        public r b(int i11) {
            return this.f10092b.a(i11);
        }

        public int c(int i11) {
            return this.f10094d[i11];
        }

        public int d() {
            return this.f10092b.f9973c;
        }

        public boolean e() {
            return this.f10093c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f10093c == aVar.f10093c && this.f10092b.equals(aVar.f10092b) && Arrays.equals(this.f10094d, aVar.f10094d) && Arrays.equals(this.f10095e, aVar.f10095e);
        }

        public boolean f() {
            return Booleans.a(this.f10095e, true);
        }

        public boolean g(boolean z10) {
            for (int i11 = 0; i11 < this.f10094d.length; i11++) {
                if (j(i11, z10)) {
                    return true;
                }
            }
            return false;
        }

        public boolean h(int i11) {
            return this.f10095e[i11];
        }

        public int hashCode() {
            return (((((this.f10092b.hashCode() * 31) + (this.f10093c ? 1 : 0)) * 31) + Arrays.hashCode(this.f10094d)) * 31) + Arrays.hashCode(this.f10095e);
        }

        public boolean i(int i11) {
            return j(i11, false);
        }

        public boolean j(int i11, boolean z10) {
            int i12 = this.f10094d[i11];
            return i12 == 4 || (z10 && i12 == 3);
        }
    }

    public i0(List list) {
        this.f10086a = ImmutableList.copyOf((Collection) list);
    }

    public ImmutableList a() {
        return this.f10086a;
    }

    public boolean b() {
        return this.f10086a.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean c(int i11) {
        for (int i12 = 0; i12 < this.f10086a.size(); i12++) {
            a aVar = (a) this.f10086a.get(i12);
            if (aVar.f() && aVar.d() == i11) {
                return true;
            }
        }
        return false;
    }

    public boolean d(int i11) {
        return e(i11, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean e(int i11, boolean z10) {
        for (int i12 = 0; i12 < this.f10086a.size(); i12++) {
            if (((a) this.f10086a.get(i12)).d() == i11 && ((a) this.f10086a.get(i12)).g(z10)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i0.class != obj.getClass()) {
            return false;
        }
        return this.f10086a.equals(((i0) obj).f10086a);
    }

    public int hashCode() {
        return this.f10086a.hashCode();
    }
}
