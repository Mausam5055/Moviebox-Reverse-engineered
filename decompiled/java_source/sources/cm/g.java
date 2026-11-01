package cm;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f17289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f17290b;

    public g(int i11) {
        if (i11 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f17289a = new Object[i11];
    }

    private boolean a(Object obj) {
        for (int i11 = 0; i11 < this.f17290b; i11++) {
            if (this.f17289a[i11] == obj) {
                return true;
            }
        }
        return false;
    }

    @Override // cm.f
    public Object acquire() {
        int i11 = this.f17290b;
        if (i11 <= 0) {
            return null;
        }
        int i12 = i11 - 1;
        Object[] objArr = this.f17289a;
        Object obj = objArr[i12];
        objArr[i12] = null;
        this.f17290b = i12;
        return obj;
    }

    @Override // cm.f
    public boolean release(Object obj) {
        if (a(obj)) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i11 = this.f17290b;
        Object[] objArr = this.f17289a;
        if (i11 >= objArr.length) {
            return false;
        }
        objArr[i11] = obj;
        this.f17290b = i11 + 1;
        return true;
    }
}
