package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.audio.recording.RecorderClient;
import com.cloud.tmc.integration.model.AudioRecordCache;
import com.cloud.tmc.integration.point.OnPauseAppPoint;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.utils.ScreenUtils;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.log.TmcLogger;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OnPauseAppPointImpl implements OnPauseAppPoint {
    public static final OooO00o Companion = new OooO00o();

    public static final class OooO00o {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.d("OnPauseAppPointImpl", "onFinalized");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.d("OnPauseAppPointImpl", "onInitialized");
    }

    @Override // com.cloud.tmc.integration.point.OnPauseAppPoint
    public void onPause(App app, ExtensionManager extensionManager) {
        HashMap<String, RecorderClient> recorderClientCache;
        RecorderClient recorderClient;
        Intrinsics.h(app, "app");
        try {
            AudioRecordCache audioRecordCache = (AudioRecordCache) app.getData(AudioRecordCache.class);
            if (audioRecordCache != null && (recorderClientCache = audioRecordCache.getRecorderClientCache()) != null && (recorderClient = recorderClientCache.get(app.getAppId())) != null && !recorderClient.isStopped() && (!recorderClient.isRecording() || !recorderClient.isPaused())) {
                recorderClient.pauseRecording();
            }
            ScreenUtils.INSTANCE.release();
        } catch (Throwable th2) {
            TmcLogger.e("OnPauseAppPointImpl", th2);
        }
    }
}
