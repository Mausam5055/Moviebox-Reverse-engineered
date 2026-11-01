package cm;

/* JADX INFO: loaded from: classes5.dex */
public class h extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f17291c;

    public h(int i11) {
        super(i11);
        this.f17291c = new Object();
    }

    @Override // cm.g, cm.f
    public Object acquire() {
        Object objAcquire;
        synchronized (this.f17291c) {
            objAcquire = super.acquire();
        }
        return objAcquire;
    }

    @Override // cm.g, cm.f
    public boolean release(Object obj) {
        boolean zRelease;
        synchronized (this.f17291c) {
            zRelease = super.release(obj);
        }
        return zRelease;
    }
}
