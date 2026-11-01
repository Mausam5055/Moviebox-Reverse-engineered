package com.google.android.exoplayer2.source;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes3.dex */
final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f25903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f25904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.i f25905c;

    public f0() {
        this(new com.google.android.exoplayer2.util.i() { // from class: com.google.android.exoplayer2.source.e0
            @Override // com.google.android.exoplayer2.util.i
            public final void accept(Object obj) {
                f0.i(obj);
            }
        });
    }

    public f0(com.google.android.exoplayer2.util.i iVar) {
        this.f25904b = new SparseArray();
        this.f25905c = iVar;
        this.f25903a = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(Object obj) {
    }

    public void b(int i11, Object obj) {
        if (this.f25903a == -1) {
            com.google.android.exoplayer2.util.a.g(this.f25904b.size() == 0);
            this.f25903a = 0;
        }
        if (this.f25904b.size() > 0) {
            SparseArray sparseArray = this.f25904b;
            int iKeyAt = sparseArray.keyAt(sparseArray.size() - 1);
            com.google.android.exoplayer2.util.a.a(i11 >= iKeyAt);
            if (iKeyAt == i11) {
                com.google.android.exoplayer2.util.i iVar = this.f25905c;
                SparseArray sparseArray2 = this.f25904b;
                iVar.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.f25904b.append(i11, obj);
    }

    public void c() {
        for (int i11 = 0; i11 < this.f25904b.size(); i11++) {
            this.f25905c.accept(this.f25904b.valueAt(i11));
        }
        this.f25903a = -1;
        this.f25904b.clear();
    }

    public void d(int i11) {
        for (int size = this.f25904b.size() - 1; size >= 0 && i11 < this.f25904b.keyAt(size); size--) {
            this.f25905c.accept(this.f25904b.valueAt(size));
            this.f25904b.removeAt(size);
        }
        this.f25903a = this.f25904b.size() > 0 ? Math.min(this.f25903a, this.f25904b.size() - 1) : -1;
    }

    public void e(int i11) {
        int i12 = 0;
        while (i12 < this.f25904b.size() - 1) {
            int i13 = i12 + 1;
            if (i11 < this.f25904b.keyAt(i13)) {
                return;
            }
            this.f25905c.accept(this.f25904b.valueAt(i12));
            this.f25904b.removeAt(i12);
            int i14 = this.f25903a;
            if (i14 > 0) {
                this.f25903a = i14 - 1;
            }
            i12 = i13;
        }
    }

    public Object f(int i11) {
        if (this.f25903a == -1) {
            this.f25903a = 0;
        }
        while (true) {
            int i12 = this.f25903a;
            if (i12 <= 0 || i11 >= this.f25904b.keyAt(i12)) {
                break;
            }
            this.f25903a--;
        }
        while (this.f25903a < this.f25904b.size() - 1 && i11 >= this.f25904b.keyAt(this.f25903a + 1)) {
            this.f25903a++;
        }
        return this.f25904b.valueAt(this.f25903a);
    }

    public Object g() {
        SparseArray sparseArray = this.f25904b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public boolean h() {
        return this.f25904b.size() == 0;
    }
}
