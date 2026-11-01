package com.google.net.cronet.okhttptransport;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.common.base.s;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.m;
import com.google.common.util.concurrent.r;
import com.google.common.util.concurrent.t;
import com.google.common.util.concurrent.z;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.Okio;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

/* JADX INFO: loaded from: classes4.dex */
final class e implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f32776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f32777b;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f32778a;

        static {
            int[] iArr = new int[UploadBodyDataBroker.ReadResult.values().length];
            f32778a = iArr;
            try {
                iArr[UploadBodyDataBroker.ReadResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32778a[UploadBodyDataBroker.ReadResult.END_OF_BODY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static final class b implements d {

        class a extends UploadDataProvider {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private volatile boolean f32779a = false;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Buffer f32780b = new Buffer();

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ long f32781c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ RequestBody f32782d;

            a(long j11, RequestBody requestBody) {
                this.f32781c = j11;
                this.f32782d = requestBody;
            }

            @Override // org.chromium.net.UploadDataProvider
            public long getLength() {
                return this.f32781c;
            }

            @Override // org.chromium.net.UploadDataProvider
            public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                if (!this.f32779a) {
                    this.f32782d.writeTo(this.f32780b);
                    this.f32780b.flush();
                    this.f32779a = true;
                    long length = getLength();
                    long size = this.f32780b.size();
                    if (size != length) {
                        throw new IOException("Expected " + length + " bytes but got " + size);
                    }
                }
                if (this.f32780b.read(byteBuffer) == -1) {
                    throw new IllegalStateException("The source has been exhausted but we expected more!");
                }
                uploadDataSink.onReadSucceeded(false);
            }

            @Override // org.chromium.net.UploadDataProvider
            public void rewind(UploadDataSink uploadDataSink) {
                uploadDataSink.onRewindError(new UnsupportedOperationException());
            }
        }

        b() {
        }

        @Override // com.google.net.cronet.okhttptransport.d
        public UploadDataProvider a(RequestBody requestBody, int i11) throws IOException {
            long jContentLength = requestBody.contentLength();
            if (jContentLength >= 0 && jContentLength <= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
                return new a(jContentLength, requestBody);
            }
            throw new IOException("Expected definite length less than 1048576but got " + jContentLength);
        }
    }

    static final class c implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ExecutorService f32784a;

        /* JADX INFO: Access modifiers changed from: private */
        static class a extends UploadDataProvider {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final RequestBody f32785a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final UploadBodyDataBroker f32786b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final t f32787c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final long f32788d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private r f32789e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private long f32790f;

            /* JADX INFO: renamed from: com.google.net.cronet.okhttptransport.e$c$a$a, reason: collision with other inner class name */
            class C0452a implements m {
                C0452a() {
                }

                @Override // com.google.common.util.concurrent.m
                public void onFailure(Throwable th2) {
                    a.this.f32786b.i(th2);
                }

                @Override // com.google.common.util.concurrent.m
                public void onSuccess(Object obj) {
                }
            }

            private a(RequestBody requestBody, UploadBodyDataBroker uploadBodyDataBroker, ExecutorService executorService, long j11) {
                this.f32785a = requestBody;
                this.f32786b = uploadBodyDataBroker;
                if (executorService instanceof t) {
                    this.f32787c = (t) executorService;
                } else {
                    this.f32787c = MoreExecutors.b(executorService);
                }
                this.f32788d = j11 == 0 ? 2147483647L : j11;
            }

            /* synthetic */ a(RequestBody requestBody, UploadBodyDataBroker uploadBodyDataBroker, ExecutorService executorService, long j11, a aVar) {
                this(requestBody, uploadBodyDataBroker, executorService, j11);
            }

            private void h() {
                if (this.f32789e == null) {
                    r rVarSubmit = this.f32787c.submit(new Callable() { // from class: com.google.net.cronet.okhttptransport.f
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f32792a.k();
                        }
                    });
                    this.f32789e = rVarSubmit;
                    Futures.a(rVarSubmit, new C0452a(), MoreExecutors.a());
                }
            }

            private void i(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                int iPosition = byteBuffer.position();
                byteBuffer.position(0);
                if (!m(byteBuffer).equals(UploadBodyDataBroker.ReadResult.END_OF_BODY)) {
                    throw l(getLength(), this.f32790f);
                }
                s.a(byteBuffer.position() == 0, "END_OF_BODY reads shouldn't write anything to the buffer", new Object[0]);
                byteBuffer.position(iPosition);
                uploadDataSink.onReadSucceeded(false);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ Void k() throws IOException {
                BufferedSink bufferedSinkBuffer = Okio.buffer(this.f32786b);
                this.f32785a.writeTo(bufferedSinkBuffer);
                bufferedSinkBuffer.flush();
                this.f32786b.h();
                return null;
            }

            private static IOException l(long j11, long j12) {
                return new IOException("Expected " + j11 + " bytes but got at least " + j12);
            }

            private UploadBodyDataBroker.ReadResult m(ByteBuffer byteBuffer) {
                int iPosition = byteBuffer.position();
                UploadBodyDataBroker.ReadResult readResult = (UploadBodyDataBroker.ReadResult) z.b(this.f32786b.b(byteBuffer), this.f32788d, TimeUnit.MILLISECONDS);
                this.f32790f += (long) (byteBuffer.position() - iPosition);
                return readResult;
            }

            private void n(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                try {
                    UploadBodyDataBroker.ReadResult readResultM = m(byteBuffer);
                    if (this.f32790f > getLength()) {
                        throw l(getLength(), this.f32790f);
                    }
                    if (this.f32790f >= getLength()) {
                        i(uploadDataSink, byteBuffer);
                        return;
                    }
                    int i11 = a.f32778a[readResultM.ordinal()];
                    if (i11 == 1) {
                        uploadDataSink.onReadSucceeded(false);
                    } else if (i11 == 2) {
                        throw new IOException("The source has been exhausted but we expected more data!");
                    }
                } catch (ExecutionException e11) {
                    e = e11;
                    this.f32789e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e));
                } catch (TimeoutException e12) {
                    e = e12;
                    this.f32789e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e));
                }
            }

            private void o(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
                try {
                    uploadDataSink.onReadSucceeded(m(byteBuffer).equals(UploadBodyDataBroker.ReadResult.END_OF_BODY));
                } catch (ExecutionException | TimeoutException e11) {
                    this.f32789e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e11));
                }
            }

            @Override // org.chromium.net.UploadDataProvider
            public long getLength() {
                return this.f32785a.contentLength();
            }

            @Override // org.chromium.net.UploadDataProvider
            public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                h();
                if (getLength() == -1) {
                    o(uploadDataSink, byteBuffer);
                } else {
                    n(uploadDataSink, byteBuffer);
                }
            }

            @Override // org.chromium.net.UploadDataProvider
            public void rewind(UploadDataSink uploadDataSink) {
                uploadDataSink.onRewindError(new UnsupportedOperationException("Rewind is not supported!"));
            }
        }

        c(ExecutorService executorService) {
            this.f32784a = executorService;
        }

        @Override // com.google.net.cronet.okhttptransport.d
        public UploadDataProvider a(RequestBody requestBody, int i11) {
            return new a(requestBody, new UploadBodyDataBroker(), this.f32784a, i11, null);
        }
    }

    e(b bVar, c cVar) {
        this.f32776a = bVar;
        this.f32777b = cVar;
    }

    static e b(ExecutorService executorService) {
        return new e(new b(), new c(executorService));
    }

    @Override // com.google.net.cronet.okhttptransport.d
    public UploadDataProvider a(RequestBody requestBody, int i11) throws IOException {
        long jContentLength = requestBody.contentLength();
        return (jContentLength == -1 || jContentLength > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) ? this.f32777b.a(requestBody, i11) : this.f32776a.a(requestBody, i11);
    }
}
