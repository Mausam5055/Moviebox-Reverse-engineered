package jb;

import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f65983a = new Bundle();

    public final Bundle a() {
        return this.f65983a;
    }

    public final void b(String key, long j11) {
        Intrinsics.h(key, "key");
        this.f65983a.putLong(key, j11);
    }

    public final void c(String key, String value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        this.f65983a.putString(key, value);
    }
}
