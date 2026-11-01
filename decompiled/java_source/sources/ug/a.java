package ug;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import retrofit2.k;
import retrofit2.k0;

/* JADX INFO: loaded from: classes3.dex */
public class a extends k.a {
    public static a f() {
        return new a();
    }

    private String g(Annotation[] annotationArr) {
        if (annotationArr != null && annotationArr.length != 0) {
            for (Annotation annotation : annotationArr) {
                if (annotation instanceof rg.a) {
                    return "1311";
                }
            }
        }
        return "no_code";
    }

    @Override // retrofit2.k.a
    public k c(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, k0 k0Var) {
        return new b();
    }

    @Override // retrofit2.k.a
    public k d(Type type, Annotation[] annotationArr, k0 k0Var) {
        return new c(type, g(annotationArr));
    }
}
