package kotlin.ranges;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.collections.LongIterator;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0016\u0018\u0000 \"2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001#B!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u0017\u0010\u001c\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\u001f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u0019\u001a\u0004\b\u001e\u0010\u001bR\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b \u0010\u0019\u001a\u0004\b!\u0010\u001b¨\u0006$"}, d2 = {"Lkotlin/ranges/LongProgression;", "", "", "start", "endInclusive", "step", "<init>", "(JJJ)V", "Lkotlin/collections/LongIterator;", "l", "()Lkotlin/collections/LongIterator;", "", "isEmpty", "()Z", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "a", "J", "f", "()J", "first", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "h", "last", "c", "getStep", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class LongProgression implements Iterable<Long>, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final long first;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final long last;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final long step;

    public LongProgression(long j11, long j12, long j13) {
        if (j13 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (j13 == Long.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
        this.first = j11;
        this.last = ProgressionUtilKt.d(j11, j12, j13);
        this.step = j13;
    }

    public boolean equals(Object other) {
        if (other instanceof LongProgression) {
            if (!isEmpty() || !((LongProgression) other).isEmpty()) {
                LongProgression longProgression = (LongProgression) other;
                if (this.first != longProgression.first || this.last != longProgression.last || this.step != longProgression.step) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final long getFirst() {
        return this.first;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final long getLast() {
        return this.last;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j11 = 31;
        long j12 = this.first;
        long j13 = this.last;
        long j14 = j11 * (((j12 ^ (j12 >>> 32)) * j11) + (j13 ^ (j13 >>> 32)));
        long j15 = this.step;
        return (int) (j14 + (j15 ^ (j15 >>> 32)));
    }

    public boolean isEmpty() {
        long j11 = this.step;
        long j12 = this.first;
        long j13 = this.last;
        if (j11 > 0) {
            if (j12 <= j13) {
                return false;
            }
        } else if (j12 >= j13) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public LongIterator iterator() {
        return new LongProgressionIterator(this.first, this.last, this.step);
    }

    public String toString() {
        StringBuilder sb2;
        long j11;
        if (this.step > 0) {
            sb2 = new StringBuilder();
            sb2.append(this.first);
            sb2.append("..");
            sb2.append(this.last);
            sb2.append(" step ");
            j11 = this.step;
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.first);
            sb2.append(" downTo ");
            sb2.append(this.last);
            sb2.append(" step ");
            j11 = -this.step;
        }
        sb2.append(j11);
        return sb2.toString();
    }
}
