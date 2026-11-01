package com.transsion.upgradesdk.manager;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import bw.i;
import bw.l;
import bw.n;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.ga.AthenaAnalytics;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import vv.b;
import xv.a;
import yv.c;
import yv.d;
import yv.e;

/* JADX INFO: loaded from: classes6.dex */
public class UpgradeSdkManager {
    private static UpgradeSdkManager INSTANCE;

    public static class DialogParams {
        private WeakReference<Activity> activityRef;
        public UpgradeDialogCallback callback;
        public Integer cancelButtonTextColor;
        public Integer confirmButtonTextColor;
        public int dialogStyle = 0;
        public boolean isManualClick;

        public DialogParams(Activity activity, boolean z10, UpgradeDialogCallback upgradeDialogCallback) {
            this.activityRef = new WeakReference<>(activity);
            this.isManualClick = z10;
            this.callback = upgradeDialogCallback;
        }

        public Activity getActivity() {
            WeakReference<Activity> weakReference = this.activityRef;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }
    }

    private UpgradeSdkManager() {
    }

    public static synchronized UpgradeSdkManager getInstance() {
        try {
            if (INSTANCE == null) {
                INSTANCE = new UpgradeSdkManager();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return INSTANCE;
    }

    public void checkUpgradeTask(UpgradeInfoCallback upgradeInfoCallback) {
        yv.f fVarA = yv.f.f79067o.a();
        try {
            fVarA.f79074f = upgradeInfoCallback;
            if (!fVarA.f79076h) {
                if (upgradeInfoCallback != null) {
                    upgradeInfoCallback.onRequestFail("Not Install Palm Store");
                }
                l.a(2, 7, null, null, 28);
                return;
            }
            l.c(2, 1, null, "3", null, null, null, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
            List listF = fVarA.f();
            if (listF == null) {
                fVarA.b(1);
            } else {
                fVarA.f79080l = true;
                fVarA.c(listF);
            }
            ((zv.f) zv.f.f79477f.getValue()).a();
        } catch (Error e11) {
            e11.printStackTrace();
            if (upgradeInfoCallback != null) {
                upgradeInfoCallback.onRequestFail("check error");
            }
        } catch (Exception e12) {
            e12.printStackTrace();
            if (upgradeInfoCallback != null) {
                upgradeInfoCallback.onRequestFail("check error");
            }
        }
    }

    public void dismissUpgradeDialog() {
        yv.f.f79067o.a().d();
    }

    public UpgradeDialogCallback getUpgradeSdkCallback(boolean z10) {
        return new e(yv.f.f79067o.a(), z10);
    }

    public void init(Application application, String str, boolean z10) {
        d dVar = yv.f.f79067o;
        yv.f fVarA = dVar.a();
        try {
            AthenaAnalytics.Q(application, "updatesdk", 1044, false, false);
            Application application2 = null;
            if (application != null && !TextUtils.isEmpty(str)) {
                Intrinsics.h(application, "<set-?>");
                a.f78447a = application;
                fVarA.f79072d = z10;
                b bVarF = n.f(application);
                Intrinsics.h(bVarF, "<set-?>");
                fVarA.f79069a = bVarF;
                if (TextUtils.isEmpty(fVarA.e().f77448a)) {
                    l.a(1, 2, "2", null, 24);
                    return;
                }
                if (!n.d()) {
                    fVarA.f79076h = false;
                    l.a(1, 2, "3", null, 24);
                    return;
                }
                bw.h hVar = i.f16941b;
                Application application3 = a.f78447a;
                if (application3 == null) {
                    Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                    application3 = null;
                }
                i iVarA = hVar.a(application3);
                Intrinsics.h("KV_UPGRADE_LAST_POP", "key");
                MMKV mmkv = iVarA.f16943a;
                fVarA.f79071c = mmkv != null ? mmkv.d("KV_UPGRADE_LAST_POP", false) : false;
                c.f79060d.a().b(application);
                Application application4 = a.f78447a;
                if (application4 != null) {
                    application2 = application4;
                } else {
                    Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                }
                i iVarA2 = hVar.a(application2);
                Intrinsics.h("KV_UPGRADE_IS_FORCE", "key");
                MMKV mmkv2 = iVarA2.f16943a;
                fVarA.f79073e = mmkv2 != null ? mmkv2.d("KV_UPGRADE_IS_FORCE", false) : false;
                b bVarE = fVarA.e();
                Intrinsics.e(str);
                bVarE.getClass();
                Intrinsics.h(str, "<set-?>");
                bVarE.f77454g = str;
                String msg = "init Finish: " + fVarA.e();
                Intrinsics.h("UpgradeSdkManager", "tag");
                Intrinsics.h(msg, "msg");
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (!bw.g.f16939a && jCurrentTimeMillis - bw.g.f16940b >= 5000) {
                    bw.g.f16940b = jCurrentTimeMillis;
                    if (Log.isLoggable("upgradeSdkLog", 3)) {
                        bw.g.f16939a = true;
                    }
                    boolean z11 = bw.g.f16939a;
                }
                boolean z12 = dVar.a().f79072d;
                fVarA.a();
                return;
            }
            l.a(1, 2, "1", null, 24);
        } catch (Error | Exception unused) {
        }
    }

    public void showUpgradeDialog(DialogParams dialogParams) {
        Bundle arguments;
        aw.i iVar;
        Bundle arguments2;
        com.transsion.upgradesdk.page.f fVar;
        Activity activity = dialogParams.getActivity();
        if (activity == null || activity.isDestroyed()) {
            return;
        }
        yv.f fVarA = yv.f.f79067o.a();
        boolean z10 = dialogParams.isManualClick;
        UpgradeDialogCallback upgradeDialogCallback = dialogParams.callback;
        int i11 = dialogParams.dialogStyle;
        Integer num = dialogParams.cancelButtonTextColor;
        Integer num2 = dialogParams.confirmButtonTextColor;
        bw.g.b("UpgradeSdkManager", "调用开始显示升级弹窗");
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - fVarA.f79082n < 500) {
                bw.g.b("UpgradeSdkManager", "升级弹窗阻塞 - 快速点击");
                return;
            }
            fVarA.f79082n = jCurrentTimeMillis;
            String str = z10 ? "1" : "2";
            com.transsion.upgradesdk.bean.c cVar = com.transsion.upgradesdk.bean.c.DEFAULT;
            l.c(4, 1, null, str, cVar, null, null, 100);
            if (activity.isDestroyed()) {
                bw.g.b("UpgradeSdkManager", "升级弹窗阻塞 - 非当前页面显示");
                l.b(4, 3, "1", str, cVar);
                return;
            }
            if (!fVarA.f79076h) {
                l.b(4, 3, "3", str, cVar);
                return;
            }
            fVarA.f79075g = upgradeDialogCallback;
            new WeakReference(activity);
            if (fVarA.f79070b != null) {
                if (!fVarA.f79073e && !fVarA.f79071c) {
                    l.b(4, 3, "2", str, cVar);
                    bw.g.b("UpgradeSdkManager", "无新版本，不显示升级弹窗");
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("isManualClick", z10);
                bundle.putInt("dialogStyle", i11);
                if (num != null) {
                    bundle.putInt("cancelButtonTextColor", num.intValue());
                }
                if (num2 != null) {
                    bundle.putInt("confirmButtonTextColor", num2.intValue());
                }
                if (!(activity instanceof FragmentActivity)) {
                    aw.i iVar2 = fVarA.f79078j;
                    if (iVar2 == null || (arguments = iVar2.getArguments()) == null || arguments.getInt("dialogStyle") != i11 || ((iVar = fVarA.f79078j) != null && iVar.isVisible())) {
                        aw.i iVar3 = fVarA.f79078j;
                        if (iVar3 != null) {
                            iVar3.dismissAllowingStateLoss();
                        }
                        fVarA.f79078j = null;
                        fVarA.f79078j = new aw.i();
                        bw.g.b("UpgradeSdkManager", "创建新的升级弹窗V4实例，样式: " + i11);
                    }
                    aw.i iVar4 = fVarA.f79078j;
                    if (iVar4 != null) {
                        if (iVar4.isVisible()) {
                            bw.g.b("UpgradeSdkManager", "升级弹窗  -  已展示");
                            l.b(4, 3, "4", str, cVar);
                            return;
                        } else {
                            bw.g.b("UpgradeSdkManager", "升级弹窗  -  开始展示升级弹窗");
                            iVar4.setArguments(bundle);
                            iVar4.show(activity.getFragmentManager(), iVar4.getTag());
                            l.c(4, 2, null, str, cVar, null, null, 100);
                            return;
                        }
                    }
                    return;
                }
                com.transsion.upgradesdk.page.f fVar2 = fVarA.f79077i;
                if (fVar2 == null || (arguments2 = fVar2.getArguments()) == null || arguments2.getInt("dialogStyle") != i11 || ((fVar = fVarA.f79077i) != null && fVar.isVisible())) {
                    com.transsion.upgradesdk.page.f fVar3 = fVarA.f79077i;
                    if (fVar3 != null) {
                        fVar3.dismissAllowingStateLoss();
                    }
                    fVarA.f79077i = null;
                    fVarA.f79077i = new com.transsion.upgradesdk.page.f();
                    bw.g.b("UpgradeSdkManager", "创建新的升级弹窗实例，样式: " + i11);
                }
                com.transsion.upgradesdk.page.f fVar4 = fVarA.f79077i;
                if (fVar4 != null) {
                    if (fVar4.isVisible()) {
                        bw.g.b("UpgradeSdkManager", "升级弹窗  -  已展示");
                        l.b(4, 3, "4", str, cVar);
                        return;
                    }
                    bw.g.b("UpgradeSdkManager", "升级弹窗  -  开始展示升级弹窗");
                    fVar4.setArguments(bundle);
                    FragmentManager supportFragmentManager = ((FragmentActivity) activity).getSupportFragmentManager();
                    Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                    fVar4.Z(supportFragmentManager);
                    l.c(4, 2, null, str, cVar, null, null, 100);
                }
            }
        } catch (Error unused) {
        } catch (Exception e11) {
            l.b(4, 3, "5", e11.toString(), com.transsion.upgradesdk.bean.c.DEFAULT);
        }
    }
}
