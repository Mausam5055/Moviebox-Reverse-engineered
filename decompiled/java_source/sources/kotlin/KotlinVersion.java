package kotlin;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@SinceKotlin
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0007\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J'\u0010\b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0016\u001a\u0004\b\u0017\u0010\u0013R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0018\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0013R\u0014\u0010\u001c\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0016¨\u0006\u001f"}, d2 = {"Lkotlin/KotlinVersion;", "", "", "major", "minor", "patch", "<init>", "(III)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(III)I", "", "toString", "()Ljava/lang/String;", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "a", "(Lkotlin/KotlinVersion;)I", "I", "getMajor", "getMinor", "c", "getPatch", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "version", "e", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class KotlinVersion implements Comparable<KotlinVersion> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final KotlinVersion f67033f = c.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final int major;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final int minor;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int patch;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int version;

    public KotlinVersion(int i11, int i12, int i13) {
        this.major = i11;
        this.minor = i12;
        this.patch = i13;
        this.version = b(i11, i12, i13);
    }

    private final int b(int major, int minor, int patch) {
        if (major >= 0 && major < 256 && minor >= 0 && minor < 256 && patch >= 0 && patch < 256) {
            return (major << 16) + (minor << 8) + patch;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + major + '.' + minor + '.' + patch).toString());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(KotlinVersion other) {
        Intrinsics.h(other, "other");
        return this.version - other.version;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        KotlinVersion kotlinVersion = other instanceof KotlinVersion ? (KotlinVersion) other : null;
        return kotlinVersion != null && this.version == kotlinVersion.version;
    }

    /* JADX INFO: renamed from: hashCode, reason: from getter */
    public int getVersion() {
        return this.version;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.major);
        sb2.append('.');
        sb2.append(this.minor);
        sb2.append('.');
        sb2.append(this.patch);
        return sb2.toString();
    }
}
