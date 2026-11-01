package androidx.activity.contextaware;

import android.content.Context;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f874a = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Context f875b;

    public final void a(d listener) {
        Intrinsics.h(listener, "listener");
        Context context = this.f875b;
        if (context != null) {
            listener.a(context);
        }
        this.f874a.add(listener);
    }

    public final void b() {
        this.f875b = null;
    }

    public final void c(Context context) {
        Intrinsics.h(context, "context");
        this.f875b = context;
        Iterator it = this.f874a.iterator();
        while (it.hasNext()) {
            ((d) it.next()).a(context);
        }
    }

    public final Context d() {
        return this.f875b;
    }

    public final void e(d listener) {
        Intrinsics.h(listener, "listener");
        this.f874a.remove(listener);
    }
}
