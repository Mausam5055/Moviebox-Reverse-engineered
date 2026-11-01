package com.cloud.tmc.miniapp.prepare.steps;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.model.PrepareData;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;

/* JADX INFO: loaded from: classes3.dex */
public interface o000oOoO {
    void OooO00o();

    void OooO00o(EntryInfo entryInfo);

    void OooO00o(PrepareCallbackParam prepareCallbackParam, int i11);

    void OooO00o(PrepareCallbackParam prepareCallbackParam, PrepareController prepareController);

    void OooO00o(PrepareData prepareData, @Nullable AppModel appModel, @Nullable Bundle bundle, @Nullable Bundle bundle2);

    void OooO00o(PrepareData prepareData, PrepareException prepareException);

    void OooO00o(boolean z10);

    void OooO0O0(PrepareCallbackParam prepareCallbackParam, PrepareController prepareController);

    void backgroundDownloadZipAsync(@NonNull AppModel appModel, boolean z10);

    void killActivity();

    void refreshAppInfo(@NonNull AppModel appModel);

    void showTaskDescription(@Nullable String str, @Nullable String str2);

    void showUpgradeHintPrompt(String str);

    void updateStepProgress(LoadStepAction loadStepAction);
}
