package sd;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final rd.b f75323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final rd.b f75324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final rd.c f75325c;

    b(rd.b bVar, rd.b bVar2, rd.c cVar) {
        this.f75323a = bVar;
        this.f75324b = bVar2;
        this.f75325c = cVar;
    }

    rd.c a() {
        return this.f75325c;
    }

    rd.b b() {
        return this.f75323a;
    }

    rd.b c() {
        return this.f75324b;
    }

    boolean d() {
        return this.f75324b == null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Objects.equals(this.f75323a, bVar.f75323a) && Objects.equals(this.f75324b, bVar.f75324b) && Objects.equals(this.f75325c, bVar.f75325c);
    }

    public int hashCode() {
        return (Objects.hashCode(this.f75323a) ^ Objects.hashCode(this.f75324b)) ^ Objects.hashCode(this.f75325c);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[ ");
        sb2.append(this.f75323a);
        sb2.append(" , ");
        sb2.append(this.f75324b);
        sb2.append(" : ");
        rd.c cVar = this.f75325c;
        sb2.append(cVar == null ? "null" : Integer.valueOf(cVar.c()));
        sb2.append(" ]");
        return sb2.toString();
    }
}
