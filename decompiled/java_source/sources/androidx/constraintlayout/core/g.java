package androidx.constraintlayout.core;

/* JADX INFO: loaded from: classes.dex */
class g implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f6699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6700b;

    g(int i11) {
        if (i11 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f6699a = new Object[i11];
    }

    @Override // androidx.constraintlayout.core.f
    public void a(Object[] objArr, int i11) {
        if (i11 > objArr.length) {
            i11 = objArr.length;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            Object obj = objArr[i12];
            int i13 = this.f6700b;
            Object[] objArr2 = this.f6699a;
            if (i13 < objArr2.length) {
                objArr2[i13] = obj;
                this.f6700b = i13 + 1;
            }
        }
    }

    @Override // androidx.constraintlayout.core.f
    public Object acquire() {
        int i11 = this.f6700b;
        if (i11 <= 0) {
            return null;
        }
        int i12 = i11 - 1;
        Object[] objArr = this.f6699a;
        Object obj = objArr[i12];
        objArr[i12] = null;
        this.f6700b = i11 - 1;
        return obj;
    }

    @Override // androidx.constraintlayout.core.f
    public boolean release(Object obj) {
        int i11 = this.f6700b;
        Object[] objArr = this.f6699a;
        if (i11 >= objArr.length) {
            return false;
        }
        objArr[i11] = obj;
        this.f6700b = i11 + 1;
        return true;
    }
}
