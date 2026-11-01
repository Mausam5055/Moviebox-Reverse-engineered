package qp;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import com.transsion.mpush.api.IPushRouteHandler;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.push.api.IPushProvider;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements IPushRouteHandler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f73669c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f73670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f73671b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: qp.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.h(this.f73668a);
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(String str) {
        this.f73670a = str;
    }

    private final Intent b(Context context, Map map) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage == null) {
            return null;
        }
        launchIntentForPackage.addFlags(335544320);
        f(launchIntentForPackage, map);
        return launchIntentForPackage;
    }

    private final Intent c(String str, Map map) {
        if (str == null || StringsKt.q0(str)) {
            return null;
        }
        Uri uri = Uri.parse(str);
        if (!k(uri)) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.addFlags(335544320);
        f(intent, map);
        return intent;
    }

    private final Intent d(Context context, String str, Map map) {
        if (str != null && !StringsKt.q0(str)) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(335544320);
            f(intent, map);
            return intent;
        }
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage == null) {
            return null;
        }
        launchIntentForPackage.addFlags(335544320);
        f(launchIntentForPackage, map);
        return launchIntentForPackage;
    }

    private final Intent e(Context context, String str, Map map) {
        IPushProvider iPushProvider = (IPushProvider) TheRouter.d(IPushProvider.class, new Object[0]);
        if (iPushProvider == null) {
            return null;
        }
        Intent intentA = iPushProvider.a(context);
        intentA.setAction("android.intent.action.VIEW");
        intentA.addFlags(872415232);
        if (str != null && !StringsKt.q0(str)) {
            intentA.setData(Uri.parse(str));
        }
        f(intentA, map);
        return intentA;
    }

    private final void f(Intent intent, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            intent.putExtra((String) entry.getKey(), (String) entry.getValue());
        }
    }

    private final Set g() {
        return (Set) this.f73671b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set h(b bVar) {
        return bVar.i();
    }

    private final Set i() {
        Uri uri;
        String scheme;
        String str = this.f73670a;
        String str2 = null;
        if (str != null && (uri = Uri.parse(str)) != null && (scheme = uri.getScheme()) != null && !StringsKt.q0(scheme)) {
            str2 = scheme;
        }
        Set setB = SetsKt.b();
        if (str2 != null) {
            setB.add(str2);
        }
        return SetsKt.a(setB);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0010  */
    private final String j(String str) {
        if (str == null) {
            str = this.f73670a;
            if (str != null || StringsKt.q0(str)) {
            }
        } else {
            if (StringsKt.q0(str)) {
                str = null;
            }
            if (str == null) {
                str = this.f73670a;
                return str != null ? null : null;
            }
        }
        return str;
    }

    private final boolean k(Uri uri) {
        String scheme = uri.getScheme();
        if (scheme == null) {
            return false;
        }
        Locale ROOT = Locale.ROOT;
        Intrinsics.g(ROOT, "ROOT");
        String lowerCase = scheme.toLowerCase(ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (lowerCase == null) {
            return false;
        }
        return !g().contains(lowerCase);
    }

    private final boolean l(Context context, Intent intent, String str) {
        Object objM454constructorimpl;
        if (intent == null) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            context.startActivity(intent);
            objM454constructorimpl = Result.m454constructorimpl(Boolean.TRUE);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "AppPushRouteHandler", str + ": " + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    private final void m(Context context, String str, String str2, Map map) throws JSONException {
        String string;
        lg.a.C0828a.f(lg.a.f68839a, "AppPushRouteHandler", "【激活广告推送】路由结果：" + str + " → " + str2, false, 4, null);
        try {
            String str3 = (String) map.get("msg_extra_map");
            if (str3 == null) {
                str3 = "{}";
            }
            JSONObject jSONObject = new JSONObject(str3);
            jSONObject.put("clickResult", str2);
            string = jSONObject.toString();
        } catch (Exception unused) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("clickResult", str2);
            String str4 = (String) map.get("clickArea");
            if (str4 != null) {
                jSONObject2.put("clickArea", str4);
            }
            string = jSONObject2.toString();
        }
        Intrinsics.e(string);
        LocalPushMessage localPushMessage = new LocalPushMessage(0, null, null, null, null, null, null, null, null, null, 0L, 0, 0L, false, false, null, false, 0, 262143, null);
        String str5 = (String) map.get("msg_id");
        if (str5 == null) {
            str5 = "";
        }
        localPushMessage.setMessageId(str5);
        String str6 = (String) map.get("msg_source");
        if (str6 == null) {
            str6 = "";
        }
        localPushMessage.setSource(str6);
        String str7 = (String) map.get("msg_type");
        if (str7 == null) {
            str7 = "";
        }
        localPushMessage.setType(str7);
        String str8 = (String) map.get("msg_style");
        if (str8 == null) {
            str8 = "";
        }
        localPushMessage.setStyle(str8);
        String str9 = (String) map.get("deeplink");
        localPushMessage.setDeeplink(str9 != null ? str9 : "");
        localPushMessage.setExtraMap(string);
        ln.b.f68987a.g(context, localPushMessage, (String) map.get("channel_id"), (String) map.get("msg_source"));
    }

    @Override // com.transsion.mpush.api.IPushRouteHandler
    public void onHandleRoute(Context context, String str, Map extras) throws JSONException {
        Intent launchIntentForPackage;
        Intrinsics.h(context, "context");
        Intrinsics.h(extras, "extras");
        String str2 = (String) extras.get("target_package_name");
        if (str2 != null && !StringsKt.q0(str2)) {
            try {
                launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str2);
            } catch (Exception unused) {
                launchIntentForPackage = null;
            }
            if (launchIntentForPackage != null && l(context, launchIntentForPackage, "target package error")) {
                m(context, str2, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, extras);
                return;
            }
            m(context, str2, "launch_failed", extras);
        }
        String strJ = j(str);
        if (l(context, c(strJ, extras), "start external intent error") || l(context, e(context, strJ, extras), "start provider intent error") || l(context, d(context, strJ, extras), "start fallback intent error") || l(context, b(context, extras), "start app launch intent error")) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "AppPushRouteHandler", "app launch intent is null", false, 4, null);
    }
}
