package androidx.compose.ui.text.font;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f6133c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f6134d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final m f6135e = new m();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final j0 f6136f = new b(j0.f67892k1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f6137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private n0 f6138b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends AbstractCoroutineContextElement implements j0 {
        public b(j0.a aVar) {
            super(aVar);
        }

        @Override // kotlinx.coroutines.j0
        public void o(CoroutineContext coroutineContext, Throwable th2) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public l(e eVar, CoroutineContext coroutineContext) {
        this.f6137a = eVar;
        this.f6138b = o0.a(f6136f.plus(androidx.compose.ui.text.platform.j.a()).plus(coroutineContext).plus(l2.a((t1) coroutineContext.get(t1.f67996l1))));
    }

    public /* synthetic */ l(e eVar, CoroutineContext coroutineContext, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new e() : eVar, (i11 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext);
    }

    public e0 a(d0 d0Var, u uVar, Function1 function1, Function1 function2) {
        d0Var.c();
        return null;
    }
}
