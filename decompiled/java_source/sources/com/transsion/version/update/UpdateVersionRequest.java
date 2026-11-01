package com.transsion.version.update;

import android.app.Activity;
import android.os.Build;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.push.PushConstants;
import com.transsion.version.update.dialog.UpdateDialog;
import com.transsion.web.api.WebConstants;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class UpdateVersionRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f57525a = "update";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private n0 f57526b = o0.a(y0.b());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f57527c = LazyKt.b(new Function0() { // from class: com.transsion.version.update.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UpdateVersionRequest.g();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RemoteVersionInfo f57528d;

    private final boolean f(NoticeConfig noticeConfig) {
        String updateVersionName;
        int notifyTimes = noticeConfig != null ? noticeConfig.getNotifyTimes() : 3;
        long notifyInterval = noticeConfig != null ? (long) noticeConfig.getNotifyInterval() : 24L;
        if (noticeConfig == null || (updateVersionName = noticeConfig.getUpdateVersionName()) == null) {
            updateVersionName = "";
        }
        d dVar = d.f57530a;
        String string = dVar.b().getString("showed_target_version_name", "");
        boolean z10 = false;
        int i11 = dVar.b().getInt("update_dialog_showed_times", 0);
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.f57525a, "checkShowUpdateDialog 之前已展示版本 " + string + "   计划版本 " + updateVersionName + " 已展示次数 " + i11, false, 4, null);
        if (!Intrinsics.c(string, updateVersionName)) {
            dVar.b().putInt("update_dialog_showed_times", 0);
            i11 = 0;
        }
        long j11 = 60;
        boolean z11 = ((notifyInterval * j11) * j11) * ((long) 1000) < System.currentTimeMillis() - dVar.b().getLong("update_dialog_show_timestamp", 0L);
        if (i11 < notifyTimes && z11) {
            z10 = true;
        }
        lg.a.C0828a.f(c0828a, this.f57525a, "checkShowUpdateDialog 检查结果为 " + z10 + " 已展示次数 " + i11 + " 提醒次数 " + notifyTimes + " 间隔时长为 " + notifyInterval + " 小时 间隔时长是否合格 " + z11, false, 4, null);
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a g() {
        return (a) zg.c.f79414e.a().h(a.class);
    }

    private final boolean i() {
        d dVar = d.f57530a;
        boolean z10 = dVar.b().getBoolean("NEW_USER_FIRST_LAUNCH", true);
        if (z10) {
            dVar.b().putBoolean("NEW_USER_FIRST_LAUNCH", false);
        }
        return z10;
    }

    private final void j(String str, RemoteVersionInfo remoteVersionInfo) {
        NoticeConfig noticeConfig;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "check");
        String updateVersionName = null;
        linkedHashMap.put("check_result", String.valueOf(remoteVersionInfo != null ? Boolean.valueOf(remoteVersionInfo.getHasUpdate()) : null));
        linkedHashMap.put(PushConstants.PUSH_SERVICE_TYPE_FORCE_UPDATE, String.valueOf(remoteVersionInfo != null ? Boolean.valueOf(remoteVersionInfo.getForceUpdate()) : null));
        if (remoteVersionInfo != null && (noticeConfig = remoteVersionInfo.getNoticeConfig()) != null) {
            updateVersionName = noticeConfig.getUpdateVersionName();
        }
        linkedHashMap.put("target_version_name", String.valueOf(updateVersionName));
        linkedHashMap.put(WebConstants.PAGE_FROM, str);
        e.f57538a.b(linkedHashMap);
    }

    private final void k(Activity activity, final RemoteVersionInfo remoteVersionInfo, final String str, boolean z10, String str2) {
        if (activity instanceof FragmentActivity) {
            UpdateDialog updateDialogA = UpdateDialog.INSTANCE.a(remoteVersionInfo, z10, new Function1() { // from class: com.transsion.version.update.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UpdateVersionRequest.m(str, remoteVersionInfo, ((Boolean) obj).booleanValue());
                }
            });
            if (!(Build.VERSION.SDK_INT >= 24 ? ((FragmentActivity) activity).isInPictureInPictureMode() : false)) {
                FragmentActivity fragmentActivity = (FragmentActivity) activity;
                FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                String simpleName = UpdateDialog.class.getSimpleName();
                if (!fragmentActivity.isFinishing() && !fragmentActivity.isDestroyed() && !supportFragmentManager.T0() && !updateDialogA.isAdded() && supportFragmentManager.k0(simpleName) == null) {
                    updateDialogA.k0(activity, simpleName);
                }
            }
        } else {
            fx.h hVarA = fx.h.f63042g.a(activity, remoteVersionInfo, z10, new Function1() { // from class: com.transsion.version.update.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UpdateVersionRequest.n(str, remoteVersionInfo, ((Boolean) obj).booleanValue());
                }
            });
            if (!activity.isInPictureInPictureMode()) {
                hVarA.g(activity);
            }
        }
        e.f57538a.c(str, z10, "mb", str2);
    }

    static /* synthetic */ void l(UpdateVersionRequest updateVersionRequest, Activity activity, RemoteVersionInfo remoteVersionInfo, String str, boolean z10, String str2, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            str2 = "";
        }
        updateVersionRequest.k(activity, remoteVersionInfo, str, z10, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(String str, RemoteVersionInfo remoteVersionInfo, boolean z10) {
        e.f57538a.a(str, z10, "mb");
        if (z10) {
            new hx.a().a(str, Utils.a(), remoteVersionInfo);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(String str, RemoteVersionInfo remoteVersionInfo, boolean z10) {
        e.f57538a.a(str, z10, "mb");
        if (z10) {
            new hx.a().a(str, Utils.a(), remoteVersionInfo);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(final Activity activity, final String str, final RemoteVersionInfo remoteVersionInfo, final boolean z10) {
        String updateVersionName;
        if (!UpdateManager.f57518f.a().d()) {
            l(this, activity, remoteVersionInfo, str, z10, null, 16, null);
            return;
        }
        NoticeConfig noticeConfig = remoteVersionInfo.getNoticeConfig();
        if (noticeConfig == null || (updateVersionName = noticeConfig.getUpdateVersionName()) == null) {
            updateVersionName = "";
        }
        gx.a.f64026a.a(str, z10, activity, updateVersionName, new Function1() { // from class: com.transsion.version.update.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UpdateVersionRequest.p(this.f57539a, activity, remoteVersionInfo, str, z10, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p(UpdateVersionRequest updateVersionRequest, Activity activity, RemoteVersionInfo remoteVersionInfo, String str, boolean z10, String errorMsg) {
        Intrinsics.h(errorMsg, "errorMsg");
        updateVersionRequest.k(activity, remoteVersionInfo, str, z10, errorMsg);
        return Unit.f67061a;
    }

    public final a h() {
        return (a) this.f57527c.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public final Object q(Activity activity, String str, String str2, String str3, boolean z10, Continuation continuation) throws Throwable {
        UpdateVersionRequest$startCheckUpdate$1 updateVersionRequest$startCheckUpdate$1;
        boolean z11;
        Activity activity2;
        String str4;
        if (continuation instanceof UpdateVersionRequest$startCheckUpdate$1) {
            updateVersionRequest$startCheckUpdate$1 = (UpdateVersionRequest$startCheckUpdate$1) continuation;
            int i11 = updateVersionRequest$startCheckUpdate$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                updateVersionRequest$startCheckUpdate$1.label = i11 - Integer.MIN_VALUE;
            } else {
                updateVersionRequest$startCheckUpdate$1 = new UpdateVersionRequest$startCheckUpdate$1(this, continuation);
            }
        } else {
            updateVersionRequest$startCheckUpdate$1 = new UpdateVersionRequest$startCheckUpdate$1(this, continuation);
        }
        Object objA = updateVersionRequest$startCheckUpdate$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = updateVersionRequest$startCheckUpdate$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objA);
                a aVarH = h();
                updateVersionRequest$startCheckUpdate$1.L$0 = activity;
                updateVersionRequest$startCheckUpdate$1.L$1 = str;
                z11 = z10;
                updateVersionRequest$startCheckUpdate$1.Z$0 = z11;
                updateVersionRequest$startCheckUpdate$1.label = 1;
                objA = aVarH.a(str2, "", updateVersionRequest$startCheckUpdate$1);
                if (objA == objF) {
                    return objF;
                }
                activity2 = activity;
                str4 = str;
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                boolean z12 = updateVersionRequest$startCheckUpdate$1.Z$0;
                String str5 = (String) updateVersionRequest$startCheckUpdate$1.L$1;
                Activity activity3 = (Activity) updateVersionRequest$startCheckUpdate$1.L$0;
                ResultKt.b(objA);
                z11 = z12;
                str4 = str5;
                activity2 = activity3;
            }
            BaseDto baseDto = (BaseDto) objA;
            if (Intrinsics.c(baseDto != null ? baseDto.getCode() : null, "0") && baseDto.getData() != null) {
                RemoteVersionInfo remoteVersionInfo = (RemoteVersionInfo) baseDto.getData();
                this.f57528d = remoteVersionInfo;
                j(str4, remoteVersionInfo);
                if (remoteVersionInfo != null && remoteVersionInfo.getHasUpdate()) {
                    NoticeConfig noticeConfig = remoteVersionInfo.getNoticeConfig();
                    if (noticeConfig != null) {
                        d.f57530a.b().putInt("target_version_code", noticeConfig.getUpdateVersionCode());
                    }
                    boolean forceUpdate = remoteVersionInfo.getForceUpdate();
                    if (!forceUpdate && i()) {
                        lg.a.C0828a.f(lg.a.f68839a, this.f57525a, "新用户首次启动不展示 非强制 更新弹窗", false, 4, null);
                    } else if (forceUpdate || z11 || f(remoteVersionInfo.getNoticeConfig())) {
                        lg.a.C0828a.f(lg.a.f68839a, this.f57525a, "start 展示 更新弹窗", false, 4, null);
                        k.d(this.f57526b, y0.c(), null, new UpdateVersionRequest$startCheckUpdate$3(this, activity2, str4, remoteVersionInfo, z11, null), 2, null);
                    }
                    return Boxing.a(true);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return Boxing.a(false);
    }
}
