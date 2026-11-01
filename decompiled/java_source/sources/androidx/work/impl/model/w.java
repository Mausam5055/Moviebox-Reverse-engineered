package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w {
    public static final o a(x generationalId, int i11) {
        Intrinsics.h(generationalId, "generationalId");
        return new o(generationalId.b(), generationalId.a(), i11);
    }
}
