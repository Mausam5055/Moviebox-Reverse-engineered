package androidx.work.impl.model;

import androidx.work.BackoffPolicy;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.OverwritingInputMerger;
import androidx.work.WorkInfo;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes2.dex */
public final class j0 {
    private static final String A;
    public static final l.a B;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final a f15763z = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WorkInfo.State f15765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f15766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f15767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.work.f f15768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.work.f f15769f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f15770g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f15771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f15772i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public androidx.work.d f15773j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f15774k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public BackoffPolicy f15775l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f15776m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f15777n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f15778o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f15779p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f15780q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public OutOfQuotaPolicy f15781r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f15782s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f15783t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f15784u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f15785v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int f15786w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f15787x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Boolean f15788y;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a(boolean z10, int i11, BackoffPolicy backoffPolicy, long j11, long j12, int i12, boolean z11, long j13, long j14, long j15, long j16) {
            Intrinsics.h(backoffPolicy, "backoffPolicy");
            if (j16 != Long.MAX_VALUE && z11) {
                return i12 == 0 ? j16 : RangesKt.g(j16, 900000 + j12);
            }
            if (z10) {
                return j12 + RangesKt.j(backoffPolicy == BackoffPolicy.LINEAR ? ((long) i11) * j11 : (long) Math.scalb(j11, i11 - 1), 18000000L);
            }
            if (!z11) {
                if (j12 == -1) {
                    return Long.MAX_VALUE;
                }
                return j12 + j13;
            }
            long j17 = i12 == 0 ? j12 + j13 : j12 + j15;
            if (j14 != j15 && i12 == 0) {
                j17 += j15 - j14;
            }
            return j17;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f15789a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public WorkInfo.State f15790b;

        public b(String id2, WorkInfo.State state) {
            Intrinsics.h(id2, "id");
            Intrinsics.h(state, "state");
            this.f15789a = id2;
            this.f15790b = state;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f15789a, bVar.f15789a) && this.f15790b == bVar.f15790b;
        }

        public int hashCode() {
            return (this.f15789a.hashCode() * 31) + this.f15790b.hashCode();
        }

