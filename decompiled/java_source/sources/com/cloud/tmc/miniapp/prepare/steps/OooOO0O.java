package com.cloud.tmc.miniapp.prepare.steps;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class OooOO0O implements PackageDownloadCallback {
    public final /* synthetic */ com.cloud.tmc.miniapp.dialog.Oooo0 OooO00o;
    public final /* synthetic */ PrepareContext OooO0O0;
    public final /* synthetic */ String OooO0OO;
    public final /* synthetic */ String OooO0Oo;
    public final /* synthetic */ PrepareController OooO0o;
    public final /* synthetic */ AppModel OooO0o0;
    public final /* synthetic */ OooOOO0 OooO0oO;

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.cloud.tmc.miniapp.dialog.Oooo0 oooo0 = OooOO0O.this.OooO00o;
            if (oooo0 != null) {
                oooo0.OooO00o(100);
                OooOO0O.this.OooO00o.dismiss();
            }
        }
    }

    public OooOO0O(OooOOO0 oooOOO0, com.cloud.tmc.miniapp.dialog.Oooo0 oooo0, PrepareContext prepareContext, String str, String str2, AppModel appModel, PrepareController prepareController) {
        this.OooO0oO = oooOOO0;
        this.OooO00o = oooo0;
        this.OooO0O0 = prepareContext;
        this.OooO0OO = str;
        this.OooO0Oo = str2;
        this.OooO0o0 = appModel;
        this.OooO0o = prepareController;
    }

    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
    public void onCancel(String str, String str2) {
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooO0O0.getAppId(), OooOO0.OooO00o(this.OooO0O0, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_USER_EXIT.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, this.OooO0oO.OooO0oo ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, "100000").putData(TmcConstants.TRACK_MPU_OLD_V, this.OooO0OO).putData(TmcConstants.TRACK_MPU_NEW_V, this.OooO0Oo).putData(TmcConstants.TRACK_MPU_RESULT, "IOException").putData(TmcConstants.TRACK_MPU_ERROR_CODE, "D006").putData(TmcConstants.TRACK_MPU_ERROR_MSG, "Canceled"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        try {
            this.OooO0oO.OooO0OO.removeDownloadAppMap(this.OooO0o0.getPackageUrl_MD5());
        } catch (Throwable th2) {
            TmcLogger.e(TmcConstants.TAG, th2);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
    public void onFailed(String str, String str2, String str3, IOException iOException, String str4) {
        com.cloud.tmc.miniapp.dialog.Oooo0 oooo0 = this.OooO00o;
        if (oooo0 != null) {
            oooo0.dismiss();
            MiniAppLaunch.INSTANCE.showErrorDialog(this.OooO0O0.getStartContext());
        }
        AppPrepareUtils.INSTANCE.changeZipDownloadStatus(this.OooO0O0.getStartContext().getApplicationContext(), this.OooO0o0, false);
        TmcLogger.d(this.OooO0oO.OooO00o, "Step_FW_Download_资源包下载失败，" + str3);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooO0O0.getAppId(), OooOO0.OooO00o(this.OooO0O0, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_FAILED.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, this.OooO0oO.OooO0oo ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, "100000").putData(TmcConstants.TRACK_MPU_OLD_V, this.OooO0OO).putData(TmcConstants.TRACK_MPU_NEW_V, this.OooO0Oo).putData(TmcConstants.TRACK_MPU_RESULT, iOException.getClass().getSimpleName()).putData(TmcConstants.TRACK_MPU_ERROR_CODE, str2).putData(TmcConstants.TRACK_MPU_ERROR_MSG, iOException.getMessage()), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        try {
            this.OooO0oO.OooO0OO.removeDownloadAppMap(this.OooO0o0.getPackageUrl_MD5());
        } catch (Throwable th2) {
            TmcLogger.e(TmcConstants.TAG, th2);
        }
        if (this.OooO0oO.OooO0oo) {
            if (!TextUtils.isEmpty(this.OooO0OO) && !TextUtils.isEmpty(this.OooO0Oo) && MiniAppLaunch.INSTANCE.checkFwVersionUpdate(this.OooO0OO, this.OooO0Oo)) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooO0O0.getAppId(), OooOO0.OooO00o(this.OooO0O0, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL.putData(TmcConstants.TRACK_MPU_APPID, this.OooO0o0.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, this.OooO0OO).putData(TmcConstants.TRACK_MPU_NEW_V, this.OooO0Oo).putData(TmcConstants.TRACK_MPU_RESULT, "DOWNLOAD_FAIL"), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
            }
            this.OooO0o.moveToError(new PrepareException("4", "download error:" + str3 + "   url:" + this.OooO0o0.getPackageUrl()));
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
    public void onFinish(@Nullable String str, String str2) {
        TmcLogger.d(this.OooO0oO.OooO00o, "Step_FW_Download_资源包下载完成");
        ExecutorUtils.runOnMain(new OooO00o());
        AppPrepareUtils.INSTANCE.changeZipDownloadStatus(this.OooO0O0.getStartContext().getApplicationContext(), this.OooO0o0, true);
        this.OooO0O0.setFrameWorkModel(this.OooO0o0);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooO0O0.getAppId(), OooOO0.OooO00o(this.OooO0O0, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_SUCCESS.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, this.OooO0oO.OooO0oo ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, "100000").putData(TmcConstants.TRACK_MPU_OLD_V, this.OooO0OO).putData(TmcConstants.TRACK_MPU_NEW_V, this.OooO0Oo), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID), "");
        try {
            this.OooO0oO.OooO0OO.removeDownloadAppMap(this.OooO0o0.getPackageUrl_MD5());
        } catch (Throwable th2) {
            TmcLogger.e(TmcConstants.TAG, th2);
        }
        OooOOO0 oooOOO0 = this.OooO0oO;
        if (oooOOO0.OooO0oo) {
            TmcLogger.d(oooOOO0.OooO00o, "Step_FW_Download_跳转到下一流程");
            PrepareController prepareController = this.OooO0o;
            prepareController.unlock(prepareController);
            this.OooO0o.moveToNext();
            return;
        }
        try {
            if (MiniAppLaunch.INSTANCE.checkEnableBackgroundUnzip()) {
                com.cloud.tmc.miniapp.utils.OooOO0 oooOO0 = com.cloud.tmc.miniapp.utils.OooOO0.OooO00o;
                Context context = this.OooO0O0.getStartContext();
                AppModel appModel = this.OooO0o0;
                Intrinsics.h(context, "context");
                Intrinsics.h(appModel, "appModel");
                com.cloud.tmc.miniapp.utils.OooOO0.OooO00o(oooOO0, context, appModel, false, false, 12);
            }
        } catch (Throwable th3) {
            TmcLogger.e(TmcConstants.TAG, th3);
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
    public void onPrepare(String str, String str2) {
    }

    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
    public void onProgress(String str, int i11, String str2) {
        if (this.OooO0oO.OooO0oo) {
            com.cloud.tmc.miniapp.dialog.Oooo0 oooo0 = this.OooO00o;
            if (oooo0 != null) {
                oooo0.OooO00o(i11);
            }
            if (i11 % 5 == 0) {
                TmcLogger.d(this.OooO0oO.OooO00o, "Step_FW_Download_下载资源包" + i11);
            }
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
    public /* synthetic */ void progressUpdate(String str, int i11, String str2, long j11, long j12) {
        com.cloud.tmc.kernel.proxy.network.a.a(this, str, i11, str2, j11, j12);
    }
}
