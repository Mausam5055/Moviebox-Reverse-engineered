package com.cloud.tmc.miniapp.defaultimpl;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.activity.StartAction;
import com.cloud.tmc.integration.activity.StartClientBundle;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.model.PrepareData;
import com.cloud.tmc.integration.performance.WarmupType;
import com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool;
import com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.OooOo;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import java.util.concurrent.atomic.AtomicLong;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public class OooO0OO implements o000oOoO {
    public static final AtomicLong OooO0o = new AtomicLong(Process.myPid());
    public PrepareContext OooO0O0;
    public OooOo OooO0OO;
    public boolean OooO00o = false;
    public boolean OooO0Oo = true;
    public boolean OooO0o0 = false;

    public OooO0OO(PrepareContext prepareContext, OooOo oooOo) {
        this.OooO0O0 = prepareContext;
        this.OooO0OO = oooOo;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void OooO00o() {
        OooOo oooOo = this.OooO0OO;
        if (oooOo != null) {
            oooOo.onPackageLoadSuccess();
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void OooO00o(EntryInfo entryInfo) {
        OooOo oooOo;
        if (!this.OooO0Oo || (oooOo = this.OooO0OO) == null) {
            return;
        }
        oooOo.showLoadingView(entryInfo);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void OooO00o(PrepareCallbackParam prepareCallbackParam, int i11) {
        if (i11 == WarmupType.NORMAL_WORKER.getType() || i11 == WarmupType.NORMAL_RENDER.getType()) {
            return;
        }
        if (i11 == WarmupType.INNER_WORKER.getType()) {
            ((IInnerWorkerPool) TmcProxy.get(IInnerWorkerPool.class)).warmupWorker(prepareCallbackParam);
        } else if (i11 == WarmupType.INNER_RENNDER.getType()) {
            ((IInnerRenderPool) TmcProxy.get(IInnerRenderPool.class)).warmupRender(prepareCallbackParam);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void OooO00o(PrepareCallbackParam prepareCallbackParam, PrepareController prepareController) {
        if (this.OooO00o) {
            return;
        }
        this.OooO00o = true;
        Intent intent = new Intent();
        EntryInfo entryInfo = this.OooO0O0.getEntryInfo();
        Bundle startParams = this.OooO0O0.getStartParams();
        Bundle sceneParams = this.OooO0O0.getSceneParams();
        AppModel appModel = prepareCallbackParam.appInfo;
        if (appModel != null) {
            sceneParams.putParcelable(TmcConstants.EXTRA_APPINFO, appModel);
        }
        AppLoadResult appLoadResult = prepareCallbackParam.appLoadResult;
        if (appLoadResult != null) {
            sceneParams.putParcelable(TmcConstants.EXTRA_APP_LOAD_RESULT, appLoadResult);
        }
        if (entryInfo != null) {
            sceneParams.putParcelable(TmcConstants.EXTRA_ENTRY_INFO, entryInfo);
        }
        StartClientBundle startClientBundle = new StartClientBundle();
        startClientBundle.appId = prepareCallbackParam.appInfo.getAppId();
        long jAddAndGet = OooO0o.addAndGet(1L) + System.currentTimeMillis();
        startClientBundle.startToken = jAddAndGet;
        sceneParams.putLong(TmcConstants.EXTRA_START_TOKEN, jAddAndGet);
        startClientBundle.startParams = startParams;
        startClientBundle.sceneParams = sceneParams;
        StartAction startAction = prepareCallbackParam.action;
        if (startAction != null) {
            startClientBundle.startAction = startAction;
        } else {
            startClientBundle.startAction = StartAction.DIRECT_START;
        }
        intent.putExtra(TmcConstants.EXTRA_START_BUNDLE, startClientBundle);
        AppModel appModel2 = prepareCallbackParam.appInfo;
        intent.putExtra("record_id", appModel2 != null ? appModel2.getAppId() : "");
        intent.putExtra("record_token", System.currentTimeMillis());
        intent.setFlags(ASTNode.DISCARD);
        AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, this.OooO0O0.getStartContext());
        OooOo oooOo = this.OooO0OO;
        if (oooOo != null) {
            oooOo.startApp(intent);
        } else {
            prepareController.moveToError(new PrepareException("loadListener is null"));
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void OooO00o(PrepareData prepareData, @Nullable AppModel appModel, @Nullable Bundle bundle, @Nullable Bundle bundle2) {
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void OooO00o(PrepareData prepareData, PrepareException prepareException) {
        OooOo oooOo = this.OooO0OO;
        if (oooOo != null) {
            oooOo.loadError(prepareData, prepareException);
            this.OooO0OO.onPackageLoadFailed(prepareData, prepareException);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void OooO00o(boolean z10) {
        OooOo oooOo;
        this.OooO0Oo = z10;
        if (!z10 || (oooOo = this.OooO0OO) == null) {
            return;
        }
        oooOo.showLoadingView(null);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void OooO0O0(PrepareCallbackParam prepareCallbackParam, PrepareController prepareController) {
        try {
            if (this.OooO0OO != null) {
                Intent intent = new Intent();
                EntryInfo entryInfo = this.OooO0O0.getEntryInfo();
                Bundle startParams = this.OooO0O0.getStartParams();
                Bundle sceneParams = this.OooO0O0.getSceneParams();
                sceneParams.putParcelable(TmcConstants.EXTRA_APP_LOAD_RESULT, prepareCallbackParam.appLoadResult);
                if (entryInfo != null) {
                    sceneParams.putParcelable(TmcConstants.EXTRA_ENTRY_INFO, entryInfo);
                }
                StartClientBundle startClientBundle = new StartClientBundle();
                AppModel appModel = prepareCallbackParam.appInfo;
                startClientBundle.appId = appModel != null ? appModel.getAppId() : "";
                startClientBundle.startParams = startParams;
                startClientBundle.sceneParams = sceneParams;
                startClientBundle.startAction = StartAction.DIRECT_START;
                intent.putExtra(TmcConstants.EXTRA_START_BUNDLE, startClientBundle);
                intent.putExtra(TmcConstants.EXTRA_START_APP_MODEL, (Parcelable) appModel);
                this.OooO0OO.startAsyncApp(intent);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void backgroundDownloadZipAsync(@NonNull AppModel appModel, boolean z10) {
        OooOo oooOo = this.OooO0OO;
        if (oooOo != null) {
            oooOo.backgroundDownloadZipAsync(appModel, z10);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void killActivity() {
        OooOo oooOo = this.OooO0OO;
        if (oooOo != null) {
            oooOo.killActivity();
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void refreshAppInfo(@NonNull AppModel appModel) {
        OooOo oooOo = this.OooO0OO;
        if (oooOo != null) {
            oooOo.refreshAppInfo(appModel);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void showTaskDescription(@Nullable String str, @Nullable String str2) {
        OooOo oooOo;
        if (this.OooO0o0 || (oooOo = this.OooO0OO) == null) {
            return;
        }
        this.OooO0o0 = true;
        oooOo.showTaskDescription(str, str2);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void showUpgradeHintPrompt(String str) {
        OooOo oooOo = this.OooO0OO;
        if (oooOo != null) {
            oooOo.showUpgradeHintPrompt(str);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o000oOoO
    public void updateStepProgress(LoadStepAction loadStepAction) {
        OooOo oooOo = this.OooO0OO;
        if (oooOo != null) {
            oooOo.updateStepProgress(loadStepAction);
        }
    }
}