        public String toString() {
            return "IdAndState(id=" + this.f15789a + ", state=" + this.f15790b + ')';
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f15791a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WorkInfo.State f15792b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final androidx.work.f f15793c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f15794d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long f15795e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f15796f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final androidx.work.d f15797g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f15798h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private BackoffPolicy f15799i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f15800j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private long f15801k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f15802l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final int f15803m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final long f15804n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f15805o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final List f15806p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final List f15807q;

        public c(String id2, WorkInfo.State state, androidx.work.f output, long j11, long j12, long j13, androidx.work.d constraints, int i11, BackoffPolicy backoffPolicy, long j14, long j15, int i12, int i13, long j16, int i14, List tags, List progress) {
            Intrinsics.h(id2, "id");
            Intrinsics.h(state, "state");
            Intrinsics.h(output, "output");
            Intrinsics.h(constraints, "constraints");
            Intrinsics.h(backoffPolicy, "backoffPolicy");
            Intrinsics.h(tags, "tags");
            Intrinsics.h(progress, "progress");
            this.f15791a = id2;
            this.f15792b = state;
            this.f15793c = output;
            this.f15794d = j11;
            this.f15795e = j12;
            this.f15796f = j13;
            this.f15797g = constraints;
            this.f15798h = i11;
            this.f15799i = backoffPolicy;
            this.f15800j = j14;
            this.f15801k = j15;
            this.f15802l = i12;
            this.f15803m = i13;
            this.f15804n = j16;
            this.f15805o = i14;
            this.f15806p = tags;
            this.f15807q = progress;
        }

        private final long a() {
            if (this.f15792b == WorkInfo.State.ENQUEUED) {
                return j0.f15763z.a(c(), this.f15798h, this.f15799i, this.f15800j, this.f15801k, this.f15802l, d(), this.f15794d, this.f15796f, this.f15795e, this.f15804n);
            }
            return Long.MAX_VALUE;
        }

        private final WorkInfo.b b() {
            long j11 = this.f15795e;
            if (j11 != 0) {
                return new WorkInfo.b(j11, this.f15796f);
            }
            return null;
        }

        public final boolean c() {
            return this.f15792b == WorkInfo.State.ENQUEUED && this.f15798h > 0;
        }

        public final boolean d() {
            return this.f15795e != 0;
        }

        public final WorkInfo e() {
            androidx.work.f fVar = !this.f15807q.isEmpty() ? (androidx.work.f) this.f15807q.get(0) : androidx.work.f.f15484c;
            UUID uuidFromString = UUID.fromString(this.f15791a);
            Intrinsics.g(uuidFromString, "fromString(...)");
            return new WorkInfo(uuidFromString, this.f15792b, new HashSet(this.f15806p), this.f15793c, fVar, this.f15798h, this.f15803m, this.f15797g, this.f15794d, b(), a(), this.f15805o);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.c(this.f15791a, cVar.f15791a) && this.f15792b == cVar.f15792b && Intrinsics.c(this.f15793c, cVar.f15793c) && this.f15794d == cVar.f15794d && this.f15795e == cVar.f15795e && this.f15796f == cVar.f15796f && Intrinsics.c(this.f15797g, cVar.f15797g) && this.f15798h == cVar.f15798h && this.f15799i == cVar.f15799i && this.f15800j == cVar.f15800j && this.f15801k == cVar.f15801k && this.f15802l == cVar.f15802l && this.f15803m == cVar.f15803m && this.f15804n == cVar.f15804n && this.f15805o == cVar.f15805o && Intrinsics.c(this.f15806p, cVar.f15806p) && Intrinsics.c(this.f15807q, cVar.f15807q);
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((((((this.f15791a.hashCode() * 31) + this.f15792b.hashCode()) * 31) + this.f15793c.hashCode()) * 31) + androidx.collection.s.a(this.f15794d)) * 31) + androidx.collection.s.a(this.f15795e)) * 31) + androidx.collection.s.a(this.f15796f)) * 31) + this.f15797g.hashCode()) * 31) + this.f15798h) * 31) + this.f15799i.hashCode()) * 31) + androidx.collection.s.a(this.f15800j)) * 31) + androidx.collection.s.a(this.f15801k)) * 31) + this.f15802l) * 31) + this.f15803m) * 31) + androidx.collection.s.a(this.f15804n)) * 31) + this.f15805o) * 31) + this.f15806p.hashCode()) * 31) + this.f15807q.hashCode();
        }

        public String toString() {
            return "WorkInfoPojo(id=" + this.f15791a + ", state=" + this.f15792b + ", output=" + this.f15793c + ", initialDelay=" + this.f15794d + ", intervalDuration=" + this.f15795e + ", flexDuration=" + this.f15796f + ", constraints=" + this.f15797g + ", runAttemptCount=" + this.f15798h + ", backoffPolicy=" + this.f15799i + ", backoffDelayDuration=" + this.f15800j + ", lastEnqueueTime=" + this.f15801k + ", periodCount=" + this.f15802l + ", generation=" + this.f15803m + ", nextScheduleTimeOverride=" + this.f15804n + ", stopReason=" + this.f15805o + ", tags=" + this.f15806p + ", progress=" + this.f15807q + ')';
        }
    }

    static {
        String strI = androidx.work.t.i("WorkSpec");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        A = strI;
        B = new l.a() { // from class: androidx.work.impl.model.i0
            @Override // l.a
            public final Object apply(Object obj) {
                return j0.b((List) obj);
            }
        };
    }

    public j0(String id2, WorkInfo.State state, String workerClassName, String inputMergerClassName, androidx.work.f input, androidx.work.f output, long j11, long j12, long j13, androidx.work.d constraints, int i11, BackoffPolicy backoffPolicy, long j14, long j15, long j16, long j17, boolean z10, OutOfQuotaPolicy outOfQuotaPolicy, int i12, int i13, long j18, int i14, int i15, String str, Boolean bool) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(state, "state");
        Intrinsics.h(workerClassName, "workerClassName");
        Intrinsics.h(inputMergerClassName, "inputMergerClassName");
        Intrinsics.h(input, "input");
        Intrinsics.h(output, "output");
        Intrinsics.h(constraints, "constraints");
        Intrinsics.h(backoffPolicy, "backoffPolicy");
        Intrinsics.h(outOfQuotaPolicy, "outOfQuotaPolicy");
        this.f15764a = id2;
        this.f15765b = state;
        this.f15766c = workerClassName;
        this.f15767d = inputMergerClassName;
        this.f15768e = input;
        this.f15769f = output;
        this.f15770g = j11;
        this.f15771h = j12;
        this.f15772i = j13;
        this.f15773j = constraints;
        this.f15774k = i11;
        this.f15775l = backoffPolicy;
        this.f15776m = j14;
        this.f15777n = j15;
        this.f15778o = j16;
        this.f15779p = j17;
        this.f15780q = z10;
        this.f15781r = outOfQuotaPolicy;
        this.f15782s = i12;
        this.f15783t = i13;
        this.f15784u = j18;
        this.f15785v = i14;
        this.f15786w = i15;
        this.f15787x = str;
        this.f15788y = bool;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ j0(String str, WorkInfo.State state, String str2, String str3, androidx.work.f fVar, androidx.work.f fVar2, long j11, long j12, long j13, androidx.work.d dVar, int i11, BackoffPolicy backoffPolicy, long j14, long j15, long j16, long j17, boolean z10, OutOfQuotaPolicy outOfQuotaPolicy, int i12, int i13, long j18, int i14, int i15, String str4, Boolean bool, int i16, DefaultConstructorMarker defaultConstructorMarker) {
        String str5;
        WorkInfo.State state2 = (i16 & 2) != 0 ? WorkInfo.State.ENQUEUED : state;
        if ((i16 & 8) != 0) {
            String name = OverwritingInputMerger.class.getName();
            Intrinsics.g(name, "getName(...)");
            str5 = name;
        } else {
            str5 = str3;
        }
        this(str, state2, str2, str5, (i16 & 16) != 0 ? androidx.work.f.f15484c : fVar, (i16 & 32) != 0 ? androidx.work.f.f15484c : fVar2, (i16 & 64) != 0 ? 0L : j11, (i16 & 128) != 0 ? 0L : j12, (i16 & 256) != 0 ? 0L : j13, (i16 & 512) != 0 ? androidx.work.d.f15462k : dVar, (i16 & 1024) != 0 ? 0 : i11, (i16 & 2048) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i16 & 4096) != 0 ? 30000L : j14, (i16 & 8192) != 0 ? -1L : j15, (i16 & 16384) != 0 ? 0L : j16, (32768 & i16) != 0 ? -1L : j17, (65536 & i16) != 0 ? false : z10, (131072 & i16) != 0 ? OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST : outOfQuotaPolicy, (262144 & i16) != 0 ? 0 : i12, (524288 & i16) != 0 ? 0 : i13, (1048576 & i16) != 0 ? Long.MAX_VALUE : j18, (2097152 & i16) != 0 ? 0 : i14, (4194304 & i16) != 0 ? -256 : i15, (8388608 & i16) != 0 ? null : str4, (i16 & 16777216) != 0 ? Boolean.FALSE : bool);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public j0(String newId, j0 other) {
        this(newId, other.f15765b, other.f15766c, other.f15767d, new androidx.work.f(other.f15768e), new androidx.work.f(other.f15769f), other.f15770g, other.f15771h, other.f15772i, new androidx.work.d(other.f15773j), other.f15774k, other.f15775l, other.f15776m, other.f15777n, other.f15778o, other.f15779p, other.f15780q, other.f15781r, other.f15782s, 0, other.f15784u, other.f15785v, other.f15786w, other.f15787x, other.f15788y, 524288, null);
        Intrinsics.h(newId, "newId");
        Intrinsics.h(other, "other");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public j0(String id2, String workerClassName_) {
        this(id2, null, workerClassName_, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554426, null);
        Intrinsics.h(id2, "id");
        Intrinsics.h(workerClassName_, "workerClassName_");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List b(List list) {
        if (list == null) {
            return null;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((c) it.next()).e());
        }
        return arrayList;
    }

    public static /* synthetic */ j0 e(j0 j0Var, String str, WorkInfo.State state, String str2, String str3, androidx.work.f fVar, androidx.work.f fVar2, long j11, long j12, long j13, androidx.work.d dVar, int i11, BackoffPolicy backoffPolicy, long j14, long j15, long j16, long j17, boolean z10, OutOfQuotaPolicy outOfQuotaPolicy, int i12, int i13, long j18, int i14, int i15, String str4, Boolean bool, int i16, Object obj) {
        String str5 = (i16 & 1) != 0 ? j0Var.f15764a : str;
        WorkInfo.State state2 = (i16 & 2) != 0 ? j0Var.f15765b : state;
        String str6 = (i16 & 4) != 0 ? j0Var.f15766c : str2;
        String str7 = (i16 & 8) != 0 ? j0Var.f15767d : str3;
        androidx.work.f fVar3 = (i16 & 16) != 0 ? j0Var.f15768e : fVar;
        androidx.work.f fVar4 = (i16 & 32) != 0 ? j0Var.f15769f : fVar2;
        long j19 = (i16 & 64) != 0 ? j0Var.f15770g : j11;
        long j20 = (i16 & 128) != 0 ? j0Var.f15771h : j12;
        long j21 = (i16 & 256) != 0 ? j0Var.f15772i : j13;
        androidx.work.d dVar2 = (i16 & 512) != 0 ? j0Var.f15773j : dVar;
        return j0Var.d(str5, state2, str6, str7, fVar3, fVar4, j19, j20, j21, dVar2, (i16 & 1024) != 0 ? j0Var.f15774k : i11, (i16 & 2048) != 0 ? j0Var.f15775l : backoffPolicy, (i16 & 4096) != 0 ? j0Var.f15776m : j14, (i16 & 8192) != 0 ? j0Var.f15777n : j15, (i16 & 16384) != 0 ? j0Var.f15778o : j16, (i16 & 32768) != 0 ? j0Var.f15779p : j17, (i16 & 65536) != 0 ? j0Var.f15780q : z10, (131072 & i16) != 0 ? j0Var.f15781r : outOfQuotaPolicy, (i16 & 262144) != 0 ? j0Var.f15782s : i12, (i16 & 524288) != 0 ? j0Var.f15783t : i13, (i16 & 1048576) != 0 ? j0Var.f15784u : j18, (i16 & 2097152) != 0 ? j0Var.f15785v : i14, (4194304 & i16) != 0 ? j0Var.f15786w : i15, (i16 & 8388608) != 0 ? j0Var.f15787x : str4, (i16 & 16777216) != 0 ? j0Var.f15788y : bool);
    }

    public final long c() {
        return f15763z.a(n(), this.f15774k, this.f15775l, this.f15776m, this.f15777n, this.f15782s, o(), this.f15770g, this.f15772i, this.f15771h, this.f15784u);
    }

    public final j0 d(String id2, WorkInfo.State state, String workerClassName, String inputMergerClassName, androidx.work.f input, androidx.work.f output, long j11, long j12, long j13, androidx.work.d constraints, int i11, BackoffPolicy backoffPolicy, long j14, long j15, long j16, long j17, boolean z10, OutOfQuotaPolicy outOfQuotaPolicy, int i12, int i13, long j18, int i14, int i15, String str, Boolean bool) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(state, "state");
        Intrinsics.h(workerClassName, "workerClassName");
        Intrinsics.h(inputMergerClassName, "inputMergerClassName");
        Intrinsics.h(input, "input");
        Intrinsics.h(output, "output");
        Intrinsics.h(constraints, "constraints");
        Intrinsics.h(backoffPolicy, "backoffPolicy");
        Intrinsics.h(outOfQuotaPolicy, "outOfQuotaPolicy");
        return new j0(id2, state, workerClassName, inputMergerClassName, input, output, j11, j12, j13, constraints, i11, backoffPolicy, j14, j15, j16, j17, z10, outOfQuotaPolicy, i12, i13, j18, i14, i15, str, bool);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j0)) {
            return false;
        }
        j0 j0Var = (j0) obj;
        return Intrinsics.c(this.f15764a, j0Var.f15764a) && this.f15765b == j0Var.f15765b && Intrinsics.c(this.f15766c, j0Var.f15766c) && Intrinsics.c(this.f15767d, j0Var.f15767d) && Intrinsics.c(this.f15768e, j0Var.f15768e) && Intrinsics.c(this.f15769f, j0Var.f15769f) && this.f15770g == j0Var.f15770g && this.f15771h == j0Var.f15771h && this.f15772i == j0Var.f15772i && Intrinsics.c(this.f15773j, j0Var.f15773j) && this.f15774k == j0Var.f15774k && this.f15775l == j0Var.f15775l && this.f15776m == j0Var.f15776m && this.f15777n == j0Var.f15777n && this.f15778o == j0Var.f15778o && this.f15779p == j0Var.f15779p && this.f15780q == j0Var.f15780q && this.f15781r == j0Var.f15781r && this.f15782s == j0Var.f15782s && this.f15783t == j0Var.f15783t && this.f15784u == j0Var.f15784u && this.f15785v == j0Var.f15785v && this.f15786w == j0Var.f15786w && Intrinsics.c(this.f15787x, j0Var.f15787x) && Intrinsics.c(this.f15788y, j0Var.f15788y);
    }

    public final Boolean f() {
        return this.f15788y;
    }

    public final int g() {
        return this.f15783t;
    }

    public final long h() {
        return this.f15784u;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((this.f15764a.hashCode() * 31) + this.f15765b.hashCode()) * 31) + this.f15766c.hashCode()) * 31) + this.f15767d.hashCode()) * 31) + this.f15768e.hashCode()) * 31) + this.f15769f.hashCode()) * 31) + androidx.collection.s.a(this.f15770g)) * 31) + androidx.collection.s.a(this.f15771h)) * 31) + androidx.collection.s.a(this.f15772i)) * 31) + this.f15773j.hashCode()) * 31) + this.f15774k) * 31) + this.f15775l.hashCode()) * 31) + androidx.collection.s.a(this.f15776m)) * 31) + androidx.collection.s.a(this.f15777n)) * 31) + androidx.collection.s.a(this.f15778o)) * 31) + androidx.collection.s.a(this.f15779p)) * 31) + androidx.compose.foundation.e.a(this.f15780q)) * 31) + this.f15781r.hashCode()) * 31) + this.f15782s) * 31) + this.f15783t) * 31) + androidx.collection.s.a(this.f15784u)) * 31) + this.f15785v) * 31) + this.f15786w) * 31;
        String str = this.f15787x;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.f15788y;
        return iHashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public final int i() {
        return this.f15785v;
    }

    public final int j() {
        return this.f15782s;
    }

    public final int k() {
        return this.f15786w;
    }

    public final String l() {
        return this.f15787x;
    }

    public final boolean m() {
        return !Intrinsics.c(androidx.work.d.f15462k, this.f15773j);
    }

    public final boolean n() {
        return this.f15765b == WorkInfo.State.ENQUEUED && this.f15774k > 0;
    }

    public final boolean o() {
        return this.f15771h != 0;
    }

    public final void p(long j11) {
        this.f15784u = j11;
    }

    public final void q(int i11) {
        this.f15785v = i11;
    }

    public final void r(long j11) {
        if (j11 < 900000) {
            androidx.work.t.e().k(A, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        s(RangesKt.g(j11, 900000L), RangesKt.g(j11, 900000L));
    }

    public final void s(long j11, long j12) {
        if (j11 < 900000) {
            androidx.work.t.e().k(A, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        this.f15771h = RangesKt.g(j11, 900000L);
        if (j12 < 300000) {
            androidx.work.t.e().k(A, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (j12 > this.f15771h) {
            androidx.work.t.e().k(A, "Flex duration greater than interval duration; Changed to " + j11);
        }
        this.f15772i = RangesKt.n(j12, 300000L, this.f15771h);
    }

    public final void t(String str) {
        this.f15787x = str;
    }

    public String toString() {
        return "{WorkSpec: " + this.f15764a + '}';
    }
}
