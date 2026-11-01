package com.transsion.publish;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\f\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0014\u0010\u000eR\u0014\u0010\u0017\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0016\u0010\u000eR\u0014\u0010\u0019\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0018\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/transsion/publish/NetworkReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "Landroid/content/Context;", "context", "", "a", "(Landroid/content/Context;)I", "Landroid/content/Intent;", "intent", "", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "I", "LAST_TYPE", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "TAG", "c", "NETWORK_NONE", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "NETWORK_WIFI", "e", "NETWORK_MOBILE", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NetworkReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int NETWORK_WIFI;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int LAST_TYPE = -3;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final String TAG = PublishManager.TAG;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int NETWORK_NONE = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int NETWORK_MOBILE = 1;

    private final int a(Context context) {
        Object systemService = context != null ? context.getSystemService("connectivity") : null;
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return this.NETWORK_NONE;
        }
        if (activeNetworkInfo.getType() == 1) {
            return this.NETWORK_WIFI;
        }
        return activeNetworkInfo.getType() == 0 ? this.NETWORK_MOBILE : this.NETWORK_NONE;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intrinsics.e(intent);
        if (StringsKt.I(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE", false, 2, null)) {
            int iA = a(context);
            if (iA == 0 && this.LAST_TYPE != 0) {
                this.LAST_TYPE = iA;
                PublishManager.INSTANCE.a().onConnected(null);
                return;
            }
            if (iA == 1 && this.LAST_TYPE != 1) {
                this.LAST_TYPE = iA;
                lg.a.C0828a.f(lg.a.f68839a, this.TAG, "数据网络", false, 4, null);
                PublishManager.INSTANCE.a().onConnected(null);
            } else {
                if (iA != -1 || this.LAST_TYPE == -1) {
                    return;
                }
                this.LAST_TYPE = iA;
                lg.a.C0828a.f(lg.a.f68839a, this.TAG, "无网络", false, 4, null);
                PublishManager.INSTANCE.a().onDisconnected();
            }
        }
    }
}
