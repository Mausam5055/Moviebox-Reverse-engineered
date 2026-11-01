package com.transsion.mpush.core.fcm;

import android.app.Application;
import android.os.Build;
import androidx.core.app.t;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.dns.or.CacheIpPool;
import com.transsion.mpush.core.net.PushNetworkApi;
import com.transsion.mpush.core.utils.PushPreference;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class FCMPushHelper {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Application f47493h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private t1 f47494i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile boolean f47496k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f47486a = "PushRegisterManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f47487b = "topic_appid_";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f47488c = "topic_zone_";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f47489d = "topic_country_";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f47490e = "topic_language_";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f47491f = "_test";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f47492g = LazyKt.b(new Function0() { // from class: com.transsion.mpush.core.fcm.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FCMPushHelper.u();
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final n0 f47495j = o0.a(l2.b(null, 1, null).plus(y0.b()));

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(Application application, String str, boolean z10) {
        if (z10) {
            PushPreference.f47608a.v(application, str);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(Application application, String str, boolean z10) {
        if (z10) {
            PushPreference.f47608a.t(application, str);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C() throws JSONException {
        if (this.f47496k) {
            return;
        }
        this.f47496k = true;
        D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E(FCMPushHelper fCMPushHelper, JSONObject jSONObject, String regHash) {
        Intrinsics.h(regHash, "regHash");
        t1 t1Var = fCMPushHelper.f47494i;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        fCMPushHelper.f47494i = kotlinx.coroutines.k.d(fCMPushHelper.f47495j, null, null, new FCMPushHelper$sendToServer$1$1(fCMPushHelper, jSONObject, regHash, null), 3, null);
        return Unit.f67061a;
    }

    private final boolean n() {
        try {
            return t.d(Utils.a()).a();
        } catch (Exception unused) {
            return true;
        }
    }

    private final void o(Function1 function1) {
        String strG;
        String id2 = TimeZone.getDefault().getID();
        m mVar = m.f47511a;
        Function0 function0P = mVar.p();
        String str = function0P != null ? (String) function0P.invoke() : null;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String strA = cm.e.a(str + "|" + id2 + "|" + com.blankj.utilcode.util.c.f() + "|" + Locale.getDefault().getCountry() + "|" + Locale.getDefault().getLanguage() + "|" + Build.VERSION.RELEASE + "|" + mVar.o() + "|" + mVar.l());
        Application application = this.f47493h;
        if (application != null && (strG = PushPreference.f47608a.g(application)) != null) {
            str2 = strG;
        }
        if (Intrinsics.c(strA, str2)) {
            return;
        }
        Intrinsics.e(strA);
        function1.invoke(strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q(FCMPushHelper fCMPushHelper, String it) throws JSONException {
        Intrinsics.h(it, "it");
        fCMPushHelper.D();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PushNetworkApi r() {
        return (PushNetworkApi) this.f47492g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RequestBody s(String str) {
        return RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PushNetworkApi u() {
        return (PushNetworkApi) zg.c.f79414e.a().h(PushNetworkApi.class);
    }

    private final void x() {
        final Application application = this.f47493h;
        if (application == null) {
            return;
        }
        boolean zC = Intrinsics.c(CacheIpPool.f40825a.l(), "test-mse-api.aoneroom.com");
        PushPreference pushPreference = PushPreference.f47608a;
        String strJ = pushPreference.j(application);
        String strL = pushPreference.l(application);
        String strK = pushPreference.k(application);
        String strI = pushPreference.i(application);
        final String str = this.f47489d + Locale.getDefault().getCountry() + (zC ? this.f47491f : "");
        String str2 = this.f47488c;
        String id2 = TimeZone.getDefault().getID();
        Intrinsics.g(id2, "getID(...)");
        final String str3 = str2 + StringsKt.P(id2, '/', '_', false, 4, null) + (zC ? this.f47491f : "");
        final String str4 = this.f47490e + Locale.getDefault().getLanguage() + (zC ? this.f47491f : "");
        final String str5 = this.f47487b + Utils.a().getPackageName() + (zC ? this.f47491f : "");
        if (!Intrinsics.c(strJ, str)) {
            if (strJ.length() > 0) {
                m.f47511a.x(strJ);
            }
            m.f47511a.s(str, new Function1() { // from class: com.transsion.mpush.core.fcm.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return FCMPushHelper.y(application, str, ((Boolean) obj).booleanValue());
                }
            });
        }
        if (!Intrinsics.c(strL, str3)) {
            if (strL.length() > 0) {
                m.f47511a.x(strL);
            }
            m.f47511a.s(str3, new Function1() { // from class: com.transsion.mpush.core.fcm.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return FCMPushHelper.z(application, str3, ((Boolean) obj).booleanValue());
                }
            });
        }
        if (!Intrinsics.c(strK, str4)) {
            if (strK.length() > 0) {
                m.f47511a.x(strK);
            }
            m.f47511a.s(str4, new Function1() { // from class: com.transsion.mpush.core.fcm.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return FCMPushHelper.A(application, str4, ((Boolean) obj).booleanValue());
                }
            });
        }
        if (Intrinsics.c(strI, str5)) {
            return;
        }
        if (strI.length() > 0) {
            m.f47511a.x(strI);
        }
        m.f47511a.s(str5, new Function1() { // from class: com.transsion.mpush.core.fcm.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FCMPushHelper.B(application, str5, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y(Application application, String str, boolean z10) {
        if (z10) {
            PushPreference.f47608a.u(application, str);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z(Application application, String str, boolean z10) {
        if (z10) {
            PushPreference.f47608a.w(application, str);
        }
        return Unit.f67061a;
    }

    public final void D() throws JSONException {
        m mVar = m.f47511a;
        if (mVar.o().length() == 0 || mVar.l().length() == 0) {
            return;
        }
        boolean zN = n();
        final JSONObject jSONObject = new JSONObject();
        jSONObject.put("firebaseToken", mVar.o());
        jSONObject.put("twibidaClientId", mVar.l());
        jSONObject.put("notifySwitchOff", !zN);
        o(new Function1() { // from class: com.transsion.mpush.core.fcm.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FCMPushHelper.E(this.f47498a, jSONObject, (String) obj);
            }
        });
    }

    public final void p() {
        o(new Function1() { // from class: com.transsion.mpush.core.fcm.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FCMPushHelper.q(this.f47497a, (String) obj);
            }
        });
    }

    public final void t(Application context) {
        Intrinsics.h(context, "context");
        this.f47493h = context;
    }

    public final void v(String token) {
        Intrinsics.h(token, "token");
        this.f47496k = false;
        x();
        D();
    }

    public final void w(String str, String str2) {
        this.f47496k = false;
        x();
        D();
    }
}
