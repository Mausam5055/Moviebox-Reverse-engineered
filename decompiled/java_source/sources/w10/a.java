package w10;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import retrofit2.k;
import retrofit2.k0;

/* JADX INFO: loaded from: classes7.dex */
public final class a extends k.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f77545a;

    private a(Gson gson) {
        this.f77545a = gson;
    }

    public static a f() {
        return g(new Gson());
    }

    public static a g(Gson gson) {
        if (gson != null) {
            return new a(gson);
        }
        throw new NullPointerException("gson == null");
    }

    @Override // retrofit2.k.a
    public k c(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, k0 k0Var) {
        return new b(this.f77545a, this.f77545a.getAdapter(TypeToken.get(type)));
    }

    @Override // retrofit2.k.a
    public k d(Type type, Annotation[] annotationArr, k0 k0Var) {
        return new c(this.f77545a, this.f77545a.getAdapter(TypeToken.get(type)));
    }
}
