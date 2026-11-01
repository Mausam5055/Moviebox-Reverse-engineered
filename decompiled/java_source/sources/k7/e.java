package k7;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.internal.bind.TypeAdapters;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Gson f66676a;

    public static synchronized Gson a() {
        try {
            if (f66676a == null) {
                f66676a = b().create();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f66676a;
    }

    public static GsonBuilder b() {
        return new GsonBuilder().registerTypeAdapterFactory(TypeAdapters.newFactory(String.class, new h())).registerTypeAdapterFactory(TypeAdapters.newFactory(Boolean.TYPE, Boolean.class, new b())).registerTypeAdapterFactory(TypeAdapters.newFactory(Integer.TYPE, Integer.class, new f())).registerTypeAdapterFactory(TypeAdapters.newFactory(Long.TYPE, Long.class, new g())).registerTypeAdapterFactory(TypeAdapters.newFactory(Float.TYPE, Float.class, new d())).registerTypeAdapterFactory(TypeAdapters.newFactory(Double.TYPE, Double.class, new c())).registerTypeAdapterFactory(TypeAdapters.newFactory(BigDecimal.class, new a()));
    }
}
