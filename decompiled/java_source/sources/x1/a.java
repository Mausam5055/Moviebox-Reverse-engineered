package x1;

import android.net.Uri;
import androidx.media3.common.u;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.HttpDataSource;
import com.google.common.base.n;
import com.google.common.util.concurrent.y;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import w1.h;
import w1.i;

/* JADX INFO: loaded from: classes2.dex */
public class a extends w1.a implements HttpDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Call.Factory f78009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HttpDataSource.b f78010f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f78011g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CacheControl f78012h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final HttpDataSource.b f78013i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final n f78014j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private h f78015k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Response f78016l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private InputStream f78017m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f78018n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f78019o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f78020p;

    /* JADX INFO: renamed from: x1.a$a, reason: collision with other inner class name */
    class C0959a implements Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ y f78021a;

        C0959a(y yVar) {
            this.f78021a = yVar;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            this.f78021a.setException(iOException);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            this.f78021a.set(response);
        }
    }

    public static final class b implements HttpDataSource.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HttpDataSource.b f78023a = new HttpDataSource.b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Call.Factory f78024b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f78025c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private w1.n f78026d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CacheControl f78027e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private n f78028f;

        public b(Call.Factory factory) {
            this.f78024b = factory;
        }

        @Override // androidx.media3.datasource.a.InterfaceC0091a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public a createDataSource() {
            a aVar = new a(this.f78024b, this.f78025c, this.f78027e, this.f78023a, this.f78028f, null);
            w1.n nVar = this.f78026d;
            if (nVar != null) {
                aVar.c(nVar);
            }
            return aVar;
        }

        @Override // androidx.media3.datasource.HttpDataSource.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final b a(Map map) {
            this.f78023a.a(map);
            return this;
        }
    }

    static {
        u.a("media3.datasource.okhttp");
    }

    private a(Call.Factory factory, String str, CacheControl cacheControl, HttpDataSource.b bVar, n nVar) {
        super(true);
        this.f78009e = (Call.Factory) androidx.media3.common.util.a.e(factory);
        this.f78011g = str;
        this.f78012h = cacheControl;
        this.f78013i = bVar;
        this.f78014j = nVar;
        this.f78010f = new HttpDataSource.b();
    }

    /* synthetic */ a(Call.Factory factory, String str, CacheControl cacheControl, HttpDataSource.b bVar, n nVar, C0959a c0959a) {
        this(factory, str, cacheControl, bVar, nVar);
    }

    private void h() {
        Response response = this.f78016l;
        if (response != null) {
            ((ResponseBody) androidx.media3.common.util.a.e(response.body())).close();
        }
        this.f78017m = null;
    }

    private Response i(Call call) throws IOException {
        y yVarS = y.s();
        FirebasePerfOkHttpClient.enqueue(call, new C0959a(yVarS));
        try {
            return (Response) yVarS.get();
        } catch (InterruptedException unused) {
            call.cancel();
            throw new InterruptedIOException();
        } catch (ExecutionException e11) {
            throw new IOException(e11);
        }
    }

    private Request j(h hVar) throws HttpDataSource.HttpDataSourceException {
        long j11 = hVar.f77517g;
        long j12 = hVar.f77518h;
        HttpUrl httpUrl = HttpUrl.parse(hVar.f77511a.toString());
        if (httpUrl == null) {
            throw new HttpDataSource.HttpDataSourceException("Malformed URL", hVar, 1004, 1);
        }
        Request.Builder builderUrl = new Request.Builder().url(httpUrl);
        CacheControl cacheControl = this.f78012h;
        if (cacheControl != null) {
            builderUrl.cacheControl(cacheControl);
        }
        HashMap map = new HashMap();
        HttpDataSource.b bVar = this.f78013i;
        if (bVar != null) {
            map.putAll(bVar.b());
        }
        map.putAll(this.f78010f.b());
        map.putAll(hVar.f77515e);
        for (Map.Entry entry : map.entrySet()) {
            builderUrl.header((String) entry.getKey(), (String) entry.getValue());
        }
        String strA = i.a(j11, j12);
        if (strA != null) {
            builderUrl.addHeader("Range", strA);
        }
        String str = this.f78011g;
        if (str != null) {
            builderUrl.addHeader("User-Agent", str);
        }
        if (!hVar.d(1)) {
            builderUrl.addHeader("Accept-Encoding", "identity");
        }
        byte[] bArr = hVar.f77514d;
        builderUrl.method(hVar.b(), bArr != null ? RequestBody.create(bArr) : hVar.f77513c == 2 ? RequestBody.create(a1.f10355f) : null);
        return builderUrl.build();
    }

    private int k(byte[] bArr, int i11, int i12) throws IOException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.f78019o;
        if (j11 != -1) {
            long j12 = j11 - this.f78020p;
            if (j12 == 0) {
                return -1;
            }
            i12 = (int) Math.min(i12, j12);
        }
        int i13 = ((InputStream) a1.i(this.f78017m)).read(bArr, i11, i12);
        if (i13 == -1) {
            return -1;
        }
        this.f78020p += (long) i13;
        d(i13);
        return i13;
    }

    private void l(long j11, h hVar) throws HttpDataSource.HttpDataSourceException {
        if (j11 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j11 > 0) {
            try {
                int i11 = ((InputStream) a1.i(this.f78017m)).read(bArr, 0, (int) Math.min(j11, 4096));
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                if (i11 == -1) {
                    throw new HttpDataSource.HttpDataSourceException(hVar, 2008, 1);
                }
                j11 -= (long) i11;
                d(i11);
            } catch (IOException e11) {
                if (!(e11 instanceof HttpDataSource.HttpDataSourceException)) {
                    throw new HttpDataSource.HttpDataSourceException(hVar, 2000, 1);
                }
                throw ((HttpDataSource.HttpDataSourceException) e11);
            }
        }
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) throws HttpDataSource.HttpDataSourceException {
        byte[] bArrB;
        this.f78015k = hVar;
        long j11 = 0;
        this.f78020p = 0L;
        this.f78019o = 0L;
        f(hVar);
        try {
            Response responseI = i(this.f78009e.newCall(j(hVar)));
            this.f78016l = responseI;
            ResponseBody responseBody = (ResponseBody) androidx.media3.common.util.a.e(responseI.body());
            this.f78017m = responseBody.byteStream();
            int iCode = responseI.code();
            if (!responseI.isSuccessful()) {
                if (iCode == 416) {
                    if (hVar.f77517g == i.c(responseI.headers().get("Content-Range"))) {
                        this.f78018n = true;
                        g(hVar);
                        long j12 = hVar.f77518h;
                        if (j12 != -1) {
                            return j12;
                        }
                        return 0L;
                    }
                }
                try {
                    bArrB = com.google.common.io.a.b((InputStream) androidx.media3.common.util.a.e(this.f78017m));
                } catch (IOException unused) {
                    bArrB = a1.f10355f;
                }
                byte[] bArr = bArrB;
                Map<String, List<String>> multimap = responseI.headers().toMultimap();
                h();
                throw new HttpDataSource.InvalidResponseCodeException(iCode, responseI.message(), iCode == 416 ? new DataSourceException(2008) : null, multimap, hVar, bArr);
            }
            MediaType mediaType = responseBody.get$contentType();
            String mediaType2 = mediaType != null ? mediaType.getMediaType() : "";
            n nVar = this.f78014j;
            if (nVar != null && !nVar.apply(mediaType2)) {
                h();
                throw new HttpDataSource.InvalidContentTypeException(mediaType2, hVar);
            }
            if (iCode == 200) {
                long j13 = hVar.f77517g;
                if (j13 != 0) {
                    j11 = j13;
                }
            }
            long j14 = hVar.f77518h;
            if (j14 != -1) {
                this.f78019o = j14;
            } else {
                long contentLength = responseBody.getContentLength();
                this.f78019o = contentLength != -1 ? contentLength - j11 : -1L;
            }
            this.f78018n = true;
            g(hVar);
            try {
                l(j11, hVar);
                return this.f78019o;
            } catch (HttpDataSource.HttpDataSourceException e11) {
                h();
                throw e11;
            }
        } catch (IOException e12) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e12, hVar, 1);
        }
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        if (this.f78018n) {
            this.f78018n = false;
            e();
            h();
        }
        this.f78016l = null;
        this.f78015k = null;
    }

    @Override // w1.a, androidx.media3.datasource.a
    public Map getResponseHeaders() {
        Response response = this.f78016l;
        return response == null ? Collections.emptyMap() : response.headers().toMultimap();
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        Response response = this.f78016l;
        if (response != null) {
            return Uri.parse(response.request().url().getUrl());
        }
        h hVar = this.f78015k;
        if (hVar != null) {
            return hVar.f77511a;
        }
        return null;
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) throws HttpDataSource.HttpDataSourceException {
        try {
            return k(bArr, i11, i12);
        } catch (IOException e11) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e11, (h) a1.i(this.f78015k), 2);
        }
    }
}
