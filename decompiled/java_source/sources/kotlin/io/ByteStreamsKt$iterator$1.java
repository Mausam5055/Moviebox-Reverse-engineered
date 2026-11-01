package kotlin.io;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.ByteIterator;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\"\u0010\t\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0007\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001a\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0007\"\u0004\b\u0019\u0010\u0015¨\u0006\u001b"}, d2 = {"kotlin/io/ByteStreamsKt$iterator$1", "Lkotlin/collections/ByteIterator;", "", "a", "()V", "", "hasNext", "()Z", "", "nextByte", "()B", "", "I", "getNextByte", "()I", "setNextByte", "(I)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "getNextPrepared", "setNextPrepared", "(Z)V", "nextPrepared", "c", "getFinished", "setFinished", "finished", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ByteStreamsKt$iterator$1 extends ByteIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int nextByte;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private boolean nextPrepared;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean finished;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ BufferedInputStream f67203d;

    private final void a() throws IOException {
        if (this.nextPrepared || this.finished) {
            return;
        }
        int i11 = this.f67203d.read();
        this.nextByte = i11;
        this.nextPrepared = true;
        this.finished = i11 == -1;
    }

    @Override // java.util.Iterator
    public boolean hasNext() throws IOException {
        a();
        return !this.finished;
    }

    @Override // kotlin.collections.ByteIterator
    public byte nextByte() throws IOException {
        a();
        if (this.finished) {
            throw new NoSuchElementException("Input stream is over.");
        }
        byte b11 = (byte) this.nextByte;
        this.nextPrepared = false;
        return b11;
    }
}
