package com.cloud.tmc.miniapp.prepare.steps.subpackage;

import android.content.Intent;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.PrepareData;
import com.cloud.tmc.miniapp.prepare.steps.OooOo;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class OooO00o implements OooOo {
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
    public void updateStepProgress(LoadStepAction loadStepAction) {
    }
}
