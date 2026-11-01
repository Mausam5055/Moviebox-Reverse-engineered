package com.cloud.tmc.worker.debug;

import android.graphics.Bitmap;
import com.cloud.tmc.worker.BuildConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0012\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0005H&J\b\u0010\u000e\u001a\u00020\u0003H&¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/worker/debug/WebviewPageEventCallback;", "", "onConsoleMessage", "", "consoleMessage", "", "onProgressChanged", "newProgress", "", "onReceivedIcon", RewardPlus.ICON, "Landroid/graphics/Bitmap;", "onReceivedTitle", CampaignEx.JSON_KEY_TITLE, "onRequestFocus", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface WebviewPageEventCallback {
    void onConsoleMessage(String consoleMessage);

    void onProgressChanged(int newProgress);

    void onReceivedIcon(Bitmap icon);

    void onReceivedTitle(String title);

    void onRequestFocus();
}
