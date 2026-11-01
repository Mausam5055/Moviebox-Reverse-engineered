package androidx.datastore.core;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i extends r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Throwable f8595b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(Throwable finalException) {
        super(Integer.MAX_VALUE, null);
        Intrinsics.h(finalException, "finalException");
        this.f8595b = finalException;
    }

    public final Throwable b() {
        return this.f8595b;
    }
}
