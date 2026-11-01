package com.cloud.tmc.integration.net;

import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u0007H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/integration/net/ProgressRequestBody;", "Lokhttp3/RequestBody;", "requestBody", "progressListener", "Lcom/cloud/tmc/integration/net/ProgressRequestListener;", "(Lokhttp3/RequestBody;Lcom/cloud/tmc/integration/net/ProgressRequestListener;)V", "bufferedSink", "Lokio/BufferedSink;", "contentLength", "", "contentType", "Lokhttp3/MediaType;", "sink", "Lokio/Sink;", "writeTo", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProgressRequestBody extends RequestBody {
    private BufferedSink bufferedSink;
    private final ProgressRequestListener progressListener;
    private final RequestBody requestBody;

    public ProgressRequestBody(RequestBody requestBody, ProgressRequestListener progressRequestListener) {
        this.requestBody = requestBody;
        this.progressListener = progressRequestListener;
    }

    private final Sink sink(Sink sink) {
        return new ForwardingSink(sink) { // from class: com.cloud.tmc.integration.net.ProgressRequestBody.sink.1
            private long bytesWritten;
            private long contentLength;

            public final long getBytesWritten() {
                return this.bytesWritten;
            }

            public final long getContentLength() {
                return this.contentLength;
            }

            public final void setBytesWritten(long j11) {
                this.bytesWritten = j11;
            }

            public final void setContentLength(long j11) {
                this.contentLength = j11;
            }

            @Override // okio.ForwardingSink, okio.Sink
            public void write(Buffer source, long byteCount) throws IOException {
                Intrinsics.h(source, "source");
                try {
                    super.write(source, byteCount);
                    if (this.contentLength == 0) {
                        this.contentLength = this.contentLength();
                    }
                    this.bytesWritten += byteCount;
                    ProgressRequestListener progressRequestListener = this.progressListener;
                    if (progressRequestListener != null) {
                        long j11 = this.bytesWritten;
                        long j12 = this.contentLength;
                        progressRequestListener.onRequestProgress(j11, j12, j11 == j12);
                    }
                } catch (Throwable unused) {
                    throw new IOException();
                }
            }
        };
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        RequestBody requestBody = this.requestBody;
        if (requestBody != null) {
            return requestBody.contentLength();
        }
        return 0L;
    }

    @Override // okhttp3.RequestBody
    /* JADX INFO: renamed from: contentType */
    public MediaType getContentType() {
        RequestBody requestBody = this.requestBody;
        if (requestBody != null) {
            return requestBody.getContentType();
        }
        return null;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink sink) throws IOException {
        Intrinsics.h(sink, "sink");
        if (this.bufferedSink == null) {
            this.bufferedSink = Okio.buffer(sink(sink));
        }
        BufferedSink bufferedSink = this.bufferedSink;
        if (bufferedSink != null) {
            RequestBody requestBody = this.requestBody;
            if (requestBody != null) {
                requestBody.writeTo(bufferedSink);
            }
            bufferedSink.flush();
        }
    }
}
