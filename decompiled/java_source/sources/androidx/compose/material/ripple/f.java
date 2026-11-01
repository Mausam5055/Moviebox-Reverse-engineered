package androidx.compose.material.ripple;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f3500a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f3501b = new LinkedHashMap();

    public final e a(RippleHostView rippleHostView) {
        return (e) this.f3501b.get(rippleHostView);
    }

    public final RippleHostView b(e eVar) {
        return (RippleHostView) this.f3500a.get(eVar);
    }

    public final void c(e eVar) {
        RippleHostView rippleHostView = (RippleHostView) this.f3500a.get(eVar);
        if (rippleHostView != null) {
        }
        this.f3500a.remove(eVar);
    }

    public final void d(e eVar, RippleHostView rippleHostView) {
        this.f3500a.put(eVar, rippleHostView);
        this.f3501b.put(rippleHostView, eVar);
    }
}
