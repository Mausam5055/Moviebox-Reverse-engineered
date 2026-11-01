package eh;

import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f61873a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private dh.b f61874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f61875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Executor f61876d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private dh.a f61877e;

    public final dh.a a() {
        return this.f61877e;
    }

    public final long b() {
        return this.f61875c;
    }

    public final Executor c() {
        return this.f61876d;
    }

    public final dh.b d() {
        return this.f61874b;
    }

    public final String e() {
        return this.f61873a;
    }

    public final void f(Executor executor) {
        this.f61876d = executor;
    }

    public final void g(dh.b bVar) {
        this.f61874b = bVar;
    }

    public final void h(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f61873a = str;
    }
}
