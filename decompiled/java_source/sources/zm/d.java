package zm;

import com.transsion.memberapi.MemberTaskRewardInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f79432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f79433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f79434c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f79435d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MemberTaskRewardInfo f79436e;

    public d(int i11, String rewardId, int i12, int i13, MemberTaskRewardInfo memberTaskRewardInfo) {
        Intrinsics.h(rewardId, "rewardId");
        this.f79432a = i11;
        this.f79433b = rewardId;
        this.f79434c = i12;
        this.f79435d = i13;
        this.f79436e = memberTaskRewardInfo;
    }

    public final int a() {
        return this.f79432a;
    }

    public final MemberTaskRewardInfo b() {
        return this.f79436e;
    }

    public final int c() {
        return this.f79434c;
    }

    public final String d() {
        return this.f79433b;
    }

    public final int e() {
        return this.f79435d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f79432a == dVar.f79432a && Intrinsics.c(this.f79433b, dVar.f79433b) && this.f79434c == dVar.f79434c && this.f79435d == dVar.f79435d && Intrinsics.c(this.f79436e, dVar.f79436e);
    }

    public int hashCode() {
        int iHashCode = ((((((this.f79432a * 31) + this.f79433b.hashCode()) * 31) + this.f79434c) * 31) + this.f79435d) * 31;
        MemberTaskRewardInfo memberTaskRewardInfo = this.f79436e;
        return iHashCode + (memberTaskRewardInfo == null ? 0 : memberTaskRewardInfo.hashCode());
    }

    public String toString() {
        return "MemberTaskRewardData(index=" + this.f79432a + ", rewardId=" + this.f79433b + ", rewardAmount=" + this.f79434c + ", rewardType=" + this.f79435d + ", info=" + this.f79436e + ")";
    }
}
