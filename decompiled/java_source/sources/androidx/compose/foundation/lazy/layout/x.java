package androidx.compose.foundation.lazy.layout;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i0 f3084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f3085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f0 f3086c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PrefetchHandleProvider f3087d;

    private final class a implements d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f3088a = new ArrayList();

        public a() {
        }

        @Override // androidx.compose.foundation.lazy.layout.d0
        public void a(int i11) {
            c(i11, y.f3090a);
        }

        public final List b() {
            return this.f3088a;
        }

        public void c(int i11, long j11) {
            PrefetchHandleProvider prefetchHandleProviderC = x.this.c();
            if (prefetchHandleProviderC == null) {
                return;
            }
            this.f3088a.add(prefetchHandleProviderC.c(i11, j11, x.this.f3086c));
        }
    }

    public interface b {
        void a();

        void cancel();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public x() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public x(i0 i0Var, Function1 function1) {
        this.f3084a = i0Var;
        this.f3085b = function1;
        this.f3086c = new f0();
    }

    public /* synthetic */ x(i0 i0Var, Function1 function1, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : i0Var, (i11 & 2) != 0 ? null : function1);
    }

    public final List b() {
        Function1 function1 = this.f3085b;
        if (function1 == null) {
            return CollectionsKt.l();
        }
        a aVar = new a();
        function1.invoke(aVar);
        return aVar.b();
    }

    public final PrefetchHandleProvider c() {
        return this.f3087d;
    }

    public final i0 d() {
        return this.f3084a;
    }

    public final b e(int i11, long j11) {
        b bVarD;
        PrefetchHandleProvider prefetchHandleProvider = this.f3087d;
        return (prefetchHandleProvider == null || (bVarD = prefetchHandleProvider.d(i11, j11, this.f3086c)) == null) ? androidx.compose.foundation.lazy.layout.a.f3030a : bVarD;
    }

    public final void f(PrefetchHandleProvider prefetchHandleProvider) {
        this.f3087d = prefetchHandleProvider;
    }
}
