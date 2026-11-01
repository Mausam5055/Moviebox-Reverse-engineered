package retrofit2;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.IOException;
import java.util.Objects;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes7.dex */
final class w implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i0 f74512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f74513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f74514c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Call.Factory f74515d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k f74516e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f74517f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Call f74518g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Throwable f74519h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f74520i;

    class a implements Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f74521a;

        a(f fVar) {
            this.f74521a = fVar;
        }

        private void a(Throwable th2) {
            try {
                this.f74521a.a(w.this, th2);
            } catch (Throwable th3) {
                o0.t(th3);
                th3.printStackTrace();
            }
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            a(iOException);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            try {
                try {
                    this.f74521a.b(w.this, w.this.d(response));
                } catch (Throwable th2) {
                    o0.t(th2);
                    th2.printStackTrace();
                }
            } catch (Throwable th3) {
                o0.t(th3);
                a(th3);
            }
        }
    }

    static final class b extends ResponseBody {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ResponseBody f74523a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final BufferedSource f74524b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        IOException f74525c;

        class a extends ForwardingSource {
            a(Source source) {
                super(source);
            }

            @Override // okio.ForwardingSource, okio.Source
            public long read(Buffer buffer, long j11) throws IOException {
                try {
                    return super.read(buffer, j11);
                } catch (IOException e11) {
                    b.this.f74525c = e11;
                    throw e11;
                }
            }
        }

        b(ResponseBody responseBody) {
            this.f74523a = responseBody;
            this.f74524b = Okio.buffer(new a(responseBody.getSource()));
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f74523a.close();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentLength */
        public long getContentLength() {
            return this.f74523a.getContentLength();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentType */
        public MediaType get$contentType() {
            return this.f74523a.get$contentType();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: source */
        public BufferedSource getSource() {
            return this.f74524b;
        }

        void throwIfCaught() throws IOException {
            IOException iOException = this.f74525c;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    static final class c extends ResponseBody {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final MediaType f74527a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f74528b;

        c(MediaType mediaType, long j11) {
            this.f74527a = mediaType;
            this.f74528b = j11;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentLength */
        public long getContentLength() {
            return this.f74528b;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentType */
        public MediaType get$contentType() {
            return this.f74527a;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: source */
        public BufferedSource getSource() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    w(i0 i0Var, Object obj, Object[] objArr, Call.Factory factory, k kVar) {
        this.f74512a = i0Var;
        this.f74513b = obj;
        this.f74514c = objArr;
        this.f74515d = factory;
        this.f74516e = kVar;
    }

    private Call b() {
        Call callNewCall = this.f74515d.newCall(this.f74512a.a(this.f74513b, this.f74514c));
        if (callNewCall != null) {
            return callNewCall;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    private Call c() throws IOException {
        Call call = this.f74518g;
        if (call != null) {
            return call;
        }
        Throwable th2 = this.f74519h;
        if (th2 != null) {
            if (th2 instanceof IOException) {
                throw ((IOException) th2);
            }
            if (th2 instanceof RuntimeException) {
                throw ((RuntimeException) th2);
            }
            throw ((Error) th2);
        }
        try {
            Call callB = b();
            this.f74518g = callB;
            return callB;
        } catch (IOException | Error | RuntimeException e11) {
            o0.t(e11);
            this.f74519h = e11;
            throw e11;
        }
    }

    @Override // retrofit2.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public w clone() {
        return new w(this.f74512a, this.f74513b, this.f74514c, this.f74515d, this.f74516e);
    }

    @Override // retrofit2.d
    public void cancel() {
        Call call;
        this.f74517f = true;
        synchronized (this) {
            call = this.f74518g;
        }
        if (call != null) {
            call.cancel();
        }
    }

    j0 d(Response response) throws IOException {
        ResponseBody responseBodyBody = response.body();
        Response responseBuild = response.newBuilder().body(new c(responseBodyBody.get$contentType(), responseBodyBody.getContentLength())).build();
        int iCode = responseBuild.code();
        if (iCode < 200 || iCode >= 300) {
            try {
                return j0.c(o0.a(responseBodyBody), responseBuild);
            } finally {
                responseBodyBody.close();
            }
        }
        if (iCode == 204 || iCode == 205) {
            responseBodyBody.close();
            return j0.g(null, responseBuild);
        }
        b bVar = new b(responseBodyBody);
        try {
            return j0.g(this.f74516e.convert(bVar), responseBuild);
        } catch (RuntimeException e11) {
            bVar.throwIfCaught();
            throw e11;
        }
    }

    @Override // retrofit2.d
    public j0 execute() {
        Call callC;
        synchronized (this) {
            if (this.f74520i) {
                throw new IllegalStateException("Already executed.");
            }
            this.f74520i = true;
            callC = c();
        }
        if (this.f74517f) {
            callC.cancel();
        }
        return d(FirebasePerfOkHttpClient.execute(callC));
    }

    @Override // retrofit2.d
    public void h(f fVar) {
        Call call;
        Throwable th2;
        Objects.requireNonNull(fVar, "callback == null");
        synchronized (this) {
            try {
                if (this.f74520i) {
                    throw new IllegalStateException("Already executed.");
                }
                this.f74520i = true;
                call = this.f74518g;
                th2 = this.f74519h;
                if (call == null && th2 == null) {
                    try {
                        Call callB = b();
                        this.f74518g = callB;
                        call = callB;
                    } catch (Throwable th3) {
                        th2 = th3;
                        o0.t(th2);
                        this.f74519h = th2;
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        if (th2 != null) {
            fVar.a(this, th2);
            return;
        }
        if (this.f74517f) {
            call.cancel();
        }
        FirebasePerfOkHttpClient.enqueue(call, new a(fVar));
    }

    @Override // retrofit2.d
    public boolean isCanceled() {
        boolean z10 = true;
        if (this.f74517f) {
            return true;
        }
        synchronized (this) {
            try {
                Call call = this.f74518g;
                if (call == null || !call.getCanceled()) {
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    @Override // retrofit2.d
    public synchronized Request request() {
        try {
        } catch (IOException e11) {
            throw new RuntimeException("Unable to create request.", e11);
        }
        return c().request();
    }
}
