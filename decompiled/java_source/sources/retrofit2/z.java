package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes7.dex */
final class z extends k.a {

    static final class a implements k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final k f74529a;

        a(k kVar) {
            this.f74529a = kVar;
        }

        @Override // retrofit2.k
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Optional convert(ResponseBody responseBody) {
            return Optional.ofNullable(this.f74529a.convert(responseBody));
        }
    }

    z() {
    }

    @Override // retrofit2.k.a
    public k d(Type type, Annotation[] annotationArr, k0 k0Var) {
        if (k.a.b(type) != x.a()) {
            return null;
        }
        return new a(k0Var.h(k.a.a(0, (ParameterizedType) type), annotationArr));
    }
}
