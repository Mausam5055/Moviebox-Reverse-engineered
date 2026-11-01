package androidx.core.app;

import android.content.res.Configuration;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f8077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Configuration f8078b;

    public m(boolean z10) {
        this.f8077a = z10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public m(boolean z10, Configuration newConfig) {
        this(z10);
        Intrinsics.h(newConfig, "newConfig");
        this.f8078b = newConfig;
    }

    public final boolean a() {
        return this.f8077a;
    }
}
