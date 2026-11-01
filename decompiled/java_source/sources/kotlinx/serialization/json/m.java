package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.j0;

/* JADX INFO: loaded from: classes7.dex */
final class m extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(f configuration, f00.c module) {
        super(configuration, module, null);
        Intrinsics.h(configuration, "configuration");
        Intrinsics.h(module, "module");
        g();
    }

    private final void g() {
        if (Intrinsics.c(a(), f00.d.a())) {
            return;
        }
        a().a(new j0(e().k(), e().c()));
    }
}
