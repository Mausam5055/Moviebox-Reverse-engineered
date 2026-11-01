package t8;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
final class b extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f76075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c9.a f76076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c9.a f76077c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f76078d;

    b(Context context, c9.a aVar, c9.a aVar2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f76075a = context;
        if (aVar == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f76076b = aVar;
        if (aVar2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f76077c = aVar2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f76078d = str;
    }

    @Override // t8.f
    public Context b() {
        return this.f76075a;
    }

    @Override // t8.f
    public String c() {
        return this.f76078d;
    }

    @Override // t8.f
    public c9.a d() {
        return this.f76077c;
    }

    @Override // t8.f
    public c9.a e() {
        return this.f76076b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f76075a.equals(fVar.b()) && this.f76076b.equals(fVar.e()) && this.f76077c.equals(fVar.d()) && this.f76078d.equals(fVar.c());
    }

    public int hashCode() {
        return ((((((this.f76075a.hashCode() ^ 1000003) * 1000003) ^ this.f76076b.hashCode()) * 1000003) ^ this.f76077c.hashCode()) * 1000003) ^ this.f76078d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f76075a + ", wallClock=" + this.f76076b + ", monotonicClock=" + this.f76077c + ", backendName=" + this.f76078d + "}";
    }
}
