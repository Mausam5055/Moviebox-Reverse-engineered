package androidx.room.support;

import java.io.File;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements a4.e.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f14785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Callable f14786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a4.e.c f14787d;

    public n(String str, File file, Callable callable, a4.e.c delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f14784a = str;
        this.f14785b = file;
        this.f14786c = callable;
        this.f14787d = delegate;
    }

    @Override // a4.e.c
    public a4.e a(a4.e.b configuration) {
        Intrinsics.h(configuration, "configuration");
        return new m(configuration.f156a, this.f14784a, this.f14785b, this.f14786c, configuration.f158c.f154a, this.f14787d.a(configuration));
    }
}
