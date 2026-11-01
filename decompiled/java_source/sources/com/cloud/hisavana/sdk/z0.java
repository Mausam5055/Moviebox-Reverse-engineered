package com.cloud.hisavana.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00142\u00020\u0001:\u0001\u0010B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\tJ#\u0010\u000e\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R$\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/cloud/hisavana/sdk/z0;", "Landroid/content/BroadcastReceiver;", "", "appId", "Lkotlin/Function1;", "", "", "onAddResult", "<init>", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/jvm/functions/Function1;", "c", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class z0 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String appId;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Function1 onAddResult;

    public z0(String appId, Function1 function1) {
        Intrinsics.h(appId, "appId");
        this.appId = appId;
        this.onAddResult = function1;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null || intent == null || !Intrinsics.c(intent.getAction(), "action_add_item_result_receiver")) {
            return;
        }
        String stringExtra = intent.getStringExtra("add_item_info_id_key");
        if (stringExtra == null) {
            stringExtra = "";
        }
        if (stringExtra.length() != 0 && Intrinsics.c(stringExtra, this.appId)) {
            int intExtra = intent.getIntExtra("add_item_result_key", -1);
            if (intExtra == 0) {
                Function1 function1 = this.onAddResult;
                if (function1 != null) {
                    function1.invoke(0);
                }
            } else if (intExtra != 1) {
                Function1 function2 = this.onAddResult;
                if (function2 != null) {
                    function2.invoke(0);
                }
            } else {
                Function1 function3 = this.onAddResult;
                if (function3 != null) {
                    function3.invoke(1);
                }
            }
            this.onAddResult = null;
        }
    }
}
