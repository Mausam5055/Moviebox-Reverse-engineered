package androidx.datastore.core;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {
    public static final k a(String filePath) {
        Intrinsics.h(filePath, "filePath");
        return new SingleProcessCoordinator(filePath);
    }
}
