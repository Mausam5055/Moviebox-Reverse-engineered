package h6;

import android.text.TextUtils;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.Zq;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class a implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Ym f64371a;

    public a() {
        this.f64371a = null;
        this.f64371a = t5.b.a();
    }

    @Override // h6.e
    public c a(b bVar) {
        Fmk.Sj sj2 = new Fmk.Sj();
        try {
            Map map = bVar.f64376e;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (!TextUtils.isEmpty(str)) {
                        String str2 = (String) entry.getValue();
                        if (str2 == null) {
                            str2 = "";
                        }
                        sj2.sP(str, str2);
                    }
                }
            }
            Zq zqSP = this.f64371a.Sj(sj2.sP(bVar.f64373b).Sj().Sj("videoPreloadLowVersion").Sj(6).sP()).sP();
            zqSP.TKC();
            return new f(zqSP, bVar);
        } catch (Throwable unused) {
            return null;
        }
    }
}
