package com.cloud.tmc.fps;

import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.fps.data.ConfigData;
import com.cloud.tmc.fps.record.RecordImp;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.security.SecureRandom;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/cloud/tmc/fps/FpsManager;", "", "()V", "recording", "", "record", "", "saveConfig", XLogUtil.TAG, "Lcom/cloud/tmc/fps/data/ConfigData;", "stop", "com.cloud.tmc.minifps"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FpsManager {
    public static final FpsManager INSTANCE = new FpsManager();
    private static boolean recording;

    private FpsManager() {
    }

    public final void record() {
        if (recording) {
            return;
        }
        recording = true;
        RecordImp recordImp = RecordImp.INSTANCE;
        recordImp.addFrameListener(new ReportManager());
        recordImp.recordFps(true);
    }

    public final void saveConfig(ConfigData config) {
        Intrinsics.h(config, "config");
        FpsConfig fpsConfig = FpsConfig.INSTANCE;
        fpsConfig.setGrayScale(config.getGrayScale());
        fpsConfig.setJankThreshold(config.getJankThreshold());
        fpsConfig.setTraceInterval(config.getTraceInterval());
        double dNextDouble = new SecureRandom().nextDouble();
        if (fpsConfig.getGrayScale() != 0.0f && dNextDouble <= fpsConfig.getGrayScale()) {
            record();
        } else {
            stop();
        }
    }

    public final void stop() {
        if (recording) {
            recording = false;
            RecordImp.INSTANCE.recordFps(false);
        }
    }
}
