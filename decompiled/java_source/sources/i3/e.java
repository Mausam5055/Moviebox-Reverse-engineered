package i3;

import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f64896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f64897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f64898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f64899d;

    public e(List list, long j11, long j12) {
        this.f64896a = ImmutableList.copyOf((Collection) list);
        this.f64897b = j11;
        this.f64898c = j12;
        long j13 = C.TIME_UNSET;
        if (j11 != C.TIME_UNSET && j12 != C.TIME_UNSET) {
            j13 = j11 + j12;
        }
        this.f64899d = j13;
    }
}
