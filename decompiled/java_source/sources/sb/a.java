package sb;

/* JADX INFO: loaded from: classes5.dex */
final class a extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e.a f75298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e.c f75299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e.b f75300c;

    a(e.a aVar, e.c cVar, e.b bVar) {
        if (aVar == null) {
            throw new NullPointerException("Null appData");
        }
        this.f75298a = aVar;
        if (cVar == null) {
            throw new NullPointerException("Null osData");
        }
        this.f75299b = cVar;
        if (bVar == null) {
            throw new NullPointerException("Null deviceData");
        }
        this.f75300c = bVar;
    }

    @Override // sb.e
    public e.a a() {
        return this.f75298a;
    }

    @Override // sb.e
    public e.b c() {
        return this.f75300c;
    }

    @Override // sb.e
    public e.c d() {
        return this.f75299b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f75298a.equals(eVar.a()) && this.f75299b.equals(eVar.d()) && this.f75300c.equals(eVar.c());
    }

    public int hashCode() {
        return ((((this.f75298a.hashCode() ^ 1000003) * 1000003) ^ this.f75299b.hashCode()) * 1000003) ^ this.f75300c.hashCode();
    }

    public String toString() {
        return "StaticSessionData{appData=" + this.f75298a + ", osData=" + this.f75299b + ", deviceData=" + this.f75300c + "}";
    }
}
