package com.transsion.spwaitkiller;

import android.content.Context;
import android.os.Build;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import org.lsposed.hiddenapibypass.l;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, d2 = {"Lcom/transsion/spwaitkiller/DefaultHiddenApiExempter;", "Lcom/transsion/spwaitkiller/HiddenApiExempter;", "<init>", "()V", "exempt", "", "context", "Landroid/content/Context;", "SpWaitKiller_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultHiddenApiExempter implements HiddenApiExempter {
    @Override // com.transsion.spwaitkiller.HiddenApiExempter
    public boolean exempt(Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            return l.b("Landroid/app/QueuedWork;", "Landroid/os/SystemProperties;");
        }
        return true;
    }
}
