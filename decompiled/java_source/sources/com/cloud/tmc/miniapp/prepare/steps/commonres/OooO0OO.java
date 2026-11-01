package com.cloud.tmc.miniapp.prepare.steps.commonres;

import android.content.Context;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.callback.PackageInstallCallback;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.StepType;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO extends com.cloud.tmc.miniapp.prepare.steps.OooO00o {
    public static final void OooO00o(OooO0OO this$0, AppModel commonResModel, Context context, PrepareController prepareController, boolean z10, String str) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(commonResModel, "$commonResModel");
        Intrinsics.h(context, "$context");
        if (!z10) {
            TmcLogger.d(this$0.OooO00o, "Step_LoadStep: tar 包解压失败，删除数据");
            AppPrepareUtils.INSTANCE.clearAllFilesForVersion(context, commonResModel);
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException("5", "unzip error" + commonResModel.getPackageUrl()));
                return;
            }
            return;
        }
        TmcLogger.d(this$0.OooO00o, "Step_LoadStep: tar 包解压完成");
        try {
            AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
            if (!Intrinsics.c(JsonUtil.INSTANCE.getValueFromJson(appPrepareUtils.getManifestJson(commonResModel), "appId"), commonResModel.getAppId())) {
                appPrepareUtils.clearAllFilesForVersion(context, commonResModel);
                if (prepareController != null) {
                    prepareController.moveToError(new PrepareException(PrepareException.ERROR_MANIFEST_INFO, "manifest error"));
                    return;
                }
                return;
            }
            TmcLogger.d(this$0.OooO00o, "Step_LoadStep: manifest 内容校验成功");
            appPrepareUtils.changeTarUnCompressStatus(context, commonResModel, true);
            this$0.OooO0o0.delectDownloadFileForVersion(commonResModel);
            this$0.OooO0O0.delectOldVersionFilesAndUpdate(context, commonResModel);
            if (prepareController != null) {
                prepareController.unlock(prepareController);
            }
            if (prepareController != null) {
                prepareController.moveToNext();
            }
        } catch (Throwable unused) {
            AppPrepareUtils.INSTANCE.clearAllFilesForVersion(context, commonResModel);
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException(PrepareException.ERROR_MANIFEST_INFO, "manifest error"));
            }
        }
    }

    public static final void OooO00o(OooO0OO this$0, PrepareController prepareController, PrepareContext context, AppModel commonResModel, boolean z10, String str) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(context, "$context");
        Intrinsics.h(commonResModel, "$commonResModel");
        if (z10) {
            TmcLogger.d(this$0.OooO00o, "Step_LoadStep: zip 包解压完成");
            this$0.OooO00o(prepareController, context, commonResModel);
            return;
        }
        TmcLogger.d(this$0.OooO00o, "Step_LoadStep: zip 包解压失败");
        AppPrepareUtils.INSTANCE.clearAllFilesForVersion(context.getStartContext(), commonResModel);
        if (prepareController != null) {
            prepareController.moveToError(new PrepareException("5", "unzip error" + commonResModel.getPackageUrl()));
        }
    }

    public final void OooO00o(final PrepareContext prepareContext, final PrepareController prepareController, final AppModel appModel) {
        this.OooO0OO.installZip(prepareContext.getStartContext(), appModel, new PackageInstallCallback() { // from class: com.cloud.tmc.miniapp.prepare.steps.commonres.b
            @Override // com.cloud.tmc.integration.callback.PackageInstallCallback
            public final void onResult(boolean z10, String str) {
                OooO0OO.OooO00o(this.f23631a, prepareController, prepareContext, appModel, z10, str);
            }
        });
    }

    public final void OooO00o(final PrepareController prepareController, PrepareContext prepareContext, final AppModel appModel) {
        final Context startContext = prepareContext.getStartContext();
        TmcLogger.d(this.OooO00o, "Step_LoadStep: sha256 校验");
        AppPrepareUtils appPrepareUtils = AppPrepareUtils.INSTANCE;
        if (appPrepareUtils.checkSHA256(appModel)) {
            TmcLogger.d(this.OooO00o, "Step_LoadStep: sha256 校验正确，解压 tar 包");
            this.OooO0OO.installApp(appModel, new PackageInstallCallback() { // from class: com.cloud.tmc.miniapp.prepare.steps.commonres.a
                @Override // com.cloud.tmc.integration.callback.PackageInstallCallback
                public final void onResult(boolean z10, String str) {
                    OooO0OO.OooO00o(this.f23627a, appModel, startContext, prepareController, z10, str);
                }
            });
            return;
        }
        TmcLogger.d(this.OooO00o, "Step_LoadStep: sha256 校验不一致，删除所有缓存");
        appPrepareUtils.clearAllFilesForVersion(startContext, appModel);
        if (prepareController != null) {
            prepareController.moveToError(new PrepareException("7", "sign error" + appModel.getAppId() + "   " + appModel.getPackageUrl()));
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return StepType.COMMON_RES_LOAD;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        String appId;
        super.OooO0O0(prepareController, prepareContext, o000oooo);
        AppModel appModel = prepareContext.getAppModel();
        if (!AppUtils.INSTANCE.checkUesCommonresApp(appModel != null ? appModel.getMiniappSubtype() : null)) {
            if (prepareController != null) {
                prepareController.moveToNext();
                return;
            }
            return;
        }
        Context startContext = prepareContext.getStartContext();
        if (startContext == null) {
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException("context is null"));
                return;
            }
            return;
        }
        AppModel commonResModel = prepareContext.getCommonResModel();
        if (commonResModel == null) {
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException("commonResModel is null"));
                return;
            }
            return;
        }
        if (appModel != null && (appId = appModel.getAppId()) != null) {
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            miniAppLaunch.commonResTrack(appId, "d_e");
            miniAppLaunch.commonResTrack(appId, "l_s");
        }
        if (AppPrepareUtils.INSTANCE.checkTarUnCompressStatus(startContext, commonResModel)) {
            TmcLogger.d(this.OooO00o, "Step_LoadStep:tar包已解压，跳转到 startStep");
            if (prepareController != null) {
                prepareController.unlock(prepareController);
            }
            if (prepareController != null) {
                prepareController.moveToNext();
                return;
            }
            return;
        }
        this.OooO0o0.deleteFile(this.OooO0Oo.getZipUnCompressPath(commonResModel));
        try {
            OooO00o(prepareContext, prepareController, commonResModel);
            if (o000oooo != null) {
                o000oooo.updateStepProgress(LoadStepAction.STEP_FINISH_DECOMPRESS);
            }
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException("5", "unzip error" + th2.getMessage()));
            }
        }
    }
}
