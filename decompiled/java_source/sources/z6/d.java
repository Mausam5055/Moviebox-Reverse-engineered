package z6;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.m0;
import com.cloud.hisavana.sdk.q3;
import com.cloud.hisavana.sdk.u3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d extends a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f79292m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f79293n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private SSPWebPageReqInfo f79294o;

    public d(String str) {
        super(str);
    }

    private void x(ViewGroup viewGroup, TaNativeInfo taNativeInfo, List list) {
        if (taNativeInfo != null) {
            try {
                if (taNativeInfo.getNativeBridge() != null) {
                    m0.a(((u3) taNativeInfo.getNativeBridge()).v(), taNativeInfo.getAdItem(), viewGroup, list);
                }
            } catch (Throwable th2) {
                e4.b().e("NativeApi", "onOmidRegister", th2);
            }
        }
    }

    private void z() {
        this.f79294o = null;
    }

    public void A(int i11) {
        this.f79293n = Math.min(Math.max(i11, 1), 5);
    }

    public void B(boolean z10) {
        this.f79292m = z10;
    }

    public void C(SSPWebPageReqInfo sSPWebPageReqInfo) {
        try {
            if (a7.c.l()) {
                this.f79294o = sSPWebPageReqInfo;
            }
        } catch (Throwable unused) {
        }
    }

    public void D(String str, String str2) {
        G g11 = this.f79279a;
        if (g11 == null) {
            return;
        }
        try {
            SSPTrackingHelper.f21953a.E(g11.p(), str, str2);
        } catch (Throwable unused) {
        }
    }

    public void E(List list) {
        if (this.f79279a == null) {
            return;
        }
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    e4.b().d("NativeApi", "infos is empty, return");
                } else {
                    SSPTrackingHelper.f21953a.I(this.f79279a.p(), list);
                }
            } catch (Throwable unused) {
            }
        } else {
            e4.b().d("NativeApi", "infos is empty, return");
        }
    }

    public AdChoicesView s(Context context, TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null) {
            return null;
        }
        try {
            if (taNativeInfo.getNativeBridge() instanceof u3) {
                return ((u3) taNativeInfo.getNativeBridge()).G(context, taNativeInfo);
            }
            return null;
        } catch (Throwable th2) {
            e4.b().e("NativeApi", "getAdChoicesView", th2);
            return null;
        }
    }

    public AdCloseView t(Context context) {
        G g11 = this.f79279a;
        if (g11 instanceof u3) {
            return ((u3) g11).H(context);
        }
        return null;
    }

    public int u(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null || !(taNativeInfo.getNativeBridge() instanceof u3)) {
            return 1116;
        }
        return ((u3) taNativeInfo.getNativeBridge()).V(taNativeInfo);
    }

    public boolean v(TaNativeInfo taNativeInfo) {
        boolean z10 = false;
        if (taNativeInfo != null && (taNativeInfo.getNativeBridge() instanceof u3)) {
            int iV = ((u3) taNativeInfo.getNativeBridge()).V(taNativeInfo);
            z10 = iV == 0;
            if (!z10) {
                Bundle bundle = new Bundle();
                bundle.putString("s_err_code", iV + "");
                a(TaErrorCode.ERROR_SHOW_OUTER_INVALID, bundle);
            }
        }
        return z10;
    }

    public void w() {
        if (b()) {
            q3 q3VarG = new q3.b().i(this.f79292m ? 6 : 1).e(this.f79280b).r(this.f79281c).l(this.f79282d).j(this.f79283e).c(this.f79288j).a(this.f79293n).o(this.f79285g).v(this.f79286h).d(this.f79294o).b(this.f79287i).g();
            z();
            u3 u3Var = new u3(q3VarG);
            u3Var.g(new a.C0976a(this));
            u3Var.E();
        }
    }

    public void y(ViewGroup viewGroup, List list, TaNativeInfo taNativeInfo) {
        if (taNativeInfo != null) {
            try {
                if (taNativeInfo.getNativeBridge() instanceof u3) {
                    try {
                        this.f79290l.add((u3) taNativeInfo.getNativeBridge());
                    } catch (Throwable unused) {
                    }
                    ((u3) taNativeInfo.getNativeBridge()).Q(viewGroup, list, taNativeInfo);
                    ArrayList arrayList = new ArrayList();
                    if (viewGroup instanceof TNativeView) {
                        ((TNativeView) viewGroup).getMarkViews(arrayList);
                    }
                    x(viewGroup, taNativeInfo, arrayList);
                }
            } catch (Throwable unused2) {
            }
        }
    }
}
