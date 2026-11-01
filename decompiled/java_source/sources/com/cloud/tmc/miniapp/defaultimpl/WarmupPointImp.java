package com.cloud.tmc.miniapp.defaultimpl;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.model.PrepareData;
import com.cloud.tmc.integration.point.WarmupPoint;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.OooOo;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.proxy.IClientStarter;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class WarmupPointImp implements WarmupPoint {

    public static final class OooO00o implements OooOo {
        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void backgroundDownloadZipAsync(AppModel appModelNew, boolean z10) {
            Intrinsics.h(appModelNew, "appModelNew");
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void killActivity() {
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void loadError(PrepareData prepareData, PrepareException prepareException) {
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void onPackageLoadFailed(PrepareData prepareData, PrepareException prepareException) {
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void onPackageLoadSuccess() {
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void refreshAppInfo(AppModel appModelNew) {
            Intrinsics.h(appModelNew, "appModelNew");
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void showLoadingView(EntryInfo entryInfo) {
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void showTaskDescription(String str, String str2) {
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void showUpgradeHintPrompt(String str) {
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void startApp(Intent intent) {
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void startAsyncApp(Intent intent) {
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void updateStepProgress(LoadStepAction progress) {
            Intrinsics.h(progress, "progress");
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.integration.point.WarmupPoint
    public void start(Context context, int i11) {
        Intrinsics.h(context, "context");
        synchronized (context) {
            Bundle bundle = new Bundle();
            bundle.putInt("warmupType", i11);
            Unit unit = Unit.f67061a;
            PrepareContext prepareContext = new PrepareContext(context, "100000", bundle, new Bundle(), false, null, null, null, 240, null);
            PrepareController prepareControllerCreateWarmupController = ((IClientStarter) TmcProxy.get(IClientStarter.class)).createWarmupController(prepareContext, new OooO0OO(prepareContext, new OooO00o()));
            if (prepareControllerCreateWarmupController != null) {
                prepareControllerCreateWarmupController.start();
            }
        }
    }
}
