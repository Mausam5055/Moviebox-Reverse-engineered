package retrofit2;

import java.util.Objects;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes7.dex */
public final class j0<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Response f74455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f74456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ResponseBody f74457c;

    private j0(Response response, Object obj, ResponseBody responseBody) {
        this.f74455a = response;
        this.f74456b = obj;
        this.f74457c = responseBody;
    }

    public static j0 c(ResponseBody responseBody, Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        return new j0(response, null, responseBody);
    }

    public static j0 g(Object obj, Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new j0(response, obj, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public Object a() {
        return this.f74456b;
    }

    public int b() {
        return this.f74455a.code();
    }

    public ResponseBody d() {
        return this.f74457c;
    }

    public boolean e() {
        return this.f74455a.isSuccessful();
    }

    public String f() {
        return this.f74455a.message();
    }

    public String toString() {
        return this.f74455a.toString();
    }
}
