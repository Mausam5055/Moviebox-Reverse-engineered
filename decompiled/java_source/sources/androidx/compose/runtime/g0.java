package androidx.compose.runtime;

import java.util.Arrays;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final d0 f3733a = new d0();

    public static final void a(Object obj, Function1 function1, i iVar, int i11) {
        if (k.H()) {
            k.Q(-1371986847, i11, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:155)");
        }
        boolean zO = iVar.O(obj);
        Object objY = iVar.y();
        if (zO || objY == i.f3736a.a()) {
            objY = new b0(function1);
            iVar.p(objY);
        }
        if (k.H()) {
            k.P();
        }
    }

    public static final void b(Object[] objArr, Function1 function1, i iVar, int i11) {
        if (k.H()) {
            k.Q(-1307627122, i11, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:276)");
        }
        boolean zO = false;
        for (Object obj : Arrays.copyOf(objArr, objArr.length)) {
            zO |= iVar.O(obj);
        }
        Object objY = iVar.y();
        if (zO || objY == i.f3736a.a()) {
            iVar.p(new b0(function1));
        }
        if (k.H()) {
            k.P();
        }
    }

    public static final void c(Object obj, Object obj2, Function2 function2, i iVar, int i11) {
        if (k.H()) {
            k.Q(590241125, i11, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:360)");
        }
        CoroutineContext coroutineContextM = iVar.m();
        boolean zO = iVar.O(obj) | iVar.O(obj2);
        Object objY = iVar.y();
        if (zO || objY == i.f3736a.a()) {
            objY = new r0(coroutineContextM, function2);
            iVar.p(objY);
        }
        if (k.H()) {
            k.P();
        }
    }

    public static final void d(Object obj, Function2 function2, i iVar, int i11) {
        if (k.H()) {
            k.Q(1179185413, i11, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:337)");
        }
        CoroutineContext coroutineContextM = iVar.m();
        boolean zO = iVar.O(obj);
        Object objY = iVar.y();
        if (zO || objY == i.f3736a.a()) {
            objY = new r0(coroutineContextM, function2);
            iVar.p(objY);
        }
        if (k.H()) {
            k.P();
        }
    }

    public static final void e(Function0 function0, i iVar, int i11) {
        if (k.H()) {
            k.Q(-1288466761, i11, -1, "androidx.compose.runtime.SideEffect (Effects.kt:48)");
        }
        iVar.t(function0);
        if (k.H()) {
            k.P();
        }
    }

    public static final kotlinx.coroutines.n0 g(CoroutineContext coroutineContext, i iVar) {
        kotlinx.coroutines.t1.b bVar = kotlinx.coroutines.t1.f67996l1;
        if (coroutineContext.get(bVar) == null) {
            CoroutineContext coroutineContextM = iVar.m();
            return kotlinx.coroutines.o0.a(coroutineContextM.plus(kotlinx.coroutines.v1.a((kotlinx.coroutines.t1) coroutineContextM.get(bVar))).plus(coroutineContext));
        }
        kotlinx.coroutines.z zVarB = JobKt__JobKt.b(null, 1, null);
        zVarB.b(new IllegalArgumentException("CoroutineContext supplied to rememberCoroutineScope may not include a parent job"));
        return kotlinx.coroutines.o0.a(zVarB);
    }
}
