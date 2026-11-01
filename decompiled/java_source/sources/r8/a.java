package r8;

import com.google.android.datatransport.Priority;

/* JADX INFO: loaded from: classes4.dex */
final class a extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Integer f74179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f74180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Priority f74181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f74182d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f74183e;

    a(Integer num, Object obj, Priority priority, f fVar, e eVar) {
        this.f74179a = num;
        if (obj == null) {
            throw new NullPointerException("Null payload");
        }
        this.f74180b = obj;
        if (priority == null) {
            throw new NullPointerException("Null priority");
        }
        this.f74181c = priority;
        this.f74182d = fVar;
        this.f74183e = eVar;
    }

    @Override // r8.d
    public Integer a() {
        return this.f74179a;
    }

    @Override // r8.d
    public e b() {
        return this.f74183e;
    }

    @Override // r8.d
    public Object c() {
        return this.f74180b;
    }

    @Override // r8.d
    public Priority d() {
        return this.f74181c;
    }

    @Override // r8.d
    public f e() {
        return this.f74182d;
    }

    public boolean equals(Object obj) {
        f fVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        Integer num = this.f74179a;
        if (num != null ? num.equals(dVar.a()) : dVar.a() == null) {
            if (this.f74180b.equals(dVar.c()) && this.f74181c.equals(dVar.d()) && ((fVar = this.f74182d) != null ? fVar.equals(dVar.e()) : dVar.e() == null)) {
                e eVar = this.f74183e;
                if (eVar == null) {
                    if (dVar.b() == null) {
                        return true;
                    }
                } else if (eVar.equals(dVar.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.f74179a;
        int iHashCode = ((((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f74180b.hashCode()) * 1000003) ^ this.f74181c.hashCode()) * 1000003;
        f fVar = this.f74182d;
        int iHashCode2 = (iHashCode ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        e eVar = this.f74183e;
        return iHashCode2 ^ (eVar != null ? eVar.hashCode() : 0);
    }

    public String toString() {
        return "Event{code=" + this.f74179a + ", payload=" + this.f74180b + ", priority=" + this.f74181c + ", productData=" + this.f74182d + ", eventContext=" + this.f74183e + "}";
    }
}
