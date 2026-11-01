package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f70618e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final r f70619f = new r(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f70620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f70621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f70622c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f70623d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final r a() {
            return r.f70619f;
        }
    }

    public r(int i11, int i12, int i13, int i14) {
        this.f70620a = i11;
        this.f70621b = i12;
        this.f70622c = i13;
        this.f70623d = i14;
    }

    public static /* synthetic */ r c(r rVar, int i11, int i12, int i13, int i14, int i15, Object obj) {
        if ((i15 & 1) != 0) {
            i11 = rVar.f70620a;
        }
        if ((i15 & 2) != 0) {
            i12 = rVar.f70621b;
        }
        if ((i15 & 4) != 0) {
            i13 = rVar.f70622c;
        }
        if ((i15 & 8) != 0) {
            i14 = rVar.f70623d;
        }
        return rVar.b(i11, i12, i13, i14);
    }

    public final r b(int i11, int i12, int i13, int i14) {
        return new r(i11, i12, i13, i14);
    }

    public final int d() {
        return this.f70623d;
    }

    public final int e() {
        return this.f70623d - this.f70621b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f70620a == rVar.f70620a && this.f70621b == rVar.f70621b && this.f70622c == rVar.f70622c && this.f70623d == rVar.f70623d;
    }

    public final int f() {
        return this.f70620a;
    }

    public final int g() {
        return this.f70622c;
    }

    public final int h() {
        return this.f70621b;
    }

    public int hashCode() {
        return (((((this.f70620a * 31) + this.f70621b) * 31) + this.f70622c) * 31) + this.f70623d;
    }

    public final long i() {
        return q.a(this.f70620a, this.f70621b);
    }

    public final int j() {
        return this.f70622c - this.f70620a;
    }

    public final boolean k() {
        return this.f70620a >= this.f70622c || this.f70621b >= this.f70623d;
    }

    public final r l(int i11, int i12) {
        return new r(this.f70620a + i11, this.f70621b + i12, this.f70622c + i11, this.f70623d + i12);
    }

    public String toString() {
        return "IntRect.fromLTRB(" + this.f70620a + ", " + this.f70621b + ", " + this.f70622c + ", " + this.f70623d + ')';
    }
}
