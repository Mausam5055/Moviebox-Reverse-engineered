package kotlin.ranges;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.WasExperimental;
import kotlin.internal.UProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes7.dex */
@SinceKotlin
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0017\u0018\u0000 #2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001$B!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0086\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001d\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010 \u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001a\u001a\u0004\b\u001f\u0010\u001cR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b!\u0010\u001a\u001a\u0004\b\"\u0010\u001c¨\u0006%"}, d2 = {"Lkotlin/ranges/ULongProgression;", "", "Lkotlin/ULong;", "start", "endInclusive", "", "step", "<init>", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "iterator", "()Ljava/util/Iterator;", "", "isEmpty", "()Z", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "a", "J", "f", "()J", "first", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "h", "last", "c", "getStep", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@WasExperimental
public class ULongProgression implements Iterable<ULong>, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final long first;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final long last;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final long step;

    private ULongProgression(long j11, long j12, long j13) {
        if (j13 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (j13 == Long.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
        this.first = j11;
        this.last = UProgressionUtilKt.c(j11, j12, j13);
        this.step = j13;
    }

    public /* synthetic */ ULongProgression(long j11, long j12, long j13, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, j13);
    }

    public boolean equals(Object other) {
        if (other instanceof ULongProgression) {
            if (!isEmpty() || !((ULongProgression) other).isEmpty()) {
                ULongProgression uLongProgression = (ULongProgression) other;
                if (this.first != uLongProgression.first || this.last != uLongProgression.last || this.step != uLongProgression.step) {
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
        long j11 = this.first;
        int iB = ((int) ULong.b(j11 ^ ULong.b(j11 >>> 32))) * 31;
        long j12 = this.last;
        int iB2 = (iB + ((int) ULong.b(j12 ^ ULong.b(j12 >>> 32)))) * 31;
        long j13 = this.step;
        return iB2 + ((int) ((j13 >>> 32) ^ j13));
    }

    public boolean isEmpty() {
        long j11 = this.step;
        long j12 = this.first;
        long j13 = this.last;
        if (j11 > 0) {
            if (Long.compare(j12 ^ Long.MIN_VALUE, j13 ^ Long.MIN_VALUE) <= 0) {
                return false;
            }
        } else if (Long.compare(j12 ^ Long.MIN_VALUE, j13 ^ Long.MIN_VALUE) >= 0) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator<ULong> iterator() {
        return new g(this.first, this.last, this.step, null);
    }

    public String toString() {
        StringBuilder sb2;
        long j11;
        if (this.step > 0) {
            sb2 = new StringBuilder();
            sb2.append((Object) ULong.g(this.first));
            sb2.append("..");
            sb2.append((Object) ULong.g(this.last));
            sb2.append(" step ");
            j11 = this.step;
        } else {
            sb2 = new StringBuilder();
            sb2.append((Object) ULong.g(this.first));
            sb2.append(" downTo ");
            sb2.append((Object) ULong.g(this.last));
            sb2.append(" step ");
            j11 = -this.step;
        }
        sb2.append(j11);
        return sb2.toString();
    }
}
