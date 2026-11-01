package ob;

import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import rb.o;

/* JADX INFO: loaded from: classes5.dex */
public final class e implements bd.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f70949a;

    public e(o userMetadata) {
        Intrinsics.h(userMetadata, "userMetadata");
        this.f70949a = userMetadata;
    }

    @Override // bd.f
    public void a(bd.e rolloutsState) {
        Intrinsics.h(rolloutsState, "rolloutsState");
        o oVar = this.f70949a;
        Set setB = rolloutsState.b();
        Intrinsics.g(setB, "rolloutsState.rolloutAssignments");
        Set<bd.d> set = setB;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(set, 10));
        for (bd.d dVar : set) {
            arrayList.add(rb.i.b(dVar.d(), dVar.b(), dVar.c(), dVar.f(), dVar.e()));
        }
        oVar.t(arrayList);
        g.f().b("Updated Crashlytics Rollout State");
    }
}
