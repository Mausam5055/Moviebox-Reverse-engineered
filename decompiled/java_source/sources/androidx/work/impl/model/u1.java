package androidx.work.impl.model;

import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class u1 {
    public static void a(v1 v1Var, String id2, Set tags) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(tags, "tags");
        Iterator it = tags.iterator();
        while (it.hasNext()) {
            v1Var.c(new t1((String) it.next(), id2));
        }
    }
}
