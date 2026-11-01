package cf;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f17213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d f17214b;

    public final void a(d task) {
        Intrinsics.h(task, "task");
        if (this.f17213a == null) {
            this.f17213a = task;
        }
        d dVar = this.f17214b;
        if (dVar != null) {
            dVar.f17147c = task;
        }
        this.f17214b = task;
    }

    public final void b() {
        d dVar = this.f17213a;
        if (dVar != null) {
            dVar.request();
        }
    }
}
