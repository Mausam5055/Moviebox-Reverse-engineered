package androidx.work;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b0 extends i0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f15458e = new b(null);

    public static final class a extends i0.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Class workerClass, long j11, TimeUnit repeatIntervalTimeUnit) {
            super(workerClass);
            Intrinsics.h(workerClass, "workerClass");
            Intrinsics.h(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
            h().r(repeatIntervalTimeUnit.toMillis(j11));
        }

        @Override // androidx.work.i0.a
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public b0 c() {
            if (d() && h().f15773j.j()) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
            }
            if (h().f15780q) {
                throw new IllegalArgumentException("PeriodicWorkRequests cannot be expedited");
            }
            return new b0(this);
        }

        @Override // androidx.work.i0.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public a g() {
            return this;
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(a builder) {
        super(builder.e(), builder.h(), builder.f());
        Intrinsics.h(builder, "builder");
    }
}
