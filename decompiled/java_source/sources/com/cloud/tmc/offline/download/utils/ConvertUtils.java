package com.cloud.tmc.offline.download.utils;

import com.cloud.tmc.kernel.log.TmcLogger;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.text.DecimalFormat;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/offline/download/utils/ConvertUtils;", "", "()V", "TAG", "", "getFormatMemorySize", "size", "", "unit", "", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ConvertUtils {
    public static final ConvertUtils INSTANCE = new ConvertUtils();
    private static final String TAG = "TmcOfflineDownload: ConvertUtils";

    private ConvertUtils() {
    }

    public static /* synthetic */ String getFormatMemorySize$default(ConvertUtils convertUtils, long j11, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1024;
        }
        return convertUtils.getFormatMemorySize(j11, i11);
    }

    public final String getFormatMemorySize(long size, int unit) {
        DecimalFormat decimalFormat = new DecimalFormat("####.00");
        String str = "0 B";
        if (size >= 0) {
            try {
                if (size < unit) {
                    str = size + " B";
                } else {
                    int i11 = unit * unit;
                    if (size < i11) {
                        str = decimalFormat.format(size / ((double) unit)) + " KB";
                    } else if (size < i11 * unit) {
                        double d11 = unit;
                        str = decimalFormat.format((size / d11) / d11) + " MB";
                    } else {
                        double d12 = unit;
                        str = decimalFormat.format(((size / d12) / d12) / d12) + " GB";
                    }
                }
            } catch (Throwable th2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("convert size to ");
                sb2.append(size);
                sb2.append(" is failed.");
                TmcLogger.e(TAG, sb2.toString(), th2);
            }
        }
        return str;
    }
}
