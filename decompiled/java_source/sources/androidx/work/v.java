package androidx.work;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class v extends i0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f16057e = new b(null);

    public static final class a extends i0.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Class workerClass) {
            super(workerClass);
            Intrinsics.h(workerClass, "workerClass");
        }

        @Override // androidx.work.i0.a
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public v c() {
            if (d() && h().f15773j.j()) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
            }
            return new v(this);
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

        public final v a(Class workerClass) {
            Intrinsics.h(workerClass, "workerClass");
            return (v) new a(workerClass).b();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(a builder) {
        super(builder.e(), builder.h(), builder.f());
        Intrinsics.h(builder, "builder");
    }

    public static final v e(Class cls) {
        return f16057e.a(cls);
    }
}
