package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
public final class m {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f67867e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67868f = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f67869g = AtomicLongFieldUpdater.newUpdater(m.class, "_state$volatile");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final z f67870h = new z("REMOVE_FROZEN");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f67871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f67872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f67873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f67874d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(long j11) {
            return (j11 & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long b(long j11, int i11) {
            return d(j11, 1073741823L) | ((long) i11);
        }

        public final long c(long j11, int i11) {
            return d(j11, 1152921503533105152L) | (((long) i11) << 30);
        }

        public final long d(long j11, long j12) {
            return j11 & (~j12);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f67875a;

        public b(int i11) {
            this.f67875a = i11;
        }
    }

    public m(int i11, boolean z10) {
        this.f67871a = i11;
        this.f67872b = z10;
        int i12 = i11 - 1;
        this.f67873c = i12;
        this.f67874d = new AtomicReferenceArray(i11);
        if (i12 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i11 & i12) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    private final m b(long j11) {
        m mVar = new m(this.f67871a * 2, this.f67872b);
        int i11 = (int) (1073741823 & j11);
        int i12 = (int) ((1152921503533105152L & j11) >> 30);
        while (true) {
            int i13 = this.f67873c;
            if ((i11 & i13) == (i13 & i12)) {
                f67869g.set(mVar, f67867e.d(j11, 1152921504606846976L));
                return mVar;
            }
            Object bVar = f().get(this.f67873c & i11);
            if (bVar == null) {
                bVar = new b(i11);
            }
            mVar.f().set(mVar.f67873c & i11, bVar);
            i11++;
        }
    }

    private final m c(long j11) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f67868f;
        while (true) {
            m mVar = (m) atomicReferenceFieldUpdater.get(this);
            if (mVar != null) {
                return mVar;
            }
            androidx.concurrent.futures.a.a(f67868f, this, null, b(j11));
        }
    }

    private final m e(int i11, Object obj) {
        Object obj2 = f().get(this.f67873c & i11);
        if (!(obj2 instanceof b) || ((b) obj2).f67875a != i11) {
            return null;
        }
        f().set(i11 & this.f67873c, obj);
        return this;
    }

    private final /* synthetic */ AtomicReferenceArray f() {
        return this.f67874d;
    }

    private final long k() {
        long j11;
        long j12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67869g;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            if ((j11 & 1152921504606846976L) != 0) {
                return j11;
            }
            j12 = j11 | 1152921504606846976L;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j11, j12));
        return j12;
    }

    private final m n(int i11, int i12) {
        long j11;
        int i13;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67869g;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            i13 = (int) (1073741823 & j11);
            if ((1152921504606846976L & j11) != 0) {
                return l();
            }
        } while (!f67869g.compareAndSet(this, j11, f67867e.b(j11, i12)));
        f().set(this.f67873c & i13, null);
        return null;
    }

    public final int a(Object obj) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67869g;
        while (true) {
            long j11 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j11) != 0) {
                return f67867e.a(j11);
            }
            int i11 = (int) (1073741823 & j11);
            int i12 = (int) ((1152921503533105152L & j11) >> 30);
            int i13 = this.f67873c;
            if (((i12 + 2) & i13) == (i11 & i13)) {
                return 1;
            }
            if (!this.f67872b && f().get(i12 & i13) != null) {
                int i14 = this.f67871a;
                if (i14 < 1024 || ((i12 - i11) & 1073741823) > (i14 >> 1)) {
                    return 1;
                }
            } else if (f67869g.compareAndSet(this, j11, f67867e.c(j11, (i12 + 1) & 1073741823))) {
                f().set(i12 & i13, obj);
                m mVarE = this;
                while ((f67869g.get(mVarE) & 1152921504606846976L) != 0 && (mVarE = mVarE.l().e(i12, obj)) != null) {
                }
                return 0;
            }
        }
    }

    public final boolean d() {
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67869g;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            if ((j11 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j11) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j11, j11 | 2305843009213693952L));
        return true;
    }

    public final int g() {
        long j11 = f67869g.get(this);
        return (((int) ((j11 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j11))) & 1073741823;
    }

    public final boolean j() {
        long j11 = f67869g.get(this);
        return ((int) (1073741823 & j11)) == ((int) ((j11 & 1152921503533105152L) >> 30));
    }

    public final m l() {
        return c(k());
    }

    public final Object m() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67869g;
        while (true) {
            long j11 = atomicLongFieldUpdater.get(this);
            if ((1152921504606846976L & j11) != 0) {
                return f67870h;
            }
            int i11 = (int) (1073741823 & j11);
            int i12 = this.f67873c;
            if ((((int) ((1152921503533105152L & j11) >> 30)) & i12) == (i12 & i11)) {
                return null;
            }
            Object obj = f().get(this.f67873c & i11);
            if (obj == null) {
                if (this.f67872b) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                int i13 = (i11 + 1) & 1073741823;
                if (f67869g.compareAndSet(this, j11, f67867e.b(j11, i13))) {
                    f().set(this.f67873c & i11, null);
                    return obj;
                }
                if (this.f67872b) {
                    m mVarN = this;
                    do {
                        mVarN = mVarN.n(i11, i13);
                    } while (mVarN != null);
                    return obj;
                }
            }
        }
    }
}
