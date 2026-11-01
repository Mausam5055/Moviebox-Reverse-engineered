package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;

/* JADX INFO: loaded from: classes7.dex */
final class j extends e.a {

    private static final class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type f74448a;

        /* JADX INFO: renamed from: retrofit2.j$a$a, reason: collision with other inner class name */
        private class C0906a implements f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final CompletableFuture f74449a;

            public C0906a(CompletableFuture completableFuture) {
                this.f74449a = completableFuture;
            }

            @Override // retrofit2.f
            public void a(d dVar, Throwable th2) {
                this.f74449a.completeExceptionally(th2);
            }

            @Override // retrofit2.f
            public void b(d dVar, j0 j0Var) {
                if (j0Var.e()) {
                    this.f74449a.complete(j0Var.a());
                } else {
                    this.f74449a.completeExceptionally(new HttpException(j0Var));
                }
            }
        }

        a(Type type) {
            this.f74448a = type;
        }

        @Override // retrofit2.e
        public Type a() {
            return this.f74448a;
        }

        @Override // retrofit2.e
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public CompletableFuture b(d dVar) {
            b bVar = new b(dVar);
            dVar.h(new C0906a(bVar));
            return bVar;
        }
    }

    private static final class b extends CompletableFuture {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f74451a;

        b(d dVar) {
            this.f74451a = dVar;
        }

        @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
        public boolean cancel(boolean z10) {
            if (z10) {
                this.f74451a.cancel();
            }
            return super.cancel(z10);
        }
    }

    private static final class c implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Type f74452a;

        private class a implements f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final CompletableFuture f74453a;

            public a(CompletableFuture completableFuture) {
                this.f74453a = completableFuture;
            }

            @Override // retrofit2.f
            public void a(d dVar, Throwable th2) {
                this.f74453a.completeExceptionally(th2);
            }

            @Override // retrofit2.f
            public void b(d dVar, j0 j0Var) {
                this.f74453a.complete(j0Var);
            }
        }

        c(Type type) {
            this.f74452a = type;
        }

        @Override // retrofit2.e
        public Type a() {
            return this.f74452a;
        }

        @Override // retrofit2.e
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public CompletableFuture b(d dVar) {
            b bVar = new b(dVar);
            dVar.h(new a(bVar));
            return bVar;
        }
    }

    j() {
    }

    @Override // retrofit2.e.a
    public e a(Type type, Annotation[] annotationArr, k0 k0Var) {
        if (e.a.c(type) != g.a()) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
        }
        Type typeB = e.a.b(0, (ParameterizedType) type);
        if (e.a.c(typeB) != j0.class) {
            return new a(typeB);
        }
        if (typeB instanceof ParameterizedType) {
            return new c(e.a.b(0, (ParameterizedType) typeB));
        }
        throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
    }
}
