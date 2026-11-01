package ni;

import com.tn.lib.net.interceptor.HttpLoggingInterceptor;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f70475a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HttpLoggingInterceptor f70476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f70477c;

    static {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, null);
        httpLoggingInterceptor.b(HttpLoggingInterceptor.Level.BODY);
        f70476b = httpLoggingInterceptor;
        f70477c = LazyKt.b(new Function0() { // from class: ni.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.b();
            }
        });
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OkHttpClient b() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return builder.connectTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).readTimeout(30L, timeUnit).cache(null).addInterceptor(f70476b).build();
    }

    private final OkHttpClient c() {
        return (OkHttpClient) f70477c.getValue();
    }

    public final OkHttpClient d() {
        return c();
    }
}
