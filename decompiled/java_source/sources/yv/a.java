package yv;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    public final c a() {
        c cVar = c.f79061e;
        if (cVar == null) {
            synchronized (this) {
                cVar = c.f79061e;
                if (cVar == null) {
                    cVar = new c();
                    c.f79061e = cVar;
                }
            }
        }
        return cVar;
    }
}
