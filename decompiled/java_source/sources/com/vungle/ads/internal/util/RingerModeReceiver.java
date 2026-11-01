package com.vungle.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nR$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vungle/ads/internal/util/RingerModeReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Lcom/vungle/ads/internal/ui/i;", "webClient", "Lcom/vungle/ads/internal/ui/i;", "getWebClient", "()Lcom/vungle/ads/internal/ui/i;", "setWebClient", "(Lcom/vungle/ads/internal/ui/i;)V", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RingerModeReceiver extends BroadcastReceiver {
    private com.vungle.ads.internal.ui.i webClient;

    public final com.vungle.ads.internal.ui.i getWebClient() {
        return this.webClient;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action;
        com.vungle.ads.internal.ui.i iVar;
        if (intent != null) {
            try {
                action = intent.getAction();
            } catch (Exception e11) {
                String localizedMessage = e11.getLocalizedMessage();
                if (localizedMessage != null) {
                    o.Companion.e("RingerModeReceiver", localizedMessage);
                    return;
                }
                return;
            }
        } else {
            action = null;
        }
        if (Intrinsics.c(action, "android.media.RINGER_MODE_CHANGED")) {
            int intExtra = intent.getIntExtra("android.media.EXTRA_RINGER_MODE", -1);
            o.Companion.d("RingerModeReceiver", "receive ringermode: " + intExtra);
            if (intExtra == 0) {
                com.vungle.ads.internal.ui.i iVar2 = this.webClient;
                if (iVar2 != null) {
                    iVar2.notifySilentModeChange(true);
                    return;
                }
                return;
            }
            if (intExtra != 1) {
                if (intExtra == 2 && (iVar = this.webClient) != null) {
                    iVar.notifySilentModeChange(false);
                    return;
                }
                return;
            }
            com.vungle.ads.internal.ui.i iVar3 = this.webClient;
            if (iVar3 != null) {
                iVar3.notifySilentModeChange(true);
            }
        }
    }

    public final void setWebClient(com.vungle.ads.internal.ui.i iVar) {
        this.webClient = iVar;
    }
}
