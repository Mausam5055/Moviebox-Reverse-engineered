package bw;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.push.PushConstants;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class l {
    public static /* synthetic */ void a(int i11, int i12, String str, String str2, int i13) {
        if ((i13 & 4) != 0) {
            str = null;
        }
        if ((i13 & 8) != 0) {
            str2 = null;
        }
        b(i11, i12, str, str2, com.transsion.upgradesdk.bean.c.STATUS_DEFAULT);
    }

    public static void b(int i11, int i12, String str, String str2, com.transsion.upgradesdk.bean.c customType) {
        Intrinsics.h(customType, "customType");
        Bundle bundle = new Bundle();
        bundle.putInt("t", i11);
        if (i12 > 0) {
            bundle.putInt("s", i12);
        }
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("c", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("m", str2);
        }
        int i13 = customType.f56592a;
        if (i13 > 0) {
            bundle.putInt("customType", i13);
        }
        g("ps_upgrade_sdk_event", bundle);
    }

    public static void c(int i11, int i12, String str, String str2, com.transsion.upgradesdk.bean.c customType, Boolean bool, Boolean bool2, int i13) {
        if ((i13 & 4) != 0) {
            str = null;
        }
        if ((i13 & 8) != 0) {
            str2 = null;
        }
        if ((i13 & 16) != 0) {
            customType = com.transsion.upgradesdk.bean.c.STATUS_DEFAULT;
        }
        if ((i13 & 32) != 0) {
            bool = null;
        }
        if ((i13 & 64) != 0) {
            bool2 = null;
        }
        Intrinsics.h(customType, "customType");
        Bundle bundle = new Bundle();
        bundle.putInt("t", i11);
        if (i12 > 0) {
            bundle.putInt("s", i12);
        }
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("c", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("m", str2);
        }
        if (bool2 != null) {
            bundle.putBoolean(PushConstants.PUSH_SERVICE_TYPE_SHOW, bool2.booleanValue());
        }
        if (bool != null) {
            bundle.putBoolean("f", bool.booleanValue());
        }
        int i14 = customType.f56592a;
        if (i14 > 0) {
            bundle.putInt("customType", i14);
        }
        g("ps_upgrade_report_event", bundle);
    }

    public static void d(int i11, boolean z10, com.transsion.upgradesdk.bean.c customType) {
        Intrinsics.h(customType, "customType");
        Bundle bundle = new Bundle();
        bundle.putString(AppMeasurementSdk.ConditionalUserProperty.VALUE, "R_USK_X_X");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
            jSONObject.put("isManual", z10);
            jSONObject.put("customType", customType.f56592a);
            bundle.putString("extraValue", jSONObject.toString());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        g("ps_common_exposure", bundle);
    }

    public static void e(int i11, boolean z10, String str, com.transsion.upgradesdk.bean.c customType) {
        Intrinsics.h(customType, "customType");
        Bundle bundle = new Bundle();
        bundle.putString(AppMeasurementSdk.ConditionalUserProperty.VALUE, "R_USK_X_X");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
            jSONObject.put("isManual", z10);
            jSONObject.put("customType", customType.f56592a);
            bundle.putString("extraValue", jSONObject.toString());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        bundle.putString("buttonType", str);
        g("ps_common_click", bundle);
    }

    public static final void f(String eventName, int i11, Bundle bundle) {
        Intrinsics.h(eventName, "$eventName");
        Intrinsics.h(bundle, "$bundle");
        new yi.a(eventName, i11).c(bundle, null).b();
    }

    public static void g(final String str, final Bundle bundle) {
        final int i11 = 1044;
        e.f16937a.execute(new Runnable() { // from class: bw.k
            @Override // java.lang.Runnable
            public final void run() {
                l.f(str, i11, bundle);
            }
        });
    }
}
