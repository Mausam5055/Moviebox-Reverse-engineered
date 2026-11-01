package z6;

import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.q3;
import com.cloud.hisavana.sdk.s3;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends a {
    public b(String str) {
        super(str);
    }

    public void s() {
        if (b()) {
            s3 s3Var = new s3(new q3.b().i(3).e(this.f79280b).r(this.f79281c).l(this.f79282d).j(this.f79283e).c(this.f79288j).o(this.f79285g).v(this.f79286h).b(this.f79287i).g());
            s3Var.g(new a.C0976a(this));
            s3Var.E();
        }
    }

    public void t() {
        G g11 = this.f79279a;
        if (g11 instanceof s3) {
            try {
                this.f79290l.add(g11);
            } catch (Throwable unused) {
            }
            ((s3) this.f79279a).M();
        }
    }
}
