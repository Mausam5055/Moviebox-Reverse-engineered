package ti;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f76262a = new k();

    private k() {
    }

    public final boolean a(List list1, List list2) {
        Intrinsics.h(list1, "list1");
        Intrinsics.h(list2, "list2");
        return !CollectionsKt.o0(list1, CollectionsKt.W0(list2)).isEmpty();
    }
}
