package yv;

/* JADX INFO: loaded from: classes7.dex */
public final class d {
    public final f a() {
        f fVar = f.f79068p;
        if (fVar == null) {
            synchronized (this) {
                fVar = f.f79068p;
                if (fVar == null) {
                    fVar = new f();
                    f.f79068p = fVar;
                }
            }
        }
        return fVar;
    }
}
