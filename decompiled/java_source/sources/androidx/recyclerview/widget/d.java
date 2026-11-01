package androidx.recyclerview.widget;

/* JADX INFO: loaded from: classes2.dex */
public class d implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final j f14357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f14358b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f14359c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f14360d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Object f14361e = null;

    public d(j jVar) {
        this.f14357a = jVar;
    }

    public void a() {
        int i11 = this.f14358b;
        if (i11 == 0) {
            return;
        }
        if (i11 == 1) {
            this.f14357a.onInserted(this.f14359c, this.f14360d);
        } else if (i11 == 2) {
            this.f14357a.onRemoved(this.f14359c, this.f14360d);
        } else if (i11 == 3) {
            this.f14357a.onChanged(this.f14359c, this.f14360d, this.f14361e);
        }
        this.f14361e = null;
        this.f14358b = 0;
    }

    @Override // androidx.recyclerview.widget.j
    public void onChanged(int i11, int i12, Object obj) {
        int i13;
        if (this.f14358b == 3) {
            int i14 = this.f14359c;
            int i15 = this.f14360d;
            if (i11 <= i14 + i15 && (i13 = i11 + i12) >= i14 && this.f14361e == obj) {
                this.f14359c = Math.min(i11, i14);
                this.f14360d = Math.max(i15 + i14, i13) - this.f14359c;
                return;
            }
        }
        a();
        this.f14359c = i11;
        this.f14360d = i12;
        this.f14361e = obj;
        this.f14358b = 3;
    }

    @Override // androidx.recyclerview.widget.j
    public void onInserted(int i11, int i12) {
        int i13;
        if (this.f14358b == 1 && i11 >= (i13 = this.f14359c)) {
            int i14 = this.f14360d;
            if (i11 <= i13 + i14) {
                this.f14360d = i14 + i12;
                this.f14359c = Math.min(i11, i13);
                return;
            }
        }
        a();
        this.f14359c = i11;
        this.f14360d = i12;
        this.f14358b = 1;
    }

    @Override // androidx.recyclerview.widget.j
    public void onMoved(int i11, int i12) {
        a();
        this.f14357a.onMoved(i11, i12);
    }

    @Override // androidx.recyclerview.widget.j
    public void onRemoved(int i11, int i12) {
        int i13;
        if (this.f14358b == 2 && (i13 = this.f14359c) >= i11 && i13 <= i11 + i12) {
            this.f14360d += i12;
            this.f14359c = i11;
        } else {
            a();
            this.f14359c = i11;
            this.f14360d = i12;
            this.f14358b = 2;
        }
    }
}
