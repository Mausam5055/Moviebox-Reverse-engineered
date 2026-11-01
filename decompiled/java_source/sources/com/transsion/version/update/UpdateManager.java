package com.transsion.version.update;

import android.app.Activity;
import android.os.Build;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.tencent.mmkv.MMKV;
import com.transsion.upgradesdk.manager.UpgradeSdkManager;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class UpdateManager {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f57518f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile UpdateManager f57519g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private UpdateVersionRequest f57520a = new UpdateVersionRequest();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f57521b = "TECNO";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f57522c = "INFINIX";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f57523d = "ITEL";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet f57524e = SetsKt.g("TECNO", "INFINIX", "ITEL");

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UpdateManager a() {
            UpdateManager updateManager = UpdateManager.f57519g;
            if (updateManager == null) {
                synchronized (this) {
                    updateManager = new UpdateManager();
                    UpdateManager.f57519g = updateManager;
                }
            }
            return updateManager;
        }
    }

    private final boolean f() {
        d dVar = d.f57530a;
        boolean z10 = false;
        int i11 = dVar.b().getInt("key_last_installed_version_v2", 0);
        int iF = com.blankj.utilcode.util.c.f();
        if (i11 != 0 && i11 < iF) {
            z10 = true;
        }
        if (z10) {
            dVar.b().putInt("key_last_installed_version_v2", iF);
        }
        return z10;
    }

    public static /* synthetic */ Object j(UpdateManager updateManager, Activity activity, String str, String str2, String str3, boolean z10, Continuation continuation, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            z10 = false;
        }
        return updateManager.i(activity, str, str2, str3, z10, continuation);
    }

    public final void c() {
        d dVar = d.f57530a;
        int i11 = dVar.b().getInt("key_last_installed_version_v2", 0);
        String string = dVar.b().getString("key_user_clicked_dialog_type", "");
        if (!f() || string == null || string.length() <= 0) {
            return;
        }
        dVar.b().remove("key_user_clicked_dialog_type");
        e.f57538a.b(MapsKt.l(TuplesKt.a(EventConstants.KEY_ACTION, "update_success"), TuplesKt.a("last_version", String.valueOf(i11)), TuplesKt.a("dialog_type", string)));
    }

    public final boolean d() {
        String string;
        Object obj;
        MMKV mmkvC = bh.a.f16469a.c();
        if (mmkvC == null || (string = mmkvC.getString("phone_brand", Build.BRAND)) == null) {
            string = Build.BRAND;
        }
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        lg.a.C0828a.f(lg.a.f68839a, "update", "brand " + string, false, 4, null);
        Intrinsics.e(string);
        String upperCase = string.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        Iterator it = this.f57524e.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (StringsKt.W(upperCase, (String) next, false, 2, null)) {
                obj = next;
                break;
            }
        }
        return ((String) obj) != null;
    }

    public final void e(String appKey) {
        Intrinsics.h(appKey, "appKey");
        if (d()) {
            UpgradeSdkManager.getInstance().init(Utils.a(), appKey, false);
        }
    }

    public final boolean g() {
        return d.f57530a.b().getInt("target_version_code", 0) > com.blankj.utilcode.util.c.f();
    }

    public final void h(String str) {
        d dVar = d.f57530a;
        dVar.b().putString("showed_target_version_name", str);
        dVar.b().putInt("update_dialog_showed_times", dVar.b().getInt("update_dialog_showed_times", 0) + 1);
        dVar.b().putLong("update_dialog_show_timestamp", System.currentTimeMillis());
        lg.a.C0828a.f(lg.a.f68839a, "update", "记录展示版本为 " + str + "已展示次数为 " + dVar.b().getInt("update_dialog_showed_times", 0), false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object i(Activity activity, String str, String str2, String str3, boolean z10, Continuation continuation) throws Throwable {
        UpdateManager$startCheckUpdate$1 updateManager$startCheckUpdate$1;
        Boolean bool;
        if (continuation instanceof UpdateManager$startCheckUpdate$1) {
            updateManager$startCheckUpdate$1 = (UpdateManager$startCheckUpdate$1) continuation;
            int i11 = updateManager$startCheckUpdate$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                updateManager$startCheckUpdate$1.label = i11 - Integer.MIN_VALUE;
            } else {
                updateManager$startCheckUpdate$1 = new UpdateManager$startCheckUpdate$1(this, continuation);
            }
        } else {
            updateManager$startCheckUpdate$1 = new UpdateManager$startCheckUpdate$1(this, continuation);
        }
        UpdateManager$startCheckUpdate$1 updateManager$startCheckUpdate$2 = updateManager$startCheckUpdate$1;
        Object objQ = updateManager$startCheckUpdate$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = updateManager$startCheckUpdate$2.label;
        if (i12 == 0) {
            ResultKt.b(objQ);
            UpdateVersionRequest updateVersionRequest = this.f57520a;
            if (updateVersionRequest != null) {
                updateManager$startCheckUpdate$2.label = 1;
                objQ = updateVersionRequest.q(activity, str, str2, str3, z10, updateManager$startCheckUpdate$2);
                if (objQ == objF) {
                    return objF;
                }
            } else {
                bool = null;
            }
            c();
            return Boxing.a(Intrinsics.c(bool, Boxing.a(true)));
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objQ);
        bool = (Boolean) objQ;
        c();
        return Boxing.a(Intrinsics.c(bool, Boxing.a(true)));
    }
}
