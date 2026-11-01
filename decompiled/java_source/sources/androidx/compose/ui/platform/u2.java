package androidx.compose.ui.platform;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class u2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f5865a = new androidx.compose.runtime.collection.b(new Reference[16], 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ReferenceQueue f5866b = new ReferenceQueue();

    private final void a() {
        Reference referencePoll;
        do {
            referencePoll = this.f5866b.poll();
            if (referencePoll != null) {
                this.f5865a.t(referencePoll);
            }
        } while (referencePoll != null);
    }

    public final Object b() {
        a();
        while (this.f5865a.q()) {
            androidx.compose.runtime.collection.b bVar = this.f5865a;
            Object obj = ((Reference) bVar.v(bVar.n() - 1)).get();
            if (obj != null) {
                return obj;
            }
        }
        return null;
    }

    public final void c(Object obj) {
        a();
        this.f5865a.b(new WeakReference(obj, this.f5866b));
    }
}
