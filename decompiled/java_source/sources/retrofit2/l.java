package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import java.util.concurrent.Executor;
import okhttp3.Request;

/* JADX INFO: loaded from: classes7.dex */
final class l extends e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f74476a;

    class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Type f74477a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Executor f74478b;

        a(Type type, Executor executor) {
            this.f74477a = type;
            this.f74478b = executor;
        }

        @Override // retrofit2.e
        public Type a() {
            return this.f74477a;
        }

        @Override // retrofit2.e
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public d b(d dVar) {
            Executor executor = this.f74478b;
            return executor == null ? dVar : new b(executor, dVar);
        }
    }

    static final class b implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Executor f74480a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final d f74481b;

        class a implements f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ f f74482a;

            a(f fVar) {
                this.f74482a = fVar;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void e(f fVar, Throwable th2) {
                fVar.a(b.this, th2);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void f(f fVar, j0 j0Var) {
                if (b.this.f74481b.isCanceled()) {
                    fVar.a(b.this, new IOException("Canceled"));
                } else {
                    fVar.b(b.this, j0Var);
                }
            }

            @Override // retrofit2.f
            public void a(d dVar, final Throwable th2) {
                Executor executor = b.this.f74480a;
                final f fVar = this.f74482a;
                executor.execute(new Runnable() { // from class: retrofit2.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f74487a.e(fVar, th2);
                    }
                });
            }

            @Override // retrofit2.f
            public void b(d dVar, final j0 j0Var) {
                Executor executor = b.this.f74480a;
                final f fVar = this.f74482a;
                executor.execute(new Runnable() { // from class: retrofit2.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f74484a.f(fVar, j0Var);
                    }
                });
            }
        }

        b(Executor executor, d dVar) {
            this.f74480a = executor;
            this.f74481b = dVar;
        }

        @Override // retrofit2.d
        public void cancel() {
            this.f74481b.cancel();
        }

        @Override // retrofit2.d
        public d clone() {
            return new b(this.f74480a, this.f74481b.clone());
        }

        @Override // retrofit2.d
        public j0 execute() {
            return this.f74481b.execute();
        }

        @Override // retrofit2.d
        public void h(f fVar) {
            Objects.requireNonNull(fVar, "callback == null");
            this.f74481b.h(new a(fVar));
        }

        @Override // retrofit2.d
        public boolean isCanceled() {
            return this.f74481b.isCanceled();
        }

        @Override // retrofit2.d
        public Request request() {
            return this.f74481b.request();
        }
    }

    l(Executor executor) {
        this.f74476a = executor;
    }

    @Override // retrofit2.e.a
    public e a(Type type, Annotation[] annotationArr, k0 k0Var) {
        if (e.a.c(type) != d.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            return new a(o0.g(0, (ParameterizedType) type), o0.l(annotationArr, m0.class) ? null : this.f74476a);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}
