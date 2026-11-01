package kotlin.io.path;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.nio.file.FileVisitOption;
import java.nio.file.LinkOption;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\f\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000eR\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013¨\u0006\u0017"}, d2 = {"Lkotlin/io/path/LinkFollowing;", "", "<init>", "()V", "", "followLinks", "", "Ljava/nio/file/LinkOption;", "a", "(Z)[Ljava/nio/file/LinkOption;", "", "Ljava/nio/file/FileVisitOption;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Z)Ljava/util/Set;", "[Ljava/nio/file/LinkOption;", "nofollowLinkOption", "c", "followLinkOption", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/Set;", "nofollowVisitOption", "e", "followVisitOption", "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LinkFollowing {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinkFollowing f67250a = new LinkFollowing();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private static final LinkOption[] nofollowLinkOption = {LinkOption.NOFOLLOW_LINKS};

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private static final LinkOption[] followLinkOption = new LinkOption[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private static final Set nofollowVisitOption = SetsKt.f();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private static final Set followVisitOption = SetsKt.d(FileVisitOption.FOLLOW_LINKS);

    private LinkFollowing() {
    }

    public final LinkOption[] a(boolean followLinks) {
        return followLinks ? followLinkOption : nofollowLinkOption;
    }

    public final Set b(boolean followLinks) {
        return followLinks ? followVisitOption : nofollowVisitOption;
    }
}
