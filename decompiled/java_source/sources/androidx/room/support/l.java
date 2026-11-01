package androidx.room.support;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements a4.e.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a4.e.c f14773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AutoCloser f14774b;

    public l(a4.e.c delegate, AutoCloser autoCloser) {
        Intrinsics.h(delegate, "delegate");
        Intrinsics.h(autoCloser, "autoCloser");
        this.f14773a = delegate;
        this.f14774b = autoCloser;
    }

    @Override // a4.e.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public AutoClosingRoomOpenHelper a(a4.e.b configuration) {
        Intrinsics.h(configuration, "configuration");
        return new AutoClosingRoomOpenHelper(this.f14773a.a(configuration), this.f14774b);
    }
}
