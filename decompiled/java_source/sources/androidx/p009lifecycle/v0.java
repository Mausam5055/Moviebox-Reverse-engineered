package androidx.p009lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import q1.g;

/* JADX INFO: loaded from: classes.dex */
public class v0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f9649b = new b(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final p1.a.b f9650c = g.a.f73052a;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p1.c f9651a;

    public static class a extends d {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static a f9653f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Application f9655d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final b f9652e = new b(null);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final p1.a.b f9654g = new C0083a();

        /* JADX INFO: renamed from: androidx.lifecycle.v0$a$a, reason: collision with other inner class name */
        public static final class C0083a implements p1.a.b {
            C0083a() {
            }
        }

        public static final class b {
            private b() {
            }

            public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final a a(Application application) {
                Intrinsics.h(application, "application");
                if (a.f9653f == null) {
                    a.f9653f = new a(application);
                }
                a aVar = a.f9653f;
                Intrinsics.e(aVar);
                return aVar;
            }
        }

        public a() {
            this(null, 0);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(Application application) {
            this(application, 0);
            Intrinsics.h(application, "application");
        }

        private a(Application application, int i11) {
            this.f9655d = application;
        }

        private final t0 e(Class cls, Application application) {
            if (!androidx.p009lifecycle.b.class.isAssignableFrom(cls)) {
                return super.create(cls);
            }
            try {
                t0 t0Var = (t0) cls.getConstructor(Application.class).newInstance(application);
                Intrinsics.g(t0Var, "{\n                try {\n…          }\n            }");
                return t0Var;
            } catch (IllegalAccessException e11) {
                throw new RuntimeException("Cannot create an instance of " + cls, e11);
            } catch (InstantiationException e12) {
                throw new RuntimeException("Cannot create an instance of " + cls, e12);
            } catch (NoSuchMethodException e13) {
                throw new RuntimeException("Cannot create an instance of " + cls, e13);
            } catch (InvocationTargetException e14) {
                throw new RuntimeException("Cannot create an instance of " + cls, e14);
            }
        }

        @Override // androidx.lifecycle.v0.d, androidx.lifecycle.v0.c
        public t0 create(Class modelClass) {
            Intrinsics.h(modelClass, "modelClass");
            Application application = this.f9655d;
            if (application != null) {
                return e(modelClass, application);
            }
            throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        }

        @Override // androidx.lifecycle.v0.d, androidx.lifecycle.v0.c
        public t0 create(Class modelClass, p1.a extras) {
            Intrinsics.h(modelClass, "modelClass");
            Intrinsics.h(extras, "extras");
            if (this.f9655d != null) {
                return create(modelClass);
            }
            Application application = (Application) extras.a(f9654g);
            if (application != null) {
                return e(modelClass, application);
            }
            if (androidx.p009lifecycle.b.class.isAssignableFrom(modelClass)) {
                throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
            }
            return super.create(modelClass);
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final v0 a(x0 store, c factory, p1.a extras) {
            Intrinsics.h(store, "store");
            Intrinsics.h(factory, "factory");
            Intrinsics.h(extras, "extras");
            return new v0(store, factory, extras);
        }
    }

    public interface c {
        t0 create(Class cls);

        t0 create(Class cls, p1.a aVar);

        t0 create(KClass kClass, p1.a aVar);
    }

    public static class d implements c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static d f9657b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f9656a = new a(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final p1.a.b f9658c = g.a.f73052a;

        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final d a() {
                if (d.f9657b == null) {
                    d.f9657b = new d();
                }
                d dVar = d.f9657b;
                Intrinsics.e(dVar);
                return dVar;
            }
        }

        @Override // androidx.lifecycle.v0.c
        public t0 create(Class modelClass) {
            Intrinsics.h(modelClass, "modelClass");
            return q1.d.f73046a.a(modelClass);
        }

        @Override // androidx.lifecycle.v0.c
        public t0 create(Class modelClass, p1.a extras) {
            Intrinsics.h(modelClass, "modelClass");
            Intrinsics.h(extras, "extras");
            return create(modelClass);
        }

        @Override // androidx.lifecycle.v0.c
        public t0 create(KClass modelClass, p1.a extras) {
            Intrinsics.h(modelClass, "modelClass");
            Intrinsics.h(extras, "extras");
            return create(JvmClassMappingKt.a(modelClass), extras);
        }
    }

    public static class e {
        public void a(t0 viewModel) {
            Intrinsics.h(viewModel, "viewModel");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public v0(x0 store, c factory) {
        this(store, factory, null, 4, null);
        Intrinsics.h(store, "store");
        Intrinsics.h(factory, "factory");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public v0(x0 store, c factory, p1.a defaultCreationExtras) {
        this(new p1.c(store, factory, defaultCreationExtras));
        Intrinsics.h(store, "store");
        Intrinsics.h(factory, "factory");
        Intrinsics.h(defaultCreationExtras, "defaultCreationExtras");
    }

    public /* synthetic */ v0(x0 x0Var, c cVar, p1.a aVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(x0Var, cVar, (i11 & 4) != 0 ? p1.a.C0880a.f72270b : aVar);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public v0(y0 owner) {
        Intrinsics.h(owner, "owner");
        x0 viewModelStore = owner.getViewModelStore();
        g gVar = g.f73051a;
        this(viewModelStore, gVar.b(owner), gVar.a(owner));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public v0(y0 owner, c factory) {
        this(owner.getViewModelStore(), factory, g.f73051a.a(owner));
        Intrinsics.h(owner, "owner");
        Intrinsics.h(factory, "factory");
    }

    private v0(p1.c cVar) {
        this.f9651a = cVar;
    }

    public t0 a(Class modelClass) {
        Intrinsics.h(modelClass, "modelClass");
        return c(JvmClassMappingKt.c(modelClass));
    }

    public t0 b(String key, Class modelClass) {
        Intrinsics.h(key, "key");
        Intrinsics.h(modelClass, "modelClass");
        return this.f9651a.a(JvmClassMappingKt.c(modelClass), key);
    }

    public final t0 c(KClass modelClass) {
        Intrinsics.h(modelClass, "modelClass");
        return p1.c.b(this.f9651a, modelClass, null, 2, null);
    }
}
