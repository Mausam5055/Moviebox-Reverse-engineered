package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.Unit;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.http.Streaming;

/* JADX INFO: loaded from: classes7.dex */
final class b extends k.a {

    static final class a implements k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final a f74386a = new a();

        a() {
        }

        @Override // retrofit2.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResponseBody convert(ResponseBody responseBody) {
            try {
                return o0.a(responseBody);
            } finally {
                responseBody.close();
            }
        }
    }

    /* JADX INFO: renamed from: retrofit2.b$b, reason: collision with other inner class name */
    static final class C0905b implements k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0905b f74387a = new C0905b();

        C0905b() {
        }

        @Override // retrofit2.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RequestBody convert(RequestBody requestBody) {
            return requestBody;
        }
    }

    static final class c implements k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f74388a = new c();

        c() {
        }

        @Override // retrofit2.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResponseBody convert(ResponseBody responseBody) {
            return responseBody;
        }
    }

    static final class d implements k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f74389a = new d();

        d() {
        }

        @Override // retrofit2.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String convert(Object obj) {
            return obj.toString();
        }
    }

    static final class e implements k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f74390a = new e();

        e() {
        }

        @Override // retrofit2.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unit convert(ResponseBody responseBody) {
            responseBody.close();
            return Unit.f67061a;
        }
    }

    static final class f implements k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final f f74391a = new f();

        f() {
        }

        @Override // retrofit2.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void convert(ResponseBody responseBody) {
            responseBody.close();
            return null;
        }
    }

    b() {
    }

    @Override // retrofit2.k.a
    public k c(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, k0 k0Var) {
        if (RequestBody.class.isAssignableFrom(o0.h(type))) {
            return C0905b.f74387a;
        }
        return null;
    }

    @Override // retrofit2.k.a
    public k d(Type type, Annotation[] annotationArr, k0 k0Var) {
        if (type == ResponseBody.class) {
            return o0.l(annotationArr, Streaming.class) ? c.f74388a : a.f74386a;
        }
        if (type == Void.class) {
            return f.f74391a;
        }
        if (o0.m(type)) {
            return e.f74390a;
        }
        return null;
    }
}
