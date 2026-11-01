package ti;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f76260a = new i();

    private i() {
    }

    public static /* synthetic */ void b(i iVar, FragmentManager fragmentManager, int i11, Fragment fragment, boolean z10, String str, int i12, Object obj) {
        if ((i12 & 8) != 0) {
            z10 = false;
        }
        boolean z11 = z10;
        if ((i12 & 16) != 0) {
            str = fragment.getClass().getSimpleName();
        }
        iVar.a(fragmentManager, i11, fragment, z11, str);
    }

    private final void c(FragmentManager fragmentManager, w wVar) {
        if (fragmentManager.T0() || fragmentManager.L0()) {
            return;
        }
        try {
            wVar.j();
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        }
    }

    public final void a(FragmentManager fragmentManager, int i11, Fragment fragment, boolean z10, String str) {
        Intrinsics.h(fragmentManager, "fragmentManager");
        Intrinsics.h(fragment, "fragment");
        if (fragmentManager.T0() || fragmentManager.L0()) {
            return;
        }
        Fragment fragmentK0 = str != null ? fragmentManager.k0(str) : null;
        if (fragmentK0 == null || !fragmentK0.isAdded()) {
            w wVarP = fragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction(...)");
            wVarP.t(i11, fragment, str);
            if (z10) {
                wVarP.g(str);
            }
            c(fragmentManager, wVarP);
        }
    }
}
