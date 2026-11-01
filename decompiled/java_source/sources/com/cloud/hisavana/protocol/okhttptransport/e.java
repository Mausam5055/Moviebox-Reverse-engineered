package com.cloud.hisavana.protocol.okhttptransport;

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

/* JADX INFO: loaded from: classes3.dex */
final class e implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f21467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f21468b;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f21469a;

        static {
            int[] iArr = new int[UploadBodyDataBroker.ReadResult.values().length];
            f21469a = iArr;
            try {
                iArr[UploadBodyDataBroker.ReadResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21469a[UploadBodyDataBroker.ReadResult.END_OF_BODY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static final class b implements d {

        class a extends UploadDataProvider {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private volatile boolean f21470a = false;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Buffer f21471b = new Buffer();

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ long f21472c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ RequestBody f21473d;

            a(long j11, RequestBody requestBody) {
                this.f21472c = j11;
                this.f21473d = requestBody;
            }

            @Override // org.chromium.net.UploadDataProvider
            public long getLength() {
                return this.f21472c;
            }

            @Override // org.chromium.net.UploadDataProvider
            public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                if (!this.f21470a) {
                    this.f21473d.writeTo(this.f21471b);
                    this.f21471b.flush();
                    this.f21470a = true;
                    long length = getLength();
                    long size = this.f21471b.size();
                    if (size != length) {
                        throw new IOException("Expected " + length + " bytes but got " + size);
                    }
                }
                if (this.f21471b.read(byteBuffer) == -1) {
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

        @Override // com.cloud.hisavana.protocol.okhttptransport.d
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
        private final ExecutorService f21475a;

        /* JADX INFO: Access modifiers changed from: private */
        static class a extends UploadDataProvider {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final RequestBody f21476a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final UploadBodyDataBroker f21477b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final t f21478c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final long f21479d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private r f21480e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private long f21481f;

            /* JADX INFO: renamed from: com.cloud.hisavana.protocol.okhttptransport.e$c$a$a, reason: collision with other inner class name */
            class C0295a implements m {
                C0295a() {
                }

                @Override // com.google.common.util.concurrent.m
                public void onFailure(Throwable th2) {
                    a.this.f21477b.i(th2);
                }

                @Override // com.google.common.util.concurrent.m
                public void onSuccess(Object obj) {
                }
            }

            private a(RequestBody requestBody, UploadBodyDataBroker uploadBodyDataBroker, ExecutorService executorService, long j11) {
                this.f21476a = requestBody;
                this.f21477b = uploadBodyDataBroker;
                if (executorService instanceof t) {
                    this.f21478c = (t) executorService;
                } else {
                    this.f21478c = MoreExecutors.b(executorService);
                }
                this.f21479d = j11 == 0 ? 2147483647L : j11;
            }

            /* synthetic */ a(RequestBody requestBody, UploadBodyDataBroker uploadBodyDataBroker, ExecutorService executorService, long j11, a aVar) {
                this(requestBody, uploadBodyDataBroker, executorService, j11);
            }

            private void h() {
                if (this.f21480e == null) {
                    r rVarSubmit = this.f21478c.submit(new Callable() { // from class: com.cloud.hisavana.protocol.okhttptransport.f
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f21483a.k();
                        }
                    });
                    this.f21480e = rVarSubmit;
                    Futures.a(rVarSubmit, new C0295a(), MoreExecutors.a());
                }
            }

            private void i(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                int iPosition = byteBuffer.position();
                byteBuffer.position(0);
                if (!m(byteBuffer).equals(UploadBodyDataBroker.ReadResult.END_OF_BODY)) {
                    throw l(getLength(), this.f21481f);
                }
                s.a(byteBuffer.position() == 0, "END_OF_BODY reads shouldn't write anything to the buffer", new Object[0]);
                byteBuffer.position(iPosition);
                uploadDataSink.onReadSucceeded(false);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ Void k() throws IOException {
                BufferedSink bufferedSinkBuffer = Okio.buffer(this.f21477b);
                this.f21476a.writeTo(bufferedSinkBuffer);
                bufferedSinkBuffer.flush();
                this.f21477b.h();
                return null;
            }

            private static IOException l(long j11, long j12) {
                return new IOException("Expected " + j11 + " bytes but got at least " + j12);
            }

            private UploadBodyDataBroker.ReadResult m(ByteBuffer byteBuffer) {
                int iPosition = byteBuffer.position();
                UploadBodyDataBroker.ReadResult readResult = (UploadBodyDataBroker.ReadResult) z.b(this.f21477b.b(byteBuffer), this.f21479d, TimeUnit.MILLISECONDS);
                this.f21481f += (long) (byteBuffer.position() - iPosition);
                return readResult;
            }

            private void n(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
                try {
                    UploadBodyDataBroker.ReadResult readResultM = m(byteBuffer);
                    if (this.f21481f > getLength()) {
                        throw l(getLength(), this.f21481f);
                    }
                    if (this.f21481f >= getLength()) {
                        i(uploadDataSink, byteBuffer);
                        return;
                    }
                    int i11 = a.f21469a[readResultM.ordinal()];
                    if (i11 == 1) {
                        uploadDataSink.onReadSucceeded(false);
                    } else if (i11 == 2) {
                        throw new IOException("The source has been exhausted but we expected more data!");
                    }
                } catch (ExecutionException e11) {
                    e = e11;
                    this.f21480e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e));
                } catch (TimeoutException e12) {
                    e = e12;
                    this.f21480e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e));
                }
            }

            private void o(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
                try {
                    uploadDataSink.onReadSucceeded(m(byteBuffer).equals(UploadBodyDataBroker.ReadResult.END_OF_BODY));
                } catch (ExecutionException | TimeoutException e11) {
                    this.f21480e.cancel(true);
                    uploadDataSink.onReadError(new IOException(e11));
                }
            }

            @Override // org.chromium.net.UploadDataProvider
            public long getLength() {
                return this.f21476a.contentLength();
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
            this.f21475a = executorService;
        }

        @Override // com.cloud.hisavana.protocol.okhttptransport.d
        public UploadDataProvider a(RequestBody requestBody, int i11) {
            return new a(requestBody, new UploadBodyDataBroker(), this.f21475a, i11, null);
        }
    }

    e(b bVar, c cVar) {
        this.f21467a = bVar;
        this.f21468b = cVar;
    }

    static e b(ExecutorService executorService) {
        return new e(new b(), new c(executorService));
    }

    @Override // com.cloud.hisavana.protocol.okhttptransport.d
    public UploadDataProvider a(RequestBody requestBody, int i11) throws IOException {
        long jContentLength = requestBody.contentLength();
        return (jContentLength == -1 || jContentLength > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) ? this.f21468b.a(requestBody, i11) : this.f21467a.a(requestBody, i11);
    }
}
