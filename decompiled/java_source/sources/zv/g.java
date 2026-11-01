package zv;

import com.transsion.upgradesdk.net.j;
import com.transsion.upgradesdk.net.k;
import com.transsion.upgradesdk.net.l;
import com.transsion.upgradesdk.net.m;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import retrofit2.k0;

/* JADX INFO: loaded from: classes7.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f79483a = LazyKt.b(k.f56601a);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f79484b = LazyKt.b(j.f56600a);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final OkHttpClient f79485c = new OkHttpClient.Builder().addInterceptor(new a()).build();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Lazy f79486d = LazyKt.b(m.f56603a);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy f79487e = LazyKt.b(l.f56602a);

    public static k0 a() {
        Object value = f79487e.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (k0) value;
    }

    public static k0 b() {
        Object value = f79486d.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (k0) value;
    }
}
