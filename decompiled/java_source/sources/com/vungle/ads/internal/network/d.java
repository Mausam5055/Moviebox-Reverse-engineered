package com.vungle.ads.internal.network;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.vungle.ads.internal.util.o;
import java.io.IOException;
import java.util.Objects;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;

/* JADX INFO: loaded from: classes7.dex */
public final class d implements com.vungle.ads.internal.network.a {
    public static final a Companion = new a(null);
    private static final String TAG = "OkHttpCall";
    private volatile boolean canceled;
    private final Call rawCall;
    private final com.vungle.ads.internal.network.converters.a responseConverter;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void throwIfFatal(Throwable th2) throws Throwable {
            if ((th2 instanceof VirtualMachineError) || (th2 instanceof ThreadDeath) || (th2 instanceof LinkageError)) {
                throw th2;
            }
        }
    }

    public static final class b extends ResponseBody {
        private final ResponseBody delegate;
        private final BufferedSource delegateSource;
        private IOException thrownException;

        public static final class a extends ForwardingSource {
            a(BufferedSource bufferedSource) {
                super(bufferedSource);
            }

            @Override // okio.ForwardingSource, okio.Source
            public long read(Buffer sink, long j11) throws IOException {
                Intrinsics.h(sink, "sink");
                try {
                    return super.read(sink, j11);
                } catch (IOException e11) {
                    b.this.setThrownException(e11);
                    throw e11;
                }
            }
        }

        public b(ResponseBody delegate) {
            Intrinsics.h(delegate, "delegate");
            this.delegate = delegate;
            this.delegateSource = Okio.buffer(new a(delegate.getSource()));
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentLength */
        public long getContentLength() {
            return this.delegate.getContentLength();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentType */
        public MediaType get$contentType() {
            return this.delegate.get$contentType();
        }

        public final IOException getThrownException() {
            return this.thrownException;
        }

        public final void setThrownException(IOException iOException) {
            this.thrownException = iOException;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: source */
        public BufferedSource getSource() {
            return this.delegateSource;
        }

        public final void throwIfCaught() throws IOException {
            IOException iOException = this.thrownException;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    public static final class c extends ResponseBody {
        private final long contentLength;
        private final MediaType contentType;

        public c(MediaType mediaType, long j11) {
            this.contentType = mediaType;
            this.contentLength = j11;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentLength */
        public long getContentLength() {
            return this.contentLength;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentType */
        public MediaType get$contentType() {
            return this.contentType;
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: source */
        public BufferedSource getSource() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    /* JADX INFO: renamed from: com.vungle.ads.internal.network.d$d, reason: collision with other inner class name */
    public static final class C0714d implements Callback {
        final /* synthetic */ com.vungle.ads.internal.network.b $callback;

        C0714d(com.vungle.ads.internal.network.b bVar) {
            this.$callback = bVar;
        }

        private final void callFailure(Throwable th2) throws Throwable {
            try {
                this.$callback.onFailure(d.this, th2);
            } catch (Throwable th3) {
                d.Companion.throwIfFatal(th3);
                o.Companion.e(d.TAG, "Cannot pass failure to callback", th3);
            }
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException e11) throws Throwable {
            Intrinsics.h(call, "call");
            Intrinsics.h(e11, "e");
            callFailure(e11);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws Throwable {
            Intrinsics.h(call, "call");
            Intrinsics.h(response, "response");
            try {
                try {
                    this.$callback.onResponse(d.this, d.this.parseResponse(response));
                } catch (Throwable th2) {
                    d.Companion.throwIfFatal(th2);
                    o.Companion.e(d.TAG, "Cannot pass response to callback", th2);
                }
            } catch (Throwable th3) {
                d.Companion.throwIfFatal(th3);
                callFailure(th3);
            }
        }
    }

    public d(Call rawCall, com.vungle.ads.internal.network.converters.a responseConverter) {
        Intrinsics.h(rawCall, "rawCall");
        Intrinsics.h(responseConverter, "responseConverter");
        this.rawCall = rawCall;
        this.responseConverter = responseConverter;
    }

    private final ResponseBody buffer(ResponseBody responseBody) throws IOException {
        Buffer buffer = new Buffer();
        responseBody.getSource().readAll(buffer);
        return ResponseBody.INSTANCE.create(buffer, responseBody.get$contentType(), responseBody.getContentLength());
    }

    @Override // com.vungle.ads.internal.network.a
    public void cancel() {
        Call call;
        this.canceled = true;
        synchronized (this) {
            call = this.rawCall;
            Unit unit = Unit.f67061a;
        }
        call.cancel();
    }

    @Override // com.vungle.ads.internal.network.a
    public void enqueue(com.vungle.ads.internal.network.b callback) {
        Call call;
        Intrinsics.h(callback, "callback");
        Objects.requireNonNull(callback, "callback == null");
        synchronized (this) {
            call = this.rawCall;
            Unit unit = Unit.f67061a;
        }
        if (this.canceled) {
            call.cancel();
        }
        FirebasePerfOkHttpClient.enqueue(call, new C0714d(callback));
    }

    @Override // com.vungle.ads.internal.network.a
    public e execute() throws IOException {
        Call call;
        synchronized (this) {
            call = this.rawCall;
            Unit unit = Unit.f67061a;
        }
        if (this.canceled) {
            call.cancel();
        }
        return parseResponse(FirebasePerfOkHttpClient.execute(call));
    }

    @Override // com.vungle.ads.internal.network.a
    public boolean isCanceled() {
        boolean canceled;
        if (this.canceled) {
            return true;
        }
        synchronized (this) {
            canceled = this.rawCall.getCanceled();
        }
        return canceled;
    }

    public final e parseResponse(Response rawResp) throws IOException {
        Intrinsics.h(rawResp, "rawResp");
        ResponseBody responseBodyBody = rawResp.body();
        if (responseBodyBody == null) {
            return null;
        }
        Response responseBuild = rawResp.newBuilder().body(new c(responseBodyBody.get$contentType(), responseBodyBody.getContentLength())).build();
        int iCode = responseBuild.code();
        if (iCode < 200 || iCode >= 300) {
            try {
                e eVarError = e.Companion.error(buffer(responseBodyBody), responseBuild);
                CloseableKt.a(responseBodyBody, null);
                return eVarError;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(responseBodyBody, th2);
                    throw th3;
                }
            }
        }
        if (iCode == 204 || iCode == 205) {
            responseBodyBody.close();
            return e.Companion.success(null, responseBuild);
        }
        b bVar = new b(responseBodyBody);
        try {
            return e.Companion.success(this.responseConverter.convert(bVar), responseBuild);
        } catch (Throwable th4) {
            bVar.throwIfCaught();
            throw th4;
        }
    }
}
