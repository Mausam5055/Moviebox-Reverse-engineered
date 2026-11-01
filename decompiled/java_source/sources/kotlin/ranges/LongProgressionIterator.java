package kotlin.ranges;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.LongIterator;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\r\u001a\u0004\b\u000e\u0010\fR\u0014\u0010\u0010\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\rR\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\r¨\u0006\u0015"}, d2 = {"Lkotlin/ranges/LongProgressionIterator;", "Lkotlin/collections/LongIterator;", "", "first", "last", "step", "<init>", "(JJJ)V", "", "hasNext", "()Z", "a", "()J", "J", "getStep", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "finalElement", "c", "Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "next", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LongProgressionIterator extends LongIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final long step;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final long finalElement;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean hasNext;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private long next;

    public LongProgressionIterator(long j11, long j12, long j13) {
        this.step = j13;
        this.finalElement = j12;
        boolean z10 = false;
        if (j13 <= 0 ? j11 >= j12 : j11 <= j12) {
            z10 = true;
        }
        this.hasNext = z10;
        this.next = z10 ? j11 : j12;
    }

    @Override // kotlin.collections.LongIterator
    public long a() {
        long j11 = this.next;
        if (j11 != this.finalElement) {
            this.next = this.step + j11;
        } else {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            this.hasNext = false;
        }
        return j11;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }
}
