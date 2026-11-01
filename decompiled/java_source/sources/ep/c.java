package ep;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f61972a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f61973b = new LinkedHashMap();

    private c() {
    }

    public final void a() {
        f61973b.clear();
    }

    public final Long b(String postId) {
        Intrinsics.h(postId, "postId");
        return (Long) f61973b.remove(postId);
    }

    public final void c(String postId, long j11) {
        Intrinsics.h(postId, "postId");
        f61973b.put(postId, Long.valueOf(j11));
    }
}
