package z6;

import android.content.Context;
import android.view.View;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.listener.g;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.i1;
import com.cloud.hisavana.sdk.q3;

/* JADX INFO: loaded from: classes3.dex */
public class f extends z6.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f79296m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private g f79297n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Context f79298o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f79299p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f79300q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f79301r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f79302s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Float f79303t;

    private static class a extends z6.a.C0976a {
        a(f fVar) {
            super(fVar);
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public g f() {
            z6.a aVar = this.f79291a;
            if (aVar instanceof f) {
                return ((f) aVar).f79297n;
            }
            return null;
        }
    }

    public f(Context context, String str) {
        super(str);
        this.f79300q = false;
        this.f79301r = false;
        this.f79302s = false;
        this.f79298o = context;
    }

    @Override // z6.a
    public void c() {
        super.c();
        this.f79296m = null;
    }

    public void t() {
        if (this.f79300q) {
            a7.c.s(this.f79298o, this.f79299p, this.f79301r);
        }
        if (b()) {
            i1 i1Var = new i1(new q3.b().i(4).e(this.f79280b).r(this.f79281c).l(this.f79282d).j(this.f79283e).c(this.f79288j).o(this.f79285g).v(this.f79286h).b(this.f79287i).g());
            i1Var.g(new a(this));
            i1Var.E();
        }
    }

    public f u(String str, boolean z10) {
        this.f79300q = true;
        this.f79299p = str;
        this.f79301r = z10;
        return this;
    }

    public void v(View view) {
        this.f79296m = view;
    }

    public void w(Float f11) {
        this.f79303t = f11;
    }

    public void x(g gVar) {
        this.f79297n = gVar;
    }

    public void y() {
        G g11 = this.f79279a;
        if (g11 == null || !(g11 instanceof i1)) {
            return;
        }
        try {
            ((i1) g11).p0(this.f79302s);
            ((i1) this.f79279a).g0(this.f79303t);
            ((i1) this.f79279a).k0(this.f79296m);
            this.f79290l.add(this.f79279a);
        } catch (Throwable th2) {
            e4.b().w("ssp", "TSplash show error: " + th2.getMessage());
        }
        ((i1) this.f79279a).o0(this.f79298o);
    }
}
