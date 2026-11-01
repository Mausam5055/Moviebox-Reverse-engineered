package com.cloud.tmc.integration.utils;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\u0006\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/integration/utils/GenerateIdUtils;", "", "()V", "TAG", "", "generateRandomId", "generateRandomIdByGAId", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class GenerateIdUtils {
    public static final GenerateIdUtils INSTANCE = new GenerateIdUtils();
    private static final String TAG = "GenerateIdUtils";

    private GenerateIdUtils() {
    }

    @JvmStatic
    public static final String generateRandomIdByGAId() {
        try {
            String str = DeviceUtil.getGAId() + "_" + System.currentTimeMillis() + "_" + RangesKt.q(new IntRange(DefaultOggSeeker.MATCH_BYTE_RANGE, 999999), Random.INSTANCE);
            TmcLogger.d(TAG, "Generating random id by gaId: " + str);
            return str;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Generating random id by gaId", th2);
            return INSTANCE.generateRandomId();
        }
    }

    public final String generateRandomId() {
        String str = System.currentTimeMillis() + "_" + RangesKt.q(new IntRange(DefaultOggSeeker.MATCH_BYTE_RANGE, 999999), Random.INSTANCE);
        TmcLogger.d(TAG, "Generating random id: " + str);
        return str;
    }
}
