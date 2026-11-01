package com.cloud.tmc.miniapp.prepare.steps;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.PrepareData;

/* JADX INFO: loaded from: classes3.dex */
public interface OooOo {
    void backgroundDownloadZipAsync(@NonNull AppModel appModel, boolean z10);

    void killActivity();

    void loadError(PrepareData prepareData, PrepareException prepareException);

    void onPackageLoadFailed(PrepareData prepareData, PrepareException prepareException);

    void onPackageLoadSuccess();

    void refreshAppInfo(@NonNull AppModel appModel);

    void showLoadingView(@Nullable EntryInfo entryInfo);

    void showTaskDescription(@Nullable String str, @Nullable String str2);

    void showUpgradeHintPrompt(String str);

    void startApp(Intent intent);

    void startAsyncApp(Intent intent);

    void updateStepProgress(LoadStepAction loadStepAction);
}
