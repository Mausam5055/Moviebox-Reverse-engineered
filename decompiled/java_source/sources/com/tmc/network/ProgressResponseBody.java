package com.tmc.network;

import com.cloud.tmc.integration.event.EventConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\u0007H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/tmc/network/ProgressResponseBody;", "Lokhttp3/ResponseBody;", "responseBody", "mListener", "Lcom/tmc/network/ProgressListener;", "(Lokhttp3/ResponseBody;Lcom/tmc/network/ProgressListener;)V", "bufferedSource", "Lokio/BufferedSource;", "contentLength", "", "contentType", "Lokhttp3/MediaType;", "mySource", "Lokio/Source;", EventConstants.KEY_SOURCE, "network_release"}, k = 1, mv = {1, 5, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProgressResponseBody extends ResponseBody {
    private BufferedSource bufferedSource;
    private final ProgressListener mListener;
    private final ResponseBody responseBody;

    public ProgressResponseBody(ResponseBody responseBody, ProgressListener progressListener) {
        Intrinsics.h(responseBody, "responseBody");
        this.responseBody = responseBody;
        this.mListener = progressListener;
    }

    private final Source mySource(Source source) {
        return new ForwardingSource(source) { // from class: com.tmc.network.ProgressResponseBody.mySource.1
            final /* synthetic */ Source $source;
            private long totalBytesRead;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(source);
                this.$source = source;
            }

            public final long getTotalBytesRead() {
                return this.totalBytesRead;
            }

            @Override // okio.ForwardingSource, okio.Source
            public long read(Buffer sink, long byteCount) throws IOException {
                Intrinsics.h(sink, "sink");
                long j11 = super.read(sink, byteCount);
                this.totalBytesRead += j11 != -1 ? j11 : 0L;
                ProgressListener progressListener = ProgressResponseBody.this.mListener;
                if (progressListener != null) {
                    progressListener.onProgress(this.totalBytesRead, ProgressResponseBody.this.getContentLength(), this.totalBytesRead == ProgressResponseBody.this.getContentLength());
                }
                return j11;
            }

            public final void setTotalBytesRead(long j11) {
                this.totalBytesRead = j11;
            }
        };
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentLength */
    public long getContentLength() {
        return this.responseBody.getContentLength();
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: contentType */
    public MediaType get$contentType() {
        return this.responseBody.get$contentType();
    }

    @Override // okhttp3.ResponseBody
    /* JADX INFO: renamed from: source */
    public BufferedSource getBodySource() {
        if (this.bufferedSource == null) {
            this.bufferedSource = Okio.buffer(mySource(this.responseBody.getBodySource()));
        }
        BufferedSource bufferedSource = this.bufferedSource;
        if (bufferedSource != null) {
            return bufferedSource;
        }
        throw new NullPointerException("null cannot be cast to non-null type okio.BufferedSource");
    }
}
