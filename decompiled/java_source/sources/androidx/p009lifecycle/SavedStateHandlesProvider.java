package androidx.p009lifecycle;

import android.os.Bundle;
import androidx.p010savedstate.c;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SavedStateHandlesProvider implements c.InterfaceC0122c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f9560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f9561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f9562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f9563d;

    public SavedStateHandlesProvider(c savedStateRegistry, final y0 viewModelStoreOwner) {
        Intrinsics.h(savedStateRegistry, "savedStateRegistry");
        Intrinsics.h(viewModelStoreOwner, "viewModelStoreOwner");
        this.f9560a = savedStateRegistry;
        this.f9563d = LazyKt.b(new Function0<p0>() { // from class: androidx.lifecycle.SavedStateHandlesProvider$viewModel$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final p0 invoke() {
                return o0.e(viewModelStoreOwner);
            }
        });
    }

    private final p0 b() {
        return (p0) this.f9563d.getValue();
    }

    public final Bundle a(String key) {
        Intrinsics.h(key, "key");
        c();
        Bundle bundle = this.f9562c;
        Bundle bundle2 = bundle != null ? bundle.getBundle(key) : null;
        Bundle bundle3 = this.f9562c;
        if (bundle3 != null) {
            bundle3.remove(key);
        }
        Bundle bundle4 = this.f9562c;
        if (bundle4 != null && bundle4.isEmpty()) {
            this.f9562c = null;
        }
        return bundle2;
    }

    public final void c() {
        if (this.f9561b) {
            return;
        }
        Bundle bundleB = this.f9560a.b("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f9562c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (bundleB != null) {
            bundle.putAll(bundleB);
        }
        this.f9562c = bundle;
        this.f9561b = true;
        b();
    }

    @Override // androidx.p010savedstate.c.InterfaceC0122c
    public Bundle saveState() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f9562c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : b().b().entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleSaveState = ((l0) entry.getValue()).c().saveState();
            if (!Intrinsics.c(bundleSaveState, Bundle.EMPTY)) {
                bundle.putBundle(str, bundleSaveState);
            }
        }
        this.f9561b = false;
        return bundle;
    }
}
