package bo;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import hj.i;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f16641a = new c();

    private c() {
    }

    public final void a(String str, String str2, String str3, boolean z10) {
        if (str2 == null || str2.length() == 0) {
            return;
        }
        i iVar = i.f64505a;
        if (str == null) {
            str = iVar.i();
        }
        iVar.p(str, MapsKt.l(new Pair("module_name", "play_screen"), new Pair("subject_id", str2), new Pair("ops", str3), new Pair(NativeComponentConstants.KEY_COMPONENT_TYPE, z10 ? "1" : "0")));
    }
}
