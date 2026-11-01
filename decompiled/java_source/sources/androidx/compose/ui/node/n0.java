package androidx.compose.ui.node;

import java.util.List;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f5415c = androidx.compose.runtime.collection.b.f3680d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f5416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function0 f5417b;

    public n0(androidx.compose.runtime.collection.b bVar, Function0 function0) {
        this.f5416a = bVar;
        this.f5417b = function0;
    }

    public final void a(int i11, Object obj) {
        this.f5416a.a(i11, obj);
        this.f5417b.invoke();
    }

    public final List b() {
        return this.f5416a.g();
    }

    public final void c() {
        this.f5416a.h();
        this.f5417b.invoke();
    }

    public final Object d(int i11) {
        return this.f5416a.m()[i11];
    }

    public final int e() {
        return this.f5416a.n();
    }

    public final androidx.compose.runtime.collection.b f() {
        return this.f5416a;
    }

    public final Object g(int i11) {
        Object objV = this.f5416a.v(i11);
        this.f5417b.invoke();
        return objV;
    }
}
