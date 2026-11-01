package androidx.work;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class WorkInfo {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f15384m = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final UUID f15385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final State f15386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f15387c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f15388d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f f15389e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f15390f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f15391g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final d f15392h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f15393i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b f15394j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f15395k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f15396l;

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\fj\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\r"}, d2 = {"Landroidx/work/WorkInfo$State;", "", "<init>", "(Ljava/lang/String;I)V", "ENQUEUED", "RUNNING", "SUCCEEDED", "FAILED", "BLOCKED", "CANCELLED", "isFinished", "", "()Z", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum State {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<State> getEntries() {
            return $ENTRIES;
        }

        public final boolean isFinished() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f15397a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f15398b;

        public b(long j11, long j12) {
            this.f15397a = j11;
            this.f15398b = j12;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Intrinsics.c(b.class, obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return bVar.f15397a == this.f15397a && bVar.f15398b == this.f15398b;
        }

        public int hashCode() {
            return (androidx.collection.s.a(this.f15397a) * 31) + androidx.collection.s.a(this.f15398b);
        }

        public String toString() {
            return "PeriodicityInfo{repeatIntervalMillis=" + this.f15397a + ", flexIntervalMillis=" + this.f15398b + '}';
        }
    }

    public WorkInfo(UUID id2, State state, Set tags, f outputData, f progress, int i11, int i12, d constraints, long j11, b bVar, long j12, int i13) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(state, "state");
        Intrinsics.h(tags, "tags");
        Intrinsics.h(outputData, "outputData");
        Intrinsics.h(progress, "progress");
        Intrinsics.h(constraints, "constraints");
        this.f15385a = id2;
        this.f15386b = state;
        this.f15387c = tags;
        this.f15388d = outputData;
        this.f15389e = progress;
        this.f15390f = i11;
        this.f15391g = i12;
        this.f15392h = constraints;
        this.f15393i = j11;
        this.f15394j = bVar;
        this.f15395k = j12;
        this.f15396l = i13;
    }

    public final State a() {
        return this.f15386b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(WorkInfo.class, obj.getClass())) {
            return false;
        }
        WorkInfo workInfo = (WorkInfo) obj;
        if (this.f15390f == workInfo.f15390f && this.f15391g == workInfo.f15391g && Intrinsics.c(this.f15385a, workInfo.f15385a) && this.f15386b == workInfo.f15386b && Intrinsics.c(this.f15388d, workInfo.f15388d) && Intrinsics.c(this.f15392h, workInfo.f15392h) && this.f15393i == workInfo.f15393i && Intrinsics.c(this.f15394j, workInfo.f15394j) && this.f15395k == workInfo.f15395k && this.f15396l == workInfo.f15396l && Intrinsics.c(this.f15387c, workInfo.f15387c)) {
            return Intrinsics.c(this.f15389e, workInfo.f15389e);
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((this.f15385a.hashCode() * 31) + this.f15386b.hashCode()) * 31) + this.f15388d.hashCode()) * 31) + this.f15387c.hashCode()) * 31) + this.f15389e.hashCode()) * 31) + this.f15390f) * 31) + this.f15391g) * 31) + this.f15392h.hashCode()) * 31) + androidx.collection.s.a(this.f15393i)) * 31;
        b bVar = this.f15394j;
        return ((((iHashCode + (bVar != null ? bVar.hashCode() : 0)) * 31) + androidx.collection.s.a(this.f15395k)) * 31) + this.f15396l;
    }

    public String toString() {
        return "WorkInfo{id='" + this.f15385a + "', state=" + this.f15386b + ", outputData=" + this.f15388d + ", tags=" + this.f15387c + ", progress=" + this.f15389e + ", runAttemptCount=" + this.f15390f + ", generation=" + this.f15391g + ", constraints=" + this.f15392h + ", initialDelayMillis=" + this.f15393i + ", periodicityInfo=" + this.f15394j + ", nextScheduleTimeMillis=" + this.f15395k + "}, stopReason=" + this.f15396l;
    }
}
