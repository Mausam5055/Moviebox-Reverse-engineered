package yv;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import bw.g;
import bw.h;
import bw.i;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.gslb.GslbSdk;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements GslbSdk.GslbInitListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f79058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f79059b;

    public b(c cVar, Context context) {
        this.f79058a = cVar;
        this.f79059b = context;
    }

    @Override // com.transsion.gslb.GslbSdk.GslbInitListener
    public final void onInitFail(String str) {
        String msg = "GSLB init fail: " + str;
        Intrinsics.h("UpgradeSdkManager", "tag");
        Intrinsics.h(msg, "msg");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!g.f16939a && jCurrentTimeMillis - g.f16940b >= 5000) {
            g.f16940b = jCurrentTimeMillis;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f16939a = true;
            }
        }
        boolean z10 = f.f79067o.a().f79072d;
    }

    @Override // com.transsion.gslb.GslbSdk.GslbInitListener
    public final void onInitSuccess(Map map) {
        g.a("GSLB init success: " + map);
        String country = GslbSdk.getCountry();
        if (TextUtils.isEmpty(country)) {
            return;
        }
        this.f79058a.f79063b = country;
        h hVar = i.f16941b;
        i iVarA = hVar.a(this.f79059b);
        Intrinsics.e(country);
        iVarA.b("KV_UPGRADE_GSLB_COUNTRY", country);
        Application application = null;
        if (StringsKt.H(country, "IN", true)) {
            c cVar = this.f79058a;
            if (!TextUtils.equals(cVar.f79063b, cVar.f79064c)) {
                g.a("GSLB init current: " + country + " request: " + this.f79058a.f79064c);
                Application application2 = xv.a.f78447a;
                if (application2 != null) {
                    application = application2;
                } else {
                    Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                }
                hVar.a(application).b("KV_UPGRADE_LOCAL_CDN_DATA", "");
                return;
            }
        }
        if (StringsKt.H(country, "RU", true)) {
            c cVar2 = this.f79058a;
            if (TextUtils.equals(cVar2.f79063b, cVar2.f79064c)) {
                return;
            }
            g.a("GSLB init current: " + country + " request: " + this.f79058a.f79064c);
            Application application3 = xv.a.f78447a;
            if (application3 != null) {
                application = application3;
            } else {
                Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
            }
            hVar.a(application).b("KV_UPGRADE_LOCAL_CDN_DATA", "");
        }
    }
}
