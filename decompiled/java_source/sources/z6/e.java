package z6;

import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.q3;
import com.cloud.hisavana.sdk.x3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class e extends a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f79295m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(String placementId) {
        super(placementId);
        Intrinsics.h(placementId, "placementId");
        this.f79295m = placementId;
    }

    public void s() {
        if (b()) {
            q3 q3VarG = new q3.b().i(5).e(this.f79280b).r(this.f79281c).l(this.f79282d).j(this.f79283e).c(this.f79288j).o(this.f79285g).v(this.f79286h).b(this.f79287i).g();
            Intrinsics.e(q3VarG);
            x3 x3Var = new x3(q3VarG);
            x3Var.g(new a.C0976a(this));
            x3Var.E();
        }
    }

    public final void t(com.cloud.hisavana.sdk.api.listener.d dVar) {
        p(dVar);
    }

    public final void u() {
        G g11 = this.f79279a;
        if (g11 instanceof x3) {
            try {
                this.f79290l.add(g11);
            } catch (Throwable unused) {
            }
            G g12 = this.f79279a;
            Intrinsics.f(g12, "null cannot be cast to non-null type com.cloud.hisavana.sdk.internal.rewarded.TranRewarded");
            ((x3) g12).L();
        }
    }
}
