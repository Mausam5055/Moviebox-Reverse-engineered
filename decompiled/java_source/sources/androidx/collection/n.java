package androidx.collection;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final m f2301a = new d0(0);

    public static final m a(int... elements) {
        Intrinsics.h(elements, "elements");
        d0 d0Var = new d0(elements.length);
        d0Var.h(elements);
        return d0Var;
    }
}
