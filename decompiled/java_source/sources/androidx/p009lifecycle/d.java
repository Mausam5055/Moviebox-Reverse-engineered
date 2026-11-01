package androidx.p009lifecycle;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k[] f9586a;

    public d(k[] generatedAdapters) {
        Intrinsics.h(generatedAdapters, "generatedAdapters");
        this.f9586a = generatedAdapters;
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        new a0();
        k[] kVarArr = this.f9586a;
        if (kVarArr.length > 0) {
            k kVar = kVarArr[0];
            throw null;
        }
        if (kVarArr.length <= 0) {
            return;
        }
        k kVar2 = kVarArr[0];
        throw null;
    }
}
