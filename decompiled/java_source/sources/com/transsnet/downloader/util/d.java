package com.transsnet.downloader.util;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.PowerManager;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.baselib.utils.ActivityPermissionUtil;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.dialog.RequestAuthorizationDialog;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f59924a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f59925b;

    private d() {
    }

    public static /* synthetic */ void f(d dVar, Context context, String str, Function0 function0, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            function0 = null;
        }
        dVar.e(context, str, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(Ref.BooleanRef booleanRef, Context context, String str, Function0 function0) {
        booleanRef.element = true;
        f59924a.l(context, str, function0);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Ref.BooleanRef booleanRef, Context context, DialogInterface dialogInterface) {
        if (booleanRef.element) {
            return;
        }
        bf.c.f16466a.c(context);
    }

    public static /* synthetic */ void m(d dVar, Context context, String str, Function0 function0, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            function0 = null;
        }
        dVar.l(context, str, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(Function0 function0) {
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f67061a;
    }

    public final void d() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        bVar.b().putLong("key_showed_times", bVar.b().getLong("key_showed_times", 0L) + 1);
        bVar.b().putLong("key_show_last_time", System.currentTimeMillis());
    }

    public final void e(final Context context, final String pageFrom, final Function0 function0) {
        String value;
        Integer numV;
        String value2;
        Long lX;
        Intrinsics.h(context, "context");
        Intrinsics.h(pageFrom, "pageFrom");
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        long j11 = 0;
        long j12 = bVar.b().getLong("key_show_last_time", 0L);
        long j13 = bVar.b().getLong("key_showed_times", 0L);
        sm.f.a aVar = sm.f.f75407c;
        ConfigBean configBeanC = aVar.a().c("key_total_show_times", false);
        long jLongValue = (configBeanC == null || (value2 = configBeanC.getValue()) == null || (lX = StringsKt.x(value2)) == null) ? 3L : lX.longValue();
        long j14 = jLongValue > 0 ? jLongValue : 3L;
        ConfigBean configBeanC2 = aVar.a().c("sb_battery_interval_day", false);
        int iIntValue = (configBeanC2 == null || (value = configBeanC2.getValue()) == null || (numV = StringsKt.v(value)) == null) ? 10 : numV.intValue();
        int i11 = iIntValue > 0 ? iIntValue : 10;
        boolean zF = com.blankj.utilcode.util.c0.f(j12);
        if (TimeUtilKt.c() - TimeUtilKt.d(j12) > i11) {
            bVar.b().putLong("key_showed_times", 0L);
        } else {
            j11 = j13;
        }
        if (zF || j14 <= j11) {
            if (function0 != null) {
                function0.invoke();
                return;
            }
            return;
        }
        if (j(context)) {
            if (function0 != null) {
                function0.invoke();
                return;
            }
            return;
        }
        RequestAuthorizationDialog requestAuthorizationDialogA = RequestAuthorizationDialog.INSTANCE.a();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        requestAuthorizationDialogA.t0(new Function0() { // from class: com.transsnet.downloader.util.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.g(booleanRef, context, pageFrom, function0);
            }
        });
        Dialog dialog = requestAuthorizationDialogA.getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(true);
        }
        requestAuthorizationDialogA.j0(new DialogInterface.OnDismissListener() { // from class: com.transsnet.downloader.util.c
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                d.h(booleanRef, context, dialogInterface);
            }
        });
        if (bf.c.f16466a.b(requestAuthorizationDialogA, "authorization_dialog")) {
            requestAuthorizationDialogA.k0(context, "authorization_dialog");
        }
    }

    public final void i(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        Activity activityB = com.blankj.utilcode.util.a.b();
        if (activityB == null || activityB.isFinishing() || activityB.isDestroyed()) {
            return;
        }
        f(f59924a, activityB, pageFrom, null, 4, null);
    }

    public final boolean j(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("power");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        boolean zIsIgnoringBatteryOptimizations = ((PowerManager) systemService).isIgnoringBatteryOptimizations(Utils.a().getPackageName());
        if (!f59925b) {
            HashMap map = new HashMap();
            map.put("battery_opt", String.valueOf(zIsIgnoringBatteryOptimizations));
            hj.i.f64505a.s("battery_opt", "app_perf", map);
            f59925b = true;
        }
        return zIsIgnoringBatteryOptimizations;
    }

    public final void k(Context context) {
        Intrinsics.h(context, "context");
        try {
            Intent intent = new Intent();
            intent.setAction("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS");
            context.startActivity(intent);
            HashMap map = new HashMap();
            map.put(EventConstants.KEY_ACTION, "system_battery_page_show");
            hj.i.f64505a.D("download_authorization", map);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public final void l(Context context, String pageFrom, final Function0 function0) {
        Intrinsics.h(context, "context");
        Intrinsics.h(pageFrom, "pageFrom");
        try {
            ActivityPermissionUtil.f43373a.d("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS", "android.settings.APPLICATION_DETAILS_SETTINGS", 11101, new Function0() { // from class: com.transsnet.downloader.util.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return d.n(function0);
                }
            });
            HashMap map = new HashMap();
            map.put(EventConstants.KEY_ACTION, "system_dialog_show");
            map.put(WebConstants.PAGE_FROM, pageFrom);
            hj.i.f64505a.D("download_authorization", map);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
