package com.transsion.mpush.api;

import android.content.Context;
import android.graphics.Bitmap;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0001\rJ/\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH&¢\u0006\u0002\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/transsion/mpush/api/IPushImageLoader;", "", "loadImage", "", "context", "Landroid/content/Context;", "url", "", "width", "", "callback", "Lcom/transsion/mpush/api/IPushImageLoader$Callback;", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcom/transsion/mpush/api/IPushImageLoader$Callback;)V", "Callback", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IPushImageLoader {

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0007\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\tH&¨\u0006\n"}, d2 = {"Lcom/transsion/mpush/api/IPushImageLoader$Callback;", "", "onSuccess", "", "bitmap", "Landroid/graphics/Bitmap;", "onFailed", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface Callback {
        void onFailed(Exception e11);

        void onSuccess(Bitmap bitmap);
    }

    void loadImage(Context context, String url, Integer width, Callback callback);
}
