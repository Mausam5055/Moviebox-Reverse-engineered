package pg;

import com.tn.lib.net.cons.HeaderType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f72450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f72451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f72452c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HeaderType f72453d = HeaderType.ONE_ROOM;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f72454e;

    public final HeaderType a() {
        return this.f72453d;
    }

    public final String b() {
        return this.f72452c;
    }

    public final boolean c() {
        return this.f72450a;
    }

    public final boolean d() {
        return this.f72451b;
    }

    public final void e(boolean z10) {
        this.f72450a = z10;
    }

    public final void f(boolean z10) {
        this.f72451b = z10;
    }

    public final void g(long j11) {
        this.f72454e = j11;
    }

    public final void h(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f72452c = str;
    }
}
