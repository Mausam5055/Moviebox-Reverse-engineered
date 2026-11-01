package com.cloud.tmc.miniapp.prepare.steps.subpackage;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.model.SubPackageInfo;
import com.cloud.tmc.integration.utils.SubpackageAppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.manager.TmcResourceManager;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.proxy.IClientStarter;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniapp.utils.OooOOO0;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO0OO extends com.cloud.tmc.miniapp.prepare.steps.structure.OooO0O0 {
    public String OooO;
    public final Integer OooOO0;
    public final OooOO0 OooOO0O;
    public boolean OooOO0o;

    public static final class OooO00o implements PackageDownloadCallback {
        public final /* synthetic */ o000oOoO OooO;
        public final /* synthetic */ boolean OooO00o;
        public final /* synthetic */ OooO0OO OooO0O0;
        public final /* synthetic */ AppModel OooO0OO;
        public final /* synthetic */ String OooO0Oo;
        public final /* synthetic */ PrepareContext OooO0o;
        public final /* synthetic */ String OooO0o0;
        public final /* synthetic */ String OooO0oO;
        public final /* synthetic */ PrepareController OooO0oo;
        public final /* synthetic */ String OooOO0;

        public OooO00o(boolean z10, OooO0OO oooO0OO, AppModel appModel, String str, String str2, PrepareContext prepareContext, String str3, PrepareController prepareController, o000oOoO o000oooo, String str4) {
            this.OooO00o = z10;
            this.OooO0O0 = oooO0OO;
            this.OooO0OO = appModel;
            this.OooO0Oo = str;
            this.OooO0o0 = str2;
            this.OooO0o = prepareContext;
            this.OooO0oO = str3;
            this.OooO0oo = prepareController;
            this.OooO = o000oooo;
            this.OooOO0 = str4;
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onCancel(String str, String str2) {
            try {
                PointAnalyseType pointAnalyseTypePutData = PointAnalyseType.POINT_PACKAGE_DOWNLOAD_USER_EXIT.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, this.OooO00o ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, this.OooO0OO.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, this.OooO0Oo).putData(TmcConstants.TRACK_MPU_NEW_V, this.OooO0o0).putData(TmcConstants.TRACK_MPU_RESULT, "IOException").putData(TmcConstants.TRACK_MPU_ERROR_CODE, "D006").putData(TmcConstants.TRACK_MPU_ERROR_MSG, "Canceled").putData(TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID, this.OooO0o.getStartParams().getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
                Intrinsics.g(pointAnalyseTypePutData, "POINT_PACKAGE_DOWNLOAD_U…                        )");
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooO0o.getAppId(), this.OooO0O0.OooOO0O.OooO00o(pointAnalyseTypePutData), "");
                try {
                    this.OooO0O0.OooO0OO.removeDownloadAppMap(this.OooO0oO);
                } catch (Throwable th2) {
                    TmcLogger.e(TmcConstants.TAG, th2);
                }
            } catch (Throwable th3) {
                TmcLogger.e(TmcConstants.TAG, th3);
            }
        }

        /* JADX WARN: Code duplicated, block: B:40:0x0121  */
        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onFailed(String str, String str2, String str3, IOException iOException, String str4) {
            String str5;
            String simpleName;
            String str6;
            try {
                SubpackageAppPrepareUtils.INSTANCE.changeZipDownloadStatus(this.OooO0o.getStartContext(), this.OooO0OO.getAppId(), this.OooO0oO, false);
                PointAnalyseType pointAnalyseTypePutData = PointAnalyseType.POINT_PACKAGE_DOWNLOAD_FAILED.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, this.OooO00o ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, this.OooO0OO.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, this.OooO0Oo).putData(TmcConstants.TRACK_MPU_NEW_V, this.OooO0o0);
                if (iOException != null) {
                    try {
                        simpleName = iOException.getClass().getSimpleName();
                    } catch (Throwable th2) {
                        th = th2;
                        str5 = TmcConstants.TAG;
                    }
                } else {
                    simpleName = null;
                }
                PointAnalyseType pointAnalyseTypePutData2 = pointAnalyseTypePutData.putData(TmcConstants.TRACK_MPU_RESULT, simpleName).putData(TmcConstants.TRACK_MPU_ERROR_CODE, str2).putData(TmcConstants.TRACK_MPU_ERROR_MSG, iOException != null ? iOException.getMessage() : null).putData(TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID, this.OooO0o.getStartParams().getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
                Intrinsics.g(pointAnalyseTypePutData2, "POINT_PACKAGE_DOWNLOAD_F…                        )");
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooO0o.getAppId(), this.OooO0O0.OooOO0O.OooO00o(pointAnalyseTypePutData2), "");
                try {
                    this.OooO0O0.OooO0OO.removeDownloadAppMap(this.OooO0oO);
                } catch (Throwable th3) {
                    TmcLogger.e(TmcConstants.TAG, th3);
                }
                try {
                    if (!this.OooO00o) {
                        this.OooO.backgroundDownloadZipAsync(this.OooO0OO, false);
                        return;
                    }
                    if (!TextUtils.isEmpty(this.OooO0Oo) && !TextUtils.isEmpty(this.OooO0o0) && (str6 = this.OooO0o0) != null) {
                        String str7 = this.OooO0Oo;
                        AppModel appModel = this.OooO0OO;
                        PrepareContext prepareContext = this.OooO0o;
                        OooO0OO oooO0OO = this.OooO0O0;
                        if (str7 != null) {
                            if (MiniAppLaunch.INSTANCE.compareVersion(str6, str7)) {
                                PointAnalyseType pointAnalyseTypePutData3 = PointAnalyseType.POINT_PACKAGE_UPDATE_FAIL.putData(TmcConstants.TRACK_MPU_APPID, appModel.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, str7).putData(TmcConstants.TRACK_MPU_NEW_V, str6).putData(TmcConstants.TRACK_MPU_RESULT, "DOWNLOAD_FAIL").putData(TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID, prepareContext.getStartParams().getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
                                Intrinsics.g(pointAnalyseTypePutData3, "POINT_PACKAGE_UPDATE_FAI…                        )");
                                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), oooO0OO.OooOO0O.OooO00o(pointAnalyseTypePutData3), "");
                            }
                        }
                    }
                    TmcLogger.d(this.OooO0O0.OooO00o, "Step_Download_资源包下载失败，" + str3);
                    this.OooO0oo.moveToError(new PrepareException("4", "download error:" + str3 + "   url:" + this.OooOO0));
                    return;
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
                str = TmcConstants.TAG;
            }
            str5 = str;
            TmcLogger.e(str5, th);
            if (this.OooO00o) {
                this.OooO0oo.moveToError(new PrepareException("download error"));
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
        public void onFinish(String str, String str2) {
            try {
                TmcLogger.d(this.OooO0O0.OooO00o, "Step_Download_资源包下载完成，进行解压");
                SubpackageAppPrepareUtils.INSTANCE.changeZipDownloadStatus(this.OooO0o.getStartContext(), this.OooO0OO.getAppId(), this.OooO0oO, true);
                PointAnalyseType pointAnalyseTypePutData = PointAnalyseType.POINT_PACKAGE_DOWNLOAD_SUCCESS.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, this.OooO00o ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC).putData(TmcConstants.TRACK_MPU_APPID, this.OooO0OO.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, this.OooO0Oo).putData(TmcConstants.TRACK_MPU_NEW_V, this.OooO0o0).putData(TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID, this.OooO0o.getStartParams().getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
                Intrinsics.g(pointAnalyseTypePutData, "POINT_PACKAGE_DOWNLOAD_S…                        )");
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooO0o.getAppId(), this.OooO0O0.OooOO0O.OooO00o(pointAnalyseTypePutData), "");
                try {
                    this.OooO0O0.OooO0OO.removeDownloadAppMap(this.OooO0oO);
                } catch (Throwable th2) {
                    TmcLogger.e(TmcConstants.TAG, th2);
                }
                if (this.OooO00o) {
                    PrepareController prepareController = this.OooO0oo;
                    prepareController.unlock(prepareController);
                    this.OooO0oo.moveToNext();
                } else {
                    try {
                        if (MiniAppLaunch.INSTANCE.checkEnableBackgroundUnzip()) {
                            OooOOO0.OooO00o.OooO0O0(this.OooO0o.getStartContext(), this.OooO0OO, this.OooO0O0.OooOO0O.OooO0O0(), false, true);
                        }
                    } catch (Throwable th3) {
                        TmcLogger.e(TmcConstants.TAG, th3);
                    }
                    this.OooO.backgroundDownloadZipAsync(this.OooO0OO, true);
                }
            } catch (Throwable th4) {
                TmcLogger.e(TmcConstants.TAG, th4);
                if (this.OooO00o) {
                    this.OooO0oo.moveToError(new PrepareException("download error"));
                }
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onPrepare(String str, String str2) {
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public void onProgress(String str, int i11, String str2) {
            if (this.OooO00o) {
                TmcLogger.d(this.OooO0O0.OooO00o, "Step_Download_下载资源包" + i11);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
        public /* synthetic */ void progressUpdate(String str, int i11, String str2, long j11, long j12) {
            com.cloud.tmc.kernel.proxy.network.a.a(this, str, i11, str2, j11, j12);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OooO0OO() {
        this(null, 0 == true ? 1 : 0, 3);
    }

    public OooO0OO(String str, Integer num) {
        this.OooO = str;
        this.OooOO0 = num;
        this.OooOO0O = new OooOO0();
        this.OooOO0o = true;
    }

    public /* synthetic */ OooO0OO(String str, Integer num, int i11) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? 1 : null);
    }

    public static final void OooO00o(OooO0OO this$0, PrepareContext context, o000oOoO callback) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(context, "$context");
        Intrinsics.h(callback, "$callback");
        this$0.getClass();
        try {
            ((IClientStarter) TmcProxy.get(IClientStarter.class)).createSubpackagePrepareController(context, callback, 2, this$0.OooOO0O.OooO0OO).start();
        } catch (Throwable th2) {
            TmcLogger.e(this$0.OooO00o, th2);
        }
    }

    public final void OooO00o(PrepareContext prepareContext, PrepareController prepareController) {
        if (!prepareContext.getVirtualStart()) {
            Bundle bundle = new Bundle();
            bundle.putInt(ChainPoint.DOWNLOAD_APP_MODE, 1);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle);
        }
        prepareController.moveToNext();
    }

    /* JADX WARN: Code duplicated, block: B:64:0x016a  */
    /* JADX WARN: Code duplicated, block: B:66:0x0170  */
    /* JADX WARN: Code duplicated, block: B:69:0x0192  */
    /* JADX WARN: Code duplicated, block: B:73:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:77:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:78:0x01b0  */
    public final void OooO00o(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo, AppModel appModel, String str, boolean z10) {
        String mainPackageUrl;
        String str2;
        OooOO0 oooOO0;
        String mainPackageZipPath;
        String str3;
        SubPackageInfo subPackageInfo;
        KVStorageProxy kVStorageProxy;
        SubPackageInfo subPackageInfoOooO0O0;
        String subPackageUrlMD5;
        String str4;
        if (!prepareContext.getVirtualStart()) {
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "app");
            com.cloud.tmc.miniapp.prepare.steps.OooO0O0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, bundle, ChainPoint.CHAIN_ID);
            bundle.putInt(ChainPoint.DOWNLOAD_APP_MODE, z10 ? 2 : 1);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), PointAnalyseType.POINT_CHAIN_INSERT, "", bundle);
        }
        OooOO0 oooOO1 = this.OooOO0O;
        oooOO1.getClass();
        String mainPackageUrl2 = appModel != null ? appModel.getMainPackageUrl() : null;
        if (mainPackageUrl2 == null || mainPackageUrl2.length() == 0) {
            SubPackageInfo subPackageInfo2 = oooOO1.OooO00o;
            String subPackageUrl = subPackageInfo2 != null ? subPackageInfo2.getSubPackageUrl() : null;
            if (subPackageUrl == null || subPackageUrl.length() == 0) {
                if (!z10) {
                    o000oooo.backgroundDownloadZipAsync(appModel, false);
                }
                prepareController.moveToError(new PrepareException(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY, "packageUrl is null or empty"));
                return;
            }
        }
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        String miniAppVersion = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getSubpackageAppModelFromUsed(prepareContext.getStartContext(), prepareContext.getAppId()));
        String miniAppVersion2 = miniAppLaunch.getMiniAppVersion(this.OooO0O0.getAppModelFromPre(prepareContext.getStartContext(), prepareContext.getAppId()));
        if (z10 && !TextUtils.isEmpty(miniAppVersion) && !TextUtils.isEmpty(miniAppVersion2) && miniAppVersion2 != null && miniAppVersion != null && miniAppLaunch.compareVersion(miniAppVersion2, miniAppVersion)) {
            PointAnalyseType pointAnalyseTypeOooO00o = com.cloud.tmc.miniapp.prepare.steps.OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, com.cloud.tmc.miniapp.prepare.steps.OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_UPDATE_START, TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID);
            Intrinsics.g(pointAnalyseTypeOooO00o, "POINT_PACKAGE_UPDATE_STA…                        )");
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), this.OooOO0O.OooO00o(pointAnalyseTypeOooO00o), "");
        }
        PointAnalyseType pointAnalyseTypeOooO00o2 = com.cloud.tmc.miniapp.prepare.steps.OooOO0.OooO00o(prepareContext, TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE, com.cloud.tmc.miniapp.prepare.steps.OooO.OooO00o(appModel, PointAnalyseType.POINT_PACKAGE_DOWNLOAD_START.putData(TmcConstants.TRACK_MPU_DOWNLOAD_TYPE, z10 ? TmcConstants.KEY_SYNC : TmcConstants.KEY_ASYNC), TmcConstants.TRACK_MPU_APPID, TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2), TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID);
        Intrinsics.g(pointAnalyseTypeOooO00o2, "POINT_PACKAGE_DOWNLOAD_S…N_ID, \"-1\")\n            )");
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(prepareContext.getAppId(), this.OooOO0O.OooO00o(pointAnalyseTypeOooO00o2), "");
        int i11 = z10 ? 2 : 1;
        OooOO0 oooOO2 = this.OooOO0O;
        if (oooOO2.OooO0O0) {
            SubPackageInfo subPackageInfo3 = oooOO2.OooO00o;
            if (subPackageInfo3 != null) {
                mainPackageUrl = subPackageInfo3.getSubPackageUrl();
            } else {
                str2 = null;
            }
            if (str2 != null && str2.length() != 0 && this.OooOO0O.OooO0O0 && this.OooO0OO.isDownloaded(prepareContext.getStartContext(), appModel.getAppId(), str2) && !SubpackageAppPrepareUtils.INSTANCE.checkTarUnCompressStatus(prepareContext.getStartContext(), appModel.getAppId(), str2)) {
                kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
                StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                subPackageInfoOooO0O0 = this.OooOO0O.OooO0O0();
                if (subPackageInfoOooO0O0 != null) {
                    subPackageUrlMD5 = subPackageInfoOooO0O0.getSubPackageUrlMD5();
                } else {
                    subPackageUrlMD5 = null;
                }
                str4 = String.format(TmcConstants.SUBPACKAGE_STORAGE_KEY_DECOMPRESSION_COUNT_FORMAT, Arrays.copyOf(new Object[]{subPackageUrlMD5}, 1));
                Intrinsics.g(str4, "format(format, *args)");
                if (kVStorageProxy.getInt(prepareContext.getStartContext(), TmcConstants.SUBPACKAGE_STORAGE_FILE, str4) <= 1) {
                    prepareController.moveToNext();
                    return;
                }
            }
            TmcResourceManager tmcResourceManager = this.OooO0OO;
            String appId = appModel.getAppId();
            oooOO0 = this.OooOO0O;
            if (oooOO0.OooO0O0) {
                subPackageInfo = oooOO0.OooO00o;
                if (subPackageInfo != null) {
                    mainPackageZipPath = subPackageInfo.getSubZipPath();
                } else {
                    str3 = null;
                }
                tmcResourceManager.downloadApp(appId, str2, str, str3, i11, true, new OooO00o(z10, this, appModel, miniAppVersion, miniAppVersion2, prepareContext, str, prepareController, o000oooo, str2));
            }
            mainPackageZipPath = appModel.getMainPackageZipPath();
            str3 = mainPackageZipPath;
            tmcResourceManager.downloadApp(appId, str2, str, str3, i11, true, new OooO00o(z10, this, appModel, miniAppVersion, miniAppVersion2, prepareContext, str, prepareController, o000oooo, str2));
        }
        mainPackageUrl = appModel.getMainPackageUrl();
        str2 = mainPackageUrl;
        if (str2 != null) {
            kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
            subPackageInfoOooO0O0 = this.OooOO0O.OooO0O0();
            if (subPackageInfoOooO0O0 != null) {
                subPackageUrlMD5 = subPackageInfoOooO0O0.getSubPackageUrlMD5();
            } else {
                subPackageUrlMD5 = null;
            }
            str4 = String.format(TmcConstants.SUBPACKAGE_STORAGE_KEY_DECOMPRESSION_COUNT_FORMAT, Arrays.copyOf(new Object[]{subPackageUrlMD5}, 1));
            Intrinsics.g(str4, "format(format, *args)");
            if (kVStorageProxy.getInt(prepareContext.getStartContext(), TmcConstants.SUBPACKAGE_STORAGE_FILE, str4) <= 1) {
                prepareController.moveToNext();
                return;
            }
        }
        TmcResourceManager tmcResourceManager2 = this.OooO0OO;
        String appId2 = appModel.getAppId();
        oooOO0 = this.OooOO0O;
        if (oooOO0.OooO0O0) {
            subPackageInfo = oooOO0.OooO00o;
            if (subPackageInfo != null) {
                mainPackageZipPath = subPackageInfo.getSubZipPath();
            } else {
                str3 = null;
            }
            tmcResourceManager2.downloadApp(appId2, str2, str, str3, i11, true, new OooO00o(z10, this, appModel, miniAppVersion, miniAppVersion2, prepareContext, str, prepareController, o000oooo, str2));
        }
        mainPackageZipPath = appModel.getMainPackageZipPath();
        str3 = mainPackageZipPath;
        tmcResourceManager2.downloadApp(appId2, str2, str, str3, i11, true, new OooO00o(z10, this, appModel, miniAppVersion, miniAppVersion2, prepareContext, str, prepareController, o000oooo, str2));
    }

    /* JADX WARN: Code duplicated, block: B:109:0x0314 A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0325 A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x032b A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0335 A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x035a A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x0361  */
    /* JADX WARN: Code duplicated, block: B:124:0x038e A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:126:0x03a5 A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:146:0x0441  */
    /* JADX WARN: Code duplicated, block: B:148:0x0463 A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:150:0x046f A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:154:0x0477 A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x0483 A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:159:0x0487  */
    /* JADX WARN: Code duplicated, block: B:160:0x0489  */
    /* JADX WARN: Code duplicated, block: B:163:0x0490 A[Catch: all -> 0x004b, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:165:0x04bb A[Catch: all -> 0x004b, TRY_LEAVE, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x050c A[Catch: all -> 0x004b, TRY_LEAVE, TryCatch #2 {all -> 0x004b, blocks: (B:3:0x0017, B:6:0x002e, B:9:0x0036, B:11:0x003c, B:13:0x0040, B:16:0x004e, B:19:0x005b, B:21:0x00a0, B:23:0x00ba, B:25:0x00d8, B:30:0x00e2, B:33:0x0101, B:36:0x011b, B:107:0x0310, B:109:0x0314, B:111:0x0325, B:113:0x032b, B:114:0x032f, B:116:0x0335, B:118:0x0347, B:120:0x035a, B:122:0x0364, B:129:0x03d3, B:131:0x03e1, B:133:0x03f1, B:136:0x03fd, B:140:0x0406, B:143:0x040d, B:145:0x0413, B:147:0x0443, B:152:0x0473, B:154:0x0477, B:155:0x047a, B:157:0x0483, B:161:0x048a, B:163:0x0490, B:164:0x04a9, B:173:0x0508, B:175:0x050c, B:165:0x04bb, B:171:0x04fd, B:170:0x04f8, B:124:0x038e, B:126:0x03a5, B:128:0x03ab, B:148:0x0463, B:150:0x046f, B:38:0x0127, B:43:0x0133, B:41:0x012c, B:45:0x014a, B:47:0x0151, B:49:0x0158, B:51:0x015e, B:54:0x0166, B:32:0x00e8, B:167:0x04bf), top: B:184:0x0017, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:182:0x04bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x0347 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:0x032f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:0x024a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x01ce A[Catch: all -> 0x01b4, TryCatch #0 {all -> 0x01b4, blocks: (B:65:0x01ce, B:67:0x01d4, B:69:0x01ea, B:71:0x01fa, B:91:0x024b, B:93:0x0265, B:95:0x027f, B:99:0x0288, B:102:0x028f, B:104:0x0295, B:105:0x02d7, B:72:0x01ff, B:74:0x0205, B:75:0x0209, B:77:0x020f, B:79:0x021b, B:82:0x0226, B:84:0x022c, B:86:0x0236, B:88:0x0240, B:57:0x0174, B:59:0x01a9, B:63:0x01c3, B:62:0x01b9), top: B:180:0x0174 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:69:0x01ea A[Catch: all -> 0x01b4, TryCatch #0 {all -> 0x01b4, blocks: (B:65:0x01ce, B:67:0x01d4, B:69:0x01ea, B:71:0x01fa, B:91:0x024b, B:93:0x0265, B:95:0x027f, B:99:0x0288, B:102:0x028f, B:104:0x0295, B:105:0x02d7, B:72:0x01ff, B:74:0x0205, B:75:0x0209, B:77:0x020f, B:79:0x021b, B:82:0x0226, B:84:0x022c, B:86:0x0236, B:88:0x0240, B:57:0x0174, B:59:0x01a9, B:63:0x01c3, B:62:0x01b9), top: B:180:0x0174 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x01fa A[Catch: all -> 0x01b4, TryCatch #0 {all -> 0x01b4, blocks: (B:65:0x01ce, B:67:0x01d4, B:69:0x01ea, B:71:0x01fa, B:91:0x024b, B:93:0x0265, B:95:0x027f, B:99:0x0288, B:102:0x028f, B:104:0x0295, B:105:0x02d7, B:72:0x01ff, B:74:0x0205, B:75:0x0209, B:77:0x020f, B:79:0x021b, B:82:0x0226, B:84:0x022c, B:86:0x0236, B:88:0x0240, B:57:0x0174, B:59:0x01a9, B:63:0x01c3, B:62:0x01b9), top: B:180:0x0174 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x01ff A[Catch: all -> 0x01b4, TryCatch #0 {all -> 0x01b4, blocks: (B:65:0x01ce, B:67:0x01d4, B:69:0x01ea, B:71:0x01fa, B:91:0x024b, B:93:0x0265, B:95:0x027f, B:99:0x0288, B:102:0x028f, B:104:0x0295, B:105:0x02d7, B:72:0x01ff, B:74:0x0205, B:75:0x0209, B:77:0x020f, B:79:0x021b, B:82:0x0226, B:84:0x022c, B:86:0x0236, B:88:0x0240, B:57:0x0174, B:59:0x01a9, B:63:0x01c3, B:62:0x01b9), top: B:180:0x0174 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0205 A[Catch: all -> 0x01b4, TryCatch #0 {all -> 0x01b4, blocks: (B:65:0x01ce, B:67:0x01d4, B:69:0x01ea, B:71:0x01fa, B:91:0x024b, B:93:0x0265, B:95:0x027f, B:99:0x0288, B:102:0x028f, B:104:0x0295, B:105:0x02d7, B:72:0x01ff, B:74:0x0205, B:75:0x0209, B:77:0x020f, B:79:0x021b, B:82:0x0226, B:84:0x022c, B:86:0x0236, B:88:0x0240, B:57:0x0174, B:59:0x01a9, B:63:0x01c3, B:62:0x01b9), top: B:180:0x0174 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x020f A[Catch: all -> 0x01b4, TryCatch #0 {all -> 0x01b4, blocks: (B:65:0x01ce, B:67:0x01d4, B:69:0x01ea, B:71:0x01fa, B:91:0x024b, B:93:0x0265, B:95:0x027f, B:99:0x0288, B:102:0x028f, B:104:0x0295, B:105:0x02d7, B:72:0x01ff, B:74:0x0205, B:75:0x0209, B:77:0x020f, B:79:0x021b, B:82:0x0226, B:84:0x022c, B:86:0x0236, B:88:0x0240, B:57:0x0174, B:59:0x01a9, B:63:0x01c3, B:62:0x01b9), top: B:180:0x0174 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0221  */
    /* JADX WARN: Code duplicated, block: B:90:0x024a A[EDGE_INSN: B:90:0x024a->B:91:0x024b BREAK  A[LOOP:1: B:75:0x0209->B:89:0x0245]] */
    /* JADX WARN: Code duplicated, block: B:93:0x0265 A[Catch: all -> 0x01b4, TryCatch #0 {all -> 0x01b4, blocks: (B:65:0x01ce, B:67:0x01d4, B:69:0x01ea, B:71:0x01fa, B:91:0x024b, B:93:0x0265, B:95:0x027f, B:99:0x0288, B:102:0x028f, B:104:0x0295, B:105:0x02d7, B:72:0x01ff, B:74:0x0205, B:75:0x0209, B:77:0x020f, B:79:0x021b, B:82:0x0226, B:84:0x022c, B:86:0x0236, B:88:0x0240, B:57:0x0174, B:59:0x01a9, B:63:0x01c3, B:62:0x01b9), top: B:180:0x0174 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v0, types: [com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO0OO] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.cloud.tmc.miniapp.prepare.controller.PrepareController, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v2, types: [com.cloud.tmc.miniapp.prepare.controller.PrepareController] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v7, types: [com.cloud.tmc.miniapp.prepare.controller.PrepareController, java.lang.Object] */
    @Override // com.cloud.tmc.miniapp.prepare.steps.structure.OooO0O0
    public void OooO0OO(PrepareController prepareController, final PrepareContext context, final o000oOoO callback) {
        ?? r11;
        String deployVersion;
        PrepareController prepareController2;
        PrepareContext prepareContext;
        int i11;
        int i12;
        int i13;
        OooOO0 oooOO0;
        List subPackagePages;
        String subPackageUrlMD5;
        Iterator it;
        String root;
        boolean zIsDownloaded;
        PrepareController prepareController3;
        String deployVersion2;
        MiniAppLaunch miniAppLaunch;
        AppModel subpackageAppModelFromUsed;
        List subPackagePages2;
        Iterator it2;
        SubPackageInfo subPackageInfo;
        String deployVersion3;
        String miniAppVersion;
        String miniAppVersion2;
        ?? controller = prepareController;
        Intrinsics.h(controller, "controller");
        Intrinsics.h(context, "context");
        Intrinsics.h(callback, "callback");
        try {
            AppModel appModel = context.getAppModel();
            this.OooOO0O.OooO00o(appModel, this.OooO, context, this.OooOO0);
            String strOooO00o = this.OooOO0O.OooO00o(appModel);
            if (appModel != null && strOooO00o != null && strOooO00o.length() != 0) {
                OooOO0 oooOO1 = this.OooOO0O;
                if (!oooOO1.OooO0O0 && oooOO1.OooO00o != null) {
                    ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.prepare.steps.subpackage.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            OooO0OO.OooO00o(this.f23677a, context, callback);
                        }
                    });
                }
                if (context.getDevStatus()) {
                    this.OooOO0o = true;
                    this.OooO0o0.deleteAllFileForVersion(appModel, strOooO00o);
                    this.OooO0o0.createBaseDirectory(appModel);
                    SubpackageAppPrepareUtils subpackageAppPrepareUtils = SubpackageAppPrepareUtils.INSTANCE;
                    subpackageAppPrepareUtils.changeZipDownloadStatus(context.getStartContext(), appModel.getAppId(), strOooO00o, false);
                    subpackageAppPrepareUtils.changeZipUnCompressStatus(context.getStartContext(), appModel.getAppId(), strOooO00o, false);
                    subpackageAppPrepareUtils.changeTarUnCompressStatus(context.getStartContext(), appModel.getAppId(), strOooO00o, false);
                    controller.lock(controller);
                    OooO00o(prepareController, context, callback, appModel, strOooO00o, this.OooOO0o);
                    if (context.getVirtualStart()) {
                        return;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putInt(ChainPoint.DOWNLOAD_APP_MODE, 2);
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(context.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle);
                    return;
                }
                boolean zIsDownloaded2 = this.OooO0OO.isDownloaded(context.getStartContext(), appModel.getAppId(), strOooO00o);
                AppModel appModelFromPre = this.OooO0O0.getAppModelFromPre(context.getStartContext(), context.getAppId());
                String mainPackageUrl = appModelFromPre != null ? appModelFromPre.getMainPackageUrl() : null;
                if (mainPackageUrl == null || mainPackageUrl.length() == 0) {
                    TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "subpackageDownload Step 检查是 preAppinfo 否为全量包：true（appInfo主包地址为空），appVersion：" + appModelFromPre.getDeployVersion());
                    appModelFromPre = appModel;
                }
                AppModel usedModel = this.OooO0O0.getSubpackageAppModelFromUsed(context.getStartContext(), context.getAppId());
                if (!zIsDownloaded2) {
                    Integer num = this.OooOO0;
                    if (num != null && num.intValue() == 1) {
                        if (appModel.getFromCacheType() == 3 || appModel.getFromCacheType() == 4) {
                            try {
                                TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "删除子包" + strOooO00o + ",currentAppVersion:" + appModel.getDeployVersion() + "，preAppVersion：" + (appModelFromPre != null ? appModelFromPre.getDeployVersion() : null) + ",usedAppVersion:" + (usedModel != null ? usedModel.getDeployVersion() : null));
                                this.OooO0o0.deleteAllFileForVersion(appModel, strOooO00o);
                                this.OooO0o0.createBaseDirectory(appModel);
                                boolean nativeCache = appModel.getFromCacheType() == 3 ? this.OooO0OO.getNativeCache(context.getStartContext(), appModel) : this.OooO0OO.getOfflineCache(context.getStartContext(), appModel);
                                TmcLogger.d(this.OooO00o, "Step_FW_Download_资源包已下载，跳转到解压步骤");
                                this.OooOO0o = !nativeCache;
                            } catch (Throwable th2) {
                                th = th2;
                                r11 = prepareController;
                                TmcLogger.e(this.OooO00o, th);
                                r11.moveToError(new PrepareException("download error"));
                            }
                        }
                        if (appModelFromPre != null) {
                            deployVersion = appModelFromPre.getDeployVersion();
                        } else {
                            deployVersion = null;
                        }
                        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "appModelFromPre:" + deployVersion);
                        if (appModelFromPre != null) {
                            TmcResourceManager tmcResourceManager = this.OooO0OO;
                            Context startContext = context.getStartContext();
                            String appId = appModelFromPre.getAppId();
                            oooOO0 = this.OooOO0O;
                            if (!oooOO0.OooO0O0) {
                                subPackagePages = appModelFromPre.getSubPackagePages();
                                if (subPackagePages != null) {
                                    subPackageUrlMD5 = null;
                                    break;
                                }
                                it = subPackagePages.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        subPackageUrlMD5 = null;
                                        break;
                                    }
                                    SubPackageInfo subPackageInfo2 = (SubPackageInfo) it.next();
                                    root = subPackageInfo2.getRoot();
                                    if (root != null || root.length() == 0) {
                                        oooOO0 = oooOO0;
                                    } else {
                                        SubPackageInfo subPackageInfo3 = oooOO0.OooO00o;
                                        if (TextUtils.equals(subPackageInfo3 != null ? subPackageInfo3.getRoot() : null, subPackageInfo2.getRoot())) {
                                            subPackageUrlMD5 = subPackageInfo2.getSubPackageUrlMD5();
                                            break;
                                        }
                                    }
                                    it = it;
                                    oooOO0 = oooOO0;
                                }
                            } else {
                                subPackageUrlMD5 = appModelFromPre.getMainPackageUrlEncryption();
                            }
                            zIsDownloaded = tmcResourceManager.isDownloaded(startContext, appId, subPackageUrlMD5);
                            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "appModelFromPre preDownloaded:" + zIsDownloaded);
                            if (zIsDownloaded) {
                                MiniAppLaunch miniAppLaunch2 = MiniAppLaunch.INSTANCE;
                                miniAppVersion = miniAppLaunch2.getMiniAppVersion(this.OooO0O0.getSubpackageAppModelFromUsed(context.getStartContext(), context.getAppId()));
                                miniAppVersion2 = miniAppLaunch2.getMiniAppVersion(appModelFromPre);
                                if (miniAppVersion != null && miniAppVersion.length() != 0 && miniAppVersion2 != null && miniAppVersion2.length() != 0 && miniAppLaunch2.compareVersion(miniAppVersion2, miniAppVersion)) {
                                    PointAnalyseType pointAnalyseTypePutData = PointAnalyseType.POINT_PACKAGE_UPDATE_START.putData(TmcConstants.TRACK_MPU_APPID, appModelFromPre.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID, context.getStartParams().getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
                                    Intrinsics.g(pointAnalyseTypePutData, "POINT_PACKAGE_UPDATE_STA…                        )");
                                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(context.getAppId(), this.OooOO0O.OooO00o(pointAnalyseTypePutData), "");
                                }
                                TmcLogger.d(this.OooO00o, "Download_step_当前版本已有缓存" + miniAppLaunch2.getMiniAppVersion(appModelFromPre));
                                TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "appModelFromPre set:" + appModelFromPre.getDeployVersion());
                                context.setAppModel(appModelFromPre);
                                OooO00o(context, prepareController);
                                return;
                            }
                            prepareController3 = prepareController;
                            prepareContext = context;
                            TmcLogger.d(this.OooO00o, "Step_Download_删除当前所有缓存");
                            if (this.OooOO0O.OooO0O0) {
                                subPackagePages2 = appModelFromPre.getSubPackagePages();
                                if (subPackagePages2 != null) {
                                    it2 = subPackagePages2.iterator();
                                    while (it2.hasNext()) {
                                        subPackageInfo = (SubPackageInfo) it2.next();
                                        if (TextUtils.equals(this.OooO, subPackageInfo.getRoot())) {
                                            this.OooO0o0.deleteAllFileForVersion(appModelFromPre, subPackageInfo.getSubPackageUrlMD5());
                                            String subPackageUrlMD6 = subPackageInfo.getSubPackageUrlMD5();
                                            String deployVersion4 = appModelFromPre.getDeployVersion();
                                            if (usedModel != null) {
                                                deployVersion3 = usedModel.getDeployVersion();
                                            } else {
                                                deployVersion3 = null;
                                            }
                                            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "删除子包" + strOooO00o + ",currentAppVersion:" + subPackageUrlMD6 + "，preAppVersion：" + deployVersion4 + ",usedAppVersion:" + deployVersion3);
                                            it2 = it2;
                                        }
                                    }
                                }
                            } else {
                                this.OooO0o0.deleteAllFileForVersion(appModelFromPre, appModelFromPre.getMainPackageUrlEncryption());
                                String mainPackageUrlEncryption = appModelFromPre.getMainPackageUrlEncryption();
                                String deployVersion5 = appModel.getDeployVersion();
                                String deployVersion6 = appModelFromPre.getDeployVersion();
                                if (usedModel != null) {
                                    deployVersion2 = usedModel.getDeployVersion();
                                } else {
                                    deployVersion2 = null;
                                }
                                TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "删除主包" + mainPackageUrlEncryption + ",currentAppVersion:" + deployVersion5 + "，preAppVersion：" + deployVersion6 + ",usedAppVersion:" + deployVersion2);
                            }
                            this.OooO0o0.createBaseDirectory(appModelFromPre);
                            miniAppLaunch = MiniAppLaunch.INSTANCE;
                            i12 = 2;
                            if (miniAppLaunch.checkFocusUpdateMyByteApp(appModelFromPre, 2) || (subpackageAppModelFromUsed = this.OooO0O0.getSubpackageAppModelFromUsed(context.getStartContext(), context.getAppId())) == null) {
                                i11 = 1;
                                controller = prepareController3;
                            } else {
                                String miniAppVersion3 = miniAppLaunch.getMiniAppVersion(subpackageAppModelFromUsed);
                                String lowestOpenedVersion = appModelFromPre.getLowestOpenedVersion();
                                if (lowestOpenedVersion == null || lowestOpenedVersion.length() == 0 || miniAppVersion3 == null || miniAppVersion3.length() == 0 || !miniAppLaunch.compareVersion(lowestOpenedVersion, miniAppVersion3)) {
                                    i11 = 1;
                                    this.OooOO0o = true;
                                    TmcLogger.d(this.OooO00o, "Download_step_当前版本缓存不符合可打开版本号，强制更新最低可打开版本:" + lowestOpenedVersion + "参与比对的版本号:" + miniAppVersion3);
                                    controller = prepareController3;
                                } else {
                                    TmcLogger.d(this.OooO00o, "Download_step_当前版本缓存符合可打开版本号" + miniAppLaunch.getMiniAppVersion(subpackageAppModelFromUsed) + "最低可打开版本号:" + lowestOpenedVersion + "参与比对的版本号:" + miniAppVersion3);
                                    this.OooOO0o = false;
                                    prepareContext.setAppModel(subpackageAppModelFromUsed);
                                    i11 = 1;
                                    controller = prepareController3;
                                }
                            }
                        } else {
                            prepareController2 = prepareController;
                            prepareContext = context;
                            strOooO00o = strOooO00o;
                            i11 = 1;
                            i12 = 2;
                            if (!this.OooOO0o) {
                                controller = prepareController2;
                                OooO00o(prepareContext, prepareController2);
                                return;
                            }
                        }
                        controller = prepareController2;
                        if (this.OooOO0o) {
                            controller.lock(controller);
                        }
                        TmcLogger.d(this.OooO00o, "Step_Download_开始下载资源包");
                        if (appModelFromPre != null) {
                            if (this.OooOO0o) {
                                i13 = i12;
                            } else {
                                i13 = i11;
                            }
                            if (!context.getVirtualStart()) {
                                Bundle bundle2 = new Bundle();
                                bundle2.putInt(ChainPoint.DOWNLOAD_APP_MODE, i13);
                                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(context.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle2);
                            }
                            OooO00o(prepareController, context, callback, appModelFromPre, strOooO00o, this.OooOO0o);
                        } else if (this.OooOO0o) {
                            try {
                                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context.getStartContext(), context.getAppId(), context.getAppId() + "_pre");
                                this.OooO0O0.refreshUpdateTime(context.getStartContext(), context.getAppId(), 0L);
                            } catch (Throwable th3) {
                                TmcLogger.e(this.OooO00o, th3);
                            }
                            controller.moveToError(new PrepareException("appModelFromPre is not exist"));
                            return;
                        }
                        if (this.OooOO0o) {
                        }
                        OooO00o(prepareContext, controller);
                    }
                    controller.lock(controller);
                    Intrinsics.g(usedModel, "usedModel");
                    OooO00o(prepareController, context, callback, usedModel, strOooO00o, this.OooOO0o);
                    return;
                }
                TmcLogger.d(this.OooO00o, "Step_FW_Download_资源包已下载，跳转到解压步骤");
                this.OooOO0o = false;
                usedModel = usedModel;
                if (appModelFromPre != null) {
                    deployVersion = appModelFromPre.getDeployVersion();
                } else {
                    deployVersion = null;
                }
                TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "appModelFromPre:" + deployVersion);
                if (appModelFromPre != null) {
                    TmcResourceManager tmcResourceManager2 = this.OooO0OO;
                    Context startContext2 = context.getStartContext();
                    String appId2 = appModelFromPre.getAppId();
                    oooOO0 = this.OooOO0O;
                    if (!oooOO0.OooO0O0) {
                        subPackagePages = appModelFromPre.getSubPackagePages();
                        if (subPackagePages != null) {
                            subPackageUrlMD5 = null;
                            break;
                        }
                        it = subPackagePages.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                subPackageUrlMD5 = null;
                                break;
                            }
                            SubPackageInfo subPackageInfo4 = (SubPackageInfo) it.next();
                            root = subPackageInfo4.getRoot();
                            if (root != null) {
                                oooOO0 = oooOO0;
                            } else {
                                oooOO0 = oooOO0;
                            }
                            it = it;
                            oooOO0 = oooOO0;
                        }
                    } else {
                        subPackageUrlMD5 = appModelFromPre.getMainPackageUrlEncryption();
                    }
                    zIsDownloaded = tmcResourceManager2.isDownloaded(startContext2, appId2, subPackageUrlMD5);
                    TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "appModelFromPre preDownloaded:" + zIsDownloaded);
                    if (zIsDownloaded) {
                        MiniAppLaunch miniAppLaunch3 = MiniAppLaunch.INSTANCE;
                        miniAppVersion = miniAppLaunch3.getMiniAppVersion(this.OooO0O0.getSubpackageAppModelFromUsed(context.getStartContext(), context.getAppId()));
                        miniAppVersion2 = miniAppLaunch3.getMiniAppVersion(appModelFromPre);
                        if (miniAppVersion != null) {
                            PointAnalyseType pointAnalyseTypePutData2 = PointAnalyseType.POINT_PACKAGE_UPDATE_START.putData(TmcConstants.TRACK_MPU_APPID, appModelFromPre.getAppId()).putData(TmcConstants.TRACK_MPU_OLD_V, miniAppVersion).putData(TmcConstants.TRACK_MPU_NEW_V, miniAppVersion2).putData(TmcConstants.TRACK_MPU_CHAIN_UNIQUE_ID, context.getStartParams().getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
                            Intrinsics.g(pointAnalyseTypePutData2, "POINT_PACKAGE_UPDATE_STA…                        )");
                            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(context.getAppId(), this.OooOO0O.OooO00o(pointAnalyseTypePutData2), "");
                        }
                        TmcLogger.d(this.OooO00o, "Download_step_当前版本已有缓存" + miniAppLaunch3.getMiniAppVersion(appModelFromPre));
                        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "appModelFromPre set:" + appModelFromPre.getDeployVersion());
                        context.setAppModel(appModelFromPre);
                        OooO00o(context, prepareController);
                        return;
                    }
                    prepareController3 = prepareController;
                    prepareContext = context;
                    TmcLogger.d(this.OooO00o, "Step_Download_删除当前所有缓存");
                    if (this.OooOO0O.OooO0O0) {
                        subPackagePages2 = appModelFromPre.getSubPackagePages();
                        if (subPackagePages2 != null) {
                            it2 = subPackagePages2.iterator();
                            while (it2.hasNext()) {
                                subPackageInfo = (SubPackageInfo) it2.next();
                                if (TextUtils.equals(this.OooO, subPackageInfo.getRoot())) {
                                    this.OooO0o0.deleteAllFileForVersion(appModelFromPre, subPackageInfo.getSubPackageUrlMD5());
                                    String subPackageUrlMD7 = subPackageInfo.getSubPackageUrlMD5();
                                    String deployVersion7 = appModelFromPre.getDeployVersion();
                                    if (usedModel != null) {
                                        deployVersion3 = usedModel.getDeployVersion();
                                    } else {
                                        deployVersion3 = null;
                                    }
                                    TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "删除子包" + strOooO00o + ",currentAppVersion:" + subPackageUrlMD7 + "，preAppVersion：" + deployVersion7 + ",usedAppVersion:" + deployVersion3);
                                    it2 = it2;
                                }
                            }
                        }
                    } else {
                        this.OooO0o0.deleteAllFileForVersion(appModelFromPre, appModelFromPre.getMainPackageUrlEncryption());
                        String mainPackageUrlEncryption2 = appModelFromPre.getMainPackageUrlEncryption();
                        String deployVersion8 = appModel.getDeployVersion();
                        String deployVersion9 = appModelFromPre.getDeployVersion();
                        if (usedModel != null) {
                            deployVersion2 = usedModel.getDeployVersion();
                        } else {
                            deployVersion2 = null;
                        }
                        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "删除主包" + mainPackageUrlEncryption2 + ",currentAppVersion:" + deployVersion8 + "，preAppVersion：" + deployVersion9 + ",usedAppVersion:" + deployVersion2);
                    }
                    this.OooO0o0.createBaseDirectory(appModelFromPre);
                    miniAppLaunch = MiniAppLaunch.INSTANCE;
                    i12 = 2;
                    if (miniAppLaunch.checkFocusUpdateMyByteApp(appModelFromPre, 2)) {
                        i11 = 1;
                        controller = prepareController3;
                    } else {
                        i11 = 1;
                        controller = prepareController3;
                    }
                } else {
                    prepareController2 = prepareController;
                    prepareContext = context;
                    strOooO00o = strOooO00o;
                    i11 = 1;
                    i12 = 2;
                    if (!this.OooOO0o) {
                        controller = prepareController2;
                        OooO00o(prepareContext, prepareController2);
                        return;
                    }
                }
                controller = prepareController2;
                if (this.OooOO0o) {
                    controller.lock(controller);
                }
                TmcLogger.d(this.OooO00o, "Step_Download_开始下载资源包");
                if (appModelFromPre != null) {
                    if (this.OooOO0o) {
                        i13 = i12;
                    } else {
                        i13 = i11;
                    }
                    if (!context.getVirtualStart()) {
                        Bundle bundle3 = new Bundle();
                        bundle3.putInt(ChainPoint.DOWNLOAD_APP_MODE, i13);
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(context.getAppId(), PointAnalyseType.POINT_APP_CHAIN_INSERT, "", bundle3);
                    }
                    OooO00o(prepareController, context, callback, appModelFromPre, strOooO00o, this.OooOO0o);
                } else if (this.OooOO0o) {
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context.getStartContext(), context.getAppId(), context.getAppId() + "_pre");
                    this.OooO0O0.refreshUpdateTime(context.getStartContext(), context.getAppId(), 0L);
                    controller.moveToError(new PrepareException("appModelFromPre is not exist"));
                    return;
                }
                if (this.OooOO0o) {
                    OooO00o(prepareContext, controller);
                }
            }
        } catch (Throwable th4) {
            th = th4;
            r11 = controller;
            TmcLogger.e(this.OooO00o, th);
            r11.moveToError(new PrepareException("download error"));
        }
    }
}
