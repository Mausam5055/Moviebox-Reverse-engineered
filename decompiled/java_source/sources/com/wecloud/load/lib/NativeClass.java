package com.wecloud.load.lib;

import androidx.core.app.NotificationCompat;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0086 ¢\u0006\u0004\b\t\u0010\nJ$\u0010\u000b\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0086 ¢\u0006\u0004\b\u000b\u0010\nJ$\u0010\f\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0086 ¢\u0006\u0004\b\f\u0010\nJ$\u0010\r\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0086 ¢\u0006\u0004\b\r\u0010\nJ$\u0010\u000e\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0086 ¢\u0006\u0004\b\u000e\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/wecloud/load/lib/NativeClass;", "", "<init>", "()V", "", "input", "Lcom/wecloud/load/lib/NativeClass$Callback;", "callback", "", "group0Init", "(Ljava/lang/String;Lcom/wecloud/load/lib/NativeClass$Callback;)V", "group1Init", "group2Init", "group3Init", "group4Init", "Callback", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NativeClass {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NativeClass f60811a = new NativeClass();

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\t"}, d2 = {"Lcom/wecloud/load/lib/NativeClass$Callback;", "", "onInitCallback", "", NotificationCompat.CATEGORY_STATUS, "", "onResultCallback", NotificationCompat.CATEGORY_MESSAGE, "", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface Callback {
        void onInitCallback(int status);

        void onResultCallback(String msg);
    }

    private NativeClass() {
    }

    public final native void group0Init(String input, Callback callback);

    public final native void group1Init(String input, Callback callback);

    public final native void group2Init(String input, Callback callback);

    public final native void group3Init(String input, Callback callback);

    public final native void group4Init(String input, Callback callback);
}
