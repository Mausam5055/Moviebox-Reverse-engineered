package com.cloud.tmc.integration.utils.share;

import android.content.Context;
import android.content.Intent;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.utils.share.config.IShare;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/integration/utils/share/ShareBySystem;", "Lcom/cloud/tmc/integration/utils/share/config/IShare;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "share", "", "shareParams", "Lcom/cloud/tmc/integration/utils/share/ShareParams;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/utils/share/OnShareListener;", "startActivity", "", "intent", "Landroid/content/Intent;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShareBySystem implements IShare {
    private static final String TAG = "ShareBySystem";
    private final Context context;

    public ShareBySystem(Context context) {
        Intrinsics.h(context, "context");
        this.context = context;
    }

    private final boolean startActivity(Context context, Intent intent) {
        try {
            context.startActivity(intent);
            return true;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "startActivity: ", th2);
            return false;
        }
    }

    @Override // com.cloud.tmc.integration.utils.share.config.IShare
    public void share(ShareParams shareParams, OnShareListener listener) {
        Intrinsics.h(shareParams, "shareParams");
        Context context = this.context;
        if (startActivity(context, ShareUtils.createShareIntent(context, shareParams))) {
            if (listener != null) {
                listener.onShare(1, 1);
            }
        } else if (listener != null) {
            listener.onShare(1, 2);
        }
    }
}
