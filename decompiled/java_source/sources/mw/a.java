package mw;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Reference f70017a;

    public final void a(Object obj) {
        this.f70017a = new WeakReference(obj);
    }

    public void b() {
        Reference reference = this.f70017a;
        if (reference != null) {
            Intrinsics.e(reference);
            reference.clear();
            this.f70017a = null;
        }
    }

    protected final Object c() {
        Reference reference = this.f70017a;
        if (reference == null) {
            return null;
        }
        Intrinsics.e(reference);
        return reference.get();
    }

    protected final boolean d() {
        Reference reference = this.f70017a;
        if (reference != null) {
            Intrinsics.e(reference);
            if (reference.get() != null) {
                return true;
            }
        }
        return false;
    }
}
