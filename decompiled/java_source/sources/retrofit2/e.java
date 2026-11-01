package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes7.dex */
public interface e {

    public static abstract class a {
        protected static Type b(int i11, ParameterizedType parameterizedType) {
            return o0.g(i11, parameterizedType);
        }

        protected static Class c(Type type) {
            return o0.h(type);
        }

        public abstract e a(Type type, Annotation[] annotationArr, k0 k0Var);
    }

    Type a();

    Object b(d dVar);
}
