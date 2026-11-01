package androidx.databinding;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f8543a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f8544b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f8545c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8546d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f8547e;

    public static abstract class a {
        public abstract void a(Object obj, Object obj2, int i11, Object obj3);
    }

    public c(a aVar) {
        this.f8547e = aVar;
    }

    private boolean c(int i11) {
        int i12;
        if (i11 < 64) {
            return ((1 << i11) & this.f8544b) != 0;
        }
        long[] jArr = this.f8545c;
        if (jArr != null && (i12 = (i11 / 64) - 1) < jArr.length) {
            return ((1 << (i11 % 64)) & jArr[i12]) != 0;
        }
        return false;
    }

    private void e(Object obj, int i11, Object obj2, int i12, int i13, long j11) {
        long j12 = 1;
        while (i12 < i13) {
            if ((j11 & j12) == 0) {
                this.f8547e.a(this.f8543a.get(i12), obj, i11, obj2);
            }
            j12 <<= 1;
            i12++;
        }
    }

    private void f(Object obj, int i11, Object obj2) {
        e(obj, i11, obj2, 0, Math.min(64, this.f8543a.size()), this.f8544b);
    }

    private void g(Object obj, int i11, Object obj2) {
        int size = this.f8543a.size();
        long[] jArr = this.f8545c;
        int length = jArr == null ? -1 : jArr.length - 1;
        i(obj, i11, obj2, length);
        e(obj, i11, obj2, (length + 2) * 64, size, 0L);
    }

    private void i(Object obj, int i11, Object obj2, int i12) {
        if (i12 < 0) {
            f(obj, i11, obj2);
            return;
        }
        long j11 = this.f8545c[i12];
        int i13 = (i12 + 1) * 64;
        int iMin = Math.min(this.f8543a.size(), i13 + 64);
        i(obj, i11, obj2, i12 - 1);
        e(obj, i11, obj2, i13, iMin, j11);
    }

    private void k(int i11, long j11) {
        long j12 = Long.MIN_VALUE;
        for (int i12 = i11 + 63; i12 >= i11; i12--) {
            if ((j11 & j12) != 0) {
                this.f8543a.remove(i12);
            }
            j12 >>>= 1;
        }
    }

    private void l(int i11) {
        if (i11 < 64) {
            this.f8544b = (1 << i11) | this.f8544b;
            return;
        }
        int i12 = (i11 / 64) - 1;
        long[] jArr = this.f8545c;
        if (jArr == null) {
            this.f8545c = new long[this.f8543a.size() / 64];
        } else if (jArr.length <= i12) {
            long[] jArr2 = new long[this.f8543a.size() / 64];
            long[] jArr3 = this.f8545c;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f8545c = jArr2;
        }
        long j11 = 1 << (i11 % 64);
        long[] jArr4 = this.f8545c;
        jArr4[i12] = j11 | jArr4[i12];
    }

    public synchronized void a(Object obj) {
        try {
            if (obj == null) {
                throw new IllegalArgumentException("callback cannot be null");
            }
            int iLastIndexOf = this.f8543a.lastIndexOf(obj);
            if (iLastIndexOf < 0 || c(iLastIndexOf)) {
                this.f8543a.add(obj);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized c clone() {
        c cVar;
        CloneNotSupportedException e11;
        try {
            cVar = (c) super.clone();
            try {
                cVar.f8544b = 0L;
                cVar.f8545c = null;
                cVar.f8546d = 0;
                cVar.f8543a = new ArrayList();
                int size = this.f8543a.size();
                for (int i11 = 0; i11 < size; i11++) {
                    if (!c(i11)) {
                        cVar.f8543a.add(this.f8543a.get(i11));
                    }
                }
            } catch (CloneNotSupportedException e12) {
                e11 = e12;
                e11.printStackTrace();
            }
        } catch (CloneNotSupportedException e13) {
            cVar = null;
            e11 = e13;
        }
        return cVar;
    }

    public synchronized void d(Object obj, int i11, Object obj2) {
        try {
            this.f8546d++;
            g(obj, i11, obj2);
            int i12 = this.f8546d - 1;
            this.f8546d = i12;
            if (i12 == 0) {
                long[] jArr = this.f8545c;
                if (jArr != null) {
                    for (int length = jArr.length - 1; length >= 0; length--) {
                        long j11 = this.f8545c[length];
                        if (j11 != 0) {
                            k((length + 1) * 64, j11);
                            this.f8545c[length] = 0;
                        }
                    }
                }
                long j12 = this.f8544b;
                if (j12 != 0) {
                    k(0, j12);
                    this.f8544b = 0L;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void j(Object obj) {
        try {
            if (this.f8546d == 0) {
                this.f8543a.remove(obj);
            } else {
                int iLastIndexOf = this.f8543a.lastIndexOf(obj);
                if (iLastIndexOf >= 0) {
                    l(iLastIndexOf);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
