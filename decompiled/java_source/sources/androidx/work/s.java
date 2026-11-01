package androidx.work;

import android.content.Context;
import androidx.core.view.InputDeviceCompat;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f16046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WorkerParameters f16047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicInteger f16048c = new AtomicInteger(InputDeviceCompat.SOURCE_ANY);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f16049d;

    public static abstract class a {

        /* JADX INFO: renamed from: androidx.work.s$a$a, reason: collision with other inner class name */
        public static final class C0136a extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final f f16050a;

            public C0136a() {
                this(f.f15484c);
            }

            public C0136a(f fVar) {
                this.f16050a = fVar;
            }

            public f d() {
                return this.f16050a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0136a.class != obj.getClass()) {
                    return false;
                }
                return this.f16050a.equals(((C0136a) obj).f16050a);
            }

            public int hashCode() {
                return (C0136a.class.getName().hashCode() * 31) + this.f16050a.hashCode();
            }

            public String toString() {
                return "Failure {mOutputData=" + this.f16050a + '}';
            }
        }

        public static final class b extends a {
            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && b.class == obj.getClass();
            }

            public int hashCode() {
                return b.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }

        public static final class c extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final f f16051a;

            public c() {
                this(f.f15484c);
            }

            public c(f fVar) {
                this.f16051a = fVar;
            }

            public f d() {
                return this.f16051a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || c.class != obj.getClass()) {
                    return false;
                }
                return this.f16051a.equals(((c) obj).f16051a);
            }

            public int hashCode() {
                return (c.class.getName().hashCode() * 31) + this.f16051a.hashCode();
            }

            public String toString() {
                return "Success {mOutputData=" + this.f16051a + '}';
            }
        }

        a() {
        }

        public static a a() {
            return new C0136a();
        }

        public static a b() {
            return new b();
        }

        public static a c() {
            return new c();
        }
    }

    public s(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        this.f16046a = context;
        this.f16047b = workerParameters;
    }

    public final Context a() {
        return this.f16046a;
    }

    public Executor b() {
        return this.f16047b.a();
    }

    public abstract com.google.common.util.concurrent.r c();

    public final UUID d() {
        return this.f16047b.c();
    }

    public final f e() {
        return this.f16047b.d();
    }

    public final int f() {
        return this.f16048c.get();
    }

    public m0 g() {
        return this.f16047b.g();
    }

    public final boolean h() {
        return this.f16048c.get() != -256;
    }

    public final boolean i() {
        return this.f16049d;
    }

    public void j() {
    }

    public final void k() {
        this.f16049d = true;
    }

    public abstract com.google.common.util.concurrent.r l();

    public final void m(int i11) {
        if (this.f16048c.compareAndSet(InputDeviceCompat.SOURCE_ANY, i11)) {
            j();
        }
    }
}
