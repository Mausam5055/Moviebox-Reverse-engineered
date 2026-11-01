package com.pgl.ssdk;

import android.content.Context;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes5.dex */
public class m0 extends j0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f40184n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f40185o;

    public m0(Context context, int i11) {
        super(context);
        this.f40184n = context;
        this.f40185o = i11;
    }

    @Override // com.pgl.ssdk.j0
    public String a() {
        int i11 = this.f40185o;
        if (i11 == 222) {
            return "/ssdk/v2/r?os=0&ver=7.1.0.0.overseas-rc.6&mode=1&app_ver=" + z.g(this.f40184n) + "&region=" + b0.a() + "&did=" + com.pgl.ssdk.ces.b.d() + "&aid=" + com.pgl.ssdk.ces.b.c();
        }
        if (i11 != 301) {
            return null;
        }
        return "/ssdk/sd/token?os=android&app_id=" + com.pgl.ssdk.ces.b.c() + "&did=" + com.pgl.ssdk.ces.b.d() + "&app_ver=" + z.g(this.f40184n) + "&platform=android&ver=7.1.0.0.overseas-rc.6&mode=1";
    }

    @Override // com.pgl.ssdk.j0
    public void a(int i11, byte[] bArr) {
        try {
            if (i11 != 200) {
                k0.b(this.f40184n);
                return;
            }
            int i12 = this.f40185o;
            if (i12 == 222) {
                ((Integer) com.pgl.ssdk.ces.a.meta(Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, null, bArr)).intValue();
                return;
            }
            if (i12 == 301) {
                Object objA = c1.a(bArr);
                r0.b("write token result = ".concat(String.valueOf(objA)));
                if ((objA instanceof Integer) && ((Integer) objA).intValue() == 0) {
                    r0.b("write token succ");
                    c1.f40092a = 200;
                } else if (objA instanceof String) {
                    c1.f40094c = (String) objA;
                    c1.f40092a = 200;
                }
            }
        } catch (Throwable unused) {
        }
    }
}
