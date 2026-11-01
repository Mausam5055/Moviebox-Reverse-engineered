package l8;

import android.util.Log;
import java.net.HttpURLConnection;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f68750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f68751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map f68752c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f68753d;

    public e(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            this.f68750a = httpURLConnection.getResponseCode();
            this.f68751b = httpURLConnection.getURL().toString();
            this.f68752c = httpURLConnection.getHeaderFields();
        } catch (Throwable th2) {
            Log.e("HttpResponse", "Failed to createHttpResponse", th2);
        }
        this.f68753d = bArr;
    }

    public int a() {
        return this.f68750a;
    }
}
