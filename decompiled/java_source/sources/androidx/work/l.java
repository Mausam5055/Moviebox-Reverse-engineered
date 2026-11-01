package androidx.work;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l {
    public abstract k a(String str);

    public final k b(String className) {
        Intrinsics.h(className, "className");
        k kVarA = a(className);
        return kVarA == null ? m.a(className) : kVarA;
    }
}
