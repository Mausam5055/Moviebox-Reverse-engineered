package bo;

import com.transsion.player.config.RenderType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f16639a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static d f16640b;

    private b() {
    }

    public final d a() {
        if (f16640b == null) {
            f16640b = new d(RenderType.SURFACE_VIEW, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, false, false, false, false, "", 65534, null);
        }
        d dVar = f16640b;
        Intrinsics.e(dVar);
        return dVar;
    }

    public final boolean b() {
        d dVar = f16640b;
        return (dVar != null ? dVar.p() : null) == RenderType.SURFACE_VIEW;
    }

    public final boolean c() {
        d dVar = f16640b;
        if (dVar != null) {
            return dVar.j();
        }
        return true;
    }

    public final void d(d dVar) {
        f16640b = dVar;
    }
}
