package com.transsion.commercialization.pslink;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.google.gson.reflect.TypeToken;
import com.transsnet.launcherlib.PalmStoreDownLoadTaskInfo;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class PsLinkServiceHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ky.b f43825b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f43827d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PsLinkServiceHelper f43824a = new PsLinkServiceHelper();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static CopyOnWriteArrayList f43826c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ServiceConnection f43828e = new a();

    public static final class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Intrinsics.h(componentName, "componentName");
            Intrinsics.h(iBinder, "iBinder");
            com.transsion.commercialization.pslink.a aVar = com.transsion.commercialization.pslink.a.f43829a;
            PsLinkServiceHelper psLinkServiceHelper = PsLinkServiceHelper.f43824a;
            aVar.a(psLinkServiceHelper.j() + " --> onServiceConnected() --> 连接成功 --> componentName = " + componentName);
            psLinkServiceHelper.l(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Intrinsics.h(componentName, "componentName");
            com.transsion.commercialization.pslink.a.f43829a.b(PsLinkServiceHelper.f43824a.j() + " --> onServiceDisconnected() --> 断开连接 --> componentName = " + componentName);
            PsLinkServiceHelper.f43825b = null;
            PsLinkInstallReceiver.INSTANCE.d();
        }
    }

    private PsLinkServiceHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String j() {
        String simpleName = PsLinkServiceHelper.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(IBinder iBinder) {
        Object objM454constructorimpl;
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            ky.b bVarY0 = ky.b.a.Y0(iBinder);
            f43825b = bVarY0;
            if (bVarY0 != null) {
                bVarY0.c0(new ky.a.AbstractBinderC0818a() { // from class: com.transsion.commercialization.pslink.PsLinkServiceHelper$register$1$1
                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Code duplicated, block: B:17:0x004a  */
                    /* JADX WARN: Code duplicated, block: B:19:0x005c  */
                    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // ky.a
                    public void N0(String callBackName, String param) {
                        String pkgName;
                        Intrinsics.h(callBackName, "callBackName");
                        Intrinsics.h(param, "param");
                        Object obj = null;
                        switch (callBackName) {
                            case "addTask":
                            case "onAction":
                                Object objE = o.e(param, new TypeToken<PalmStoreDownLoadTaskInfo>() { // from class: com.transsion.commercialization.pslink.PsLinkServiceHelper$register$1$1$callBackCommon$1
                                }.getType());
                                PalmStoreDownLoadTaskInfo palmStoreDownLoadTaskInfo = (PalmStoreDownLoadTaskInfo) objE;
                                obj = objE;
                                pkgName = palmStoreDownLoadTaskInfo != null ? palmStoreDownLoadTaskInfo.getPkgName() : null;
                                break;
                            case "removeTask":
                                pkgName = ((PalmStoreDownLoadTaskInfo) o.e(param, new TypeToken<PalmStoreDownLoadTaskInfo>() { // from class: com.transsion.commercialization.pslink.PsLinkServiceHelper$register$1$1$callBackCommon$info$1
                                }.getType())).getPkgName();
                                break;
                            case "onProgress":
                                Object objE2 = o.e(param, new TypeToken<PalmStoreDownLoadTaskInfo>() { // from class: com.transsion.commercialization.pslink.PsLinkServiceHelper$register$1$1$callBackCommon$1
                                }.getType());
                                PalmStoreDownLoadTaskInfo palmStoreDownLoadTaskInfo2 = (PalmStoreDownLoadTaskInfo) objE2;
                                obj = objE2;
                                pkgName = palmStoreDownLoadTaskInfo2 != null ? palmStoreDownLoadTaskInfo2.getPkgName() : null;
                                break;
                            default:
                                pkgName = "";
                                break;
                        }
                        if (!Intrinsics.c(callBackName, "onProgress") || System.currentTimeMillis() - PsLinkServiceHelper.f43827d >= 1000) {
                            PsLinkServiceHelper psLinkServiceHelper = PsLinkServiceHelper.f43824a;
                            PsLinkServiceHelper.f43827d = System.currentTimeMillis();
                            Iterator it = PsLinkServiceHelper.f43826c.iterator();
                            while (it.hasNext()) {
                                ((b) it.next()).a(callBackName, param, (PalmStoreDownLoadTaskInfo) obj, pkgName);
                            }
                        }
                    }
                }, "Moviebox");
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            objM454constructorimpl = Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        com.transsion.commercialization.pslink.a.f43829a.b(f43824a.j() + " --> register() --> it = " + Log.getStackTraceString(thM457exceptionOrNullimpl));
    }

    public final void g(b psLinkCallBackCommon) {
        Intrinsics.h(psLinkCallBackCommon, "psLinkCallBackCommon");
        if (f43826c.contains(psLinkCallBackCommon)) {
            return;
        }
        f43826c.add(psLinkCallBackCommon);
    }

    public final void h() {
        Object objM454constructorimpl;
        if (f43825b != null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.commercialization.pslink.a aVar = com.transsion.commercialization.pslink.a.f43829a;
            PsLinkServiceHelper psLinkServiceHelper = f43824a;
            aVar.a(psLinkServiceHelper.j() + " --> bindService() --> 开始bindService .... ");
            Intent intent = new Intent();
            intent.setClassName(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, "com.transsnet.launcherlib.services.DispenseCommonService");
            boolean zBindService = Utils.a().bindService(intent, f43828e, 1);
            aVar.a(psLinkServiceHelper.j() + " --> bindService() --> 开始bindService .... --> isConnect = " + zBindService);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            com.transsion.commercialization.pslink.a.f43829a.b(f43824a.j() + " --> bindService() --> " + Log.getStackTraceString(thM457exceptionOrNullimpl));
        }
        PsLinkInstallReceiver.INSTANCE.b();
    }

    public final CopyOnWriteArrayList i() {
        return f43826c;
    }

    public final boolean k() {
        return f43825b == null;
    }

    public final void m(b psLinkCallBackCommon) {
        Intrinsics.h(psLinkCallBackCommon, "psLinkCallBackCommon");
        f43826c.remove(psLinkCallBackCommon);
    }
}
