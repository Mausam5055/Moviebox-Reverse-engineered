package androidx.p009lifecycle;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f9671a = new LinkedHashMap();

    public final void a() {
        Iterator it = this.f9671a.values().iterator();
        while (it.hasNext()) {
            ((t0) it.next()).clear$lifecycle_viewmodel_release();
        }
        this.f9671a.clear();
    }

    public final t0 b(String key) {
        Intrinsics.h(key, "key");
        return (t0) this.f9671a.get(key);
    }

    public final Set c() {
        return new HashSet(this.f9671a.keySet());
    }

    public final void d(String key, t0 viewModel) {
        Intrinsics.h(key, "key");
        Intrinsics.h(viewModel, "viewModel");
        t0 t0Var = (t0) this.f9671a.put(key, viewModel);
        if (t0Var != null) {
            t0Var.clear$lifecycle_viewmodel_release();
        }
    }
}
