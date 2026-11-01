package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class JsonElementMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.serialization.internal.e0 f68275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f68276b;

    public JsonElementMarker(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        this.f68275a = new kotlinx.serialization.internal.e0(descriptor, new JsonElementMarker$origin$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean e(kotlinx.serialization.descriptors.f fVar, int i11) {
        boolean z10 = !fVar.j(i11) && fVar.h(i11).b();
        this.f68276b = z10;
        return z10;
    }

    public final boolean b() {
        return this.f68276b;
    }

    public final void c(int i11) {
        this.f68275a.a(i11);
    }

    public final int d() {
        return this.f68275a.d();
    }
}
