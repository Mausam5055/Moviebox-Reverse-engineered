package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.coroutines.Continuation;
import okhttp3.Call;
import okhttp3.Response;

/* JADX INFO: loaded from: classes7.dex */
abstract class u extends l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i0 f74500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Call.Factory f74501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k f74502c;

    static final class a extends u {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final e f74503d;

        a(i0 i0Var, Call.Factory factory, k kVar, e eVar) {
            super(i0Var, factory, kVar);
            this.f74503d = eVar;
        }

        @Override // retrofit2.u
        protected Object c(d dVar, Object[] objArr) {
            return this.f74503d.b(dVar);
        }
    }

    static final class b extends u {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final e f74504d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f74505e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f74506f;

        b(i0 i0Var, Call.Factory factory, k kVar, e eVar, boolean z10, boolean z11) {
            super(i0Var, factory, kVar);
            this.f74504d = eVar;
            this.f74505e = z10;
            this.f74506f = z11;
        }

        @Override // retrofit2.u
        protected Object c(d dVar, Object[] objArr) {
            d dVar2 = (d) this.f74504d.b(dVar);
            Continuation continuation = (Continuation) objArr[objArr.length - 1];
            try {
                if (this.f74506f) {
                    return KotlinExtensions.d(dVar2, continuation);
                }
                return this.f74505e ? KotlinExtensions.b(dVar2, continuation) : KotlinExtensions.a(dVar2, continuation);
            } catch (LinkageError e11) {
                throw e11;
            } catch (ThreadDeath e12) {
                throw e12;
            } catch (VirtualMachineError e13) {
                throw e13;
            } catch (Throwable th2) {
                return KotlinExtensions.e(th2, continuation);
            }
        }
    }

    static final class c extends u {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final e f74507d;

        c(i0 i0Var, Call.Factory factory, k kVar, e eVar) {
            super(i0Var, factory, kVar);
            this.f74507d = eVar;
        }

        @Override // retrofit2.u
        protected Object c(d dVar, Object[] objArr) {
            d dVar2 = (d) this.f74507d.b(dVar);
            Continuation continuation = (Continuation) objArr[objArr.length - 1];
            try {
                return KotlinExtensions.c(dVar2, continuation);
            } catch (Exception e11) {
                return KotlinExtensions.e(e11, continuation);
            }
        }
    }

    u(i0 i0Var, Call.Factory factory, k kVar) {
        this.f74500a = i0Var;
        this.f74501b = factory;
        this.f74502c = kVar;
    }

    private static e d(k0 k0Var, Method method, Type type, Annotation[] annotationArr) {
        try {
            return k0Var.a(type, annotationArr);
        } catch (RuntimeException e11) {
            throw o0.o(method, e11, "Unable to create call adapter for %s", type);
        }
    }

    private static k e(k0 k0Var, Method method, Type type) {
        try {
            return k0Var.h(type, method.getAnnotations());
        } catch (RuntimeException e11) {
            throw o0.o(method, e11, "Unable to create converter for %s", type);
        }
    }

    static u f(k0 k0Var, Method method, i0 i0Var) {
        Type genericReturnType;
        boolean z10;
        boolean z11;
        boolean zM;
        boolean z12 = i0Var.f74421l;
        Annotation[] annotations = method.getAnnotations();
        if (z12) {
            Type[] genericParameterTypes = method.getGenericParameterTypes();
            Type typeF = o0.f(0, (ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]);
            if (o0.h(typeF) == j0.class && (typeF instanceof ParameterizedType)) {
                typeF = o0.g(0, (ParameterizedType) typeF);
                z10 = true;
                zM = false;
            } else {
                if (o0.h(typeF) == d.class) {
                    throw o0.n(method, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s", o0.g(0, (ParameterizedType) typeF));
                }
                zM = o0.m(typeF);
                z10 = false;
            }
            genericReturnType = new o0.b(null, d.class, typeF);
            annotations = n0.a(annotations);
            z11 = zM;
        } else {
            genericReturnType = method.getGenericReturnType();
            z10 = false;
            z11 = false;
        }
        e eVarD = d(k0Var, method, genericReturnType, annotations);
        Type typeA = eVarD.a();
        if (typeA == Response.class) {
            throw o0.n(method, "'" + o0.h(typeA).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
        }
        if (typeA == j0.class) {
            throw o0.n(method, "Response must include generic type (e.g., Response<String>)", new Object[0]);
        }
        if (i0Var.f74413d.equals("HEAD") && !Void.class.equals(typeA) && !o0.m(typeA)) {
            throw o0.n(method, "HEAD method must use Void or Unit as response type.", new Object[0]);
        }
        k kVarE = e(k0Var, method, typeA);
        Call.Factory factory = k0Var.f74459b;
        if (z12) {
            return z10 ? new c(i0Var, factory, kVarE, eVarD) : new b(i0Var, factory, kVarE, eVarD, false, z11);
        }
        return new a(i0Var, factory, kVarE, eVarD);
    }

    @Override // retrofit2.l0
    final Object a(Object obj, Object[] objArr) {
        return c(new w(this.f74500a, obj, objArr, this.f74501b, this.f74502c), objArr);
    }

    protected abstract Object c(d dVar, Object[] objArr);
}
