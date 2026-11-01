package com.transsion.subroom.ui;

import androidx.fragment.app.FragmentActivity;
import com.therouter.inject.Singleton;
import com.transsion.baselib.net.g;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Singleton
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/transsion/subroom/ui/AppLifeStatusUIImpl;", "Lcom/transsion/baselib/net/g;", "<init>", "()V", "Landroidx/fragment/app/FragmentActivity;", "activity", "", "message", "reason", "", "a", "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V", "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppLifeStatusUIImpl implements g {
    @Override // com.transsion.baselib.net.g
    public void a(FragmentActivity activity, String message, String reason) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(message, "message");
        Intrinsics.h(reason, "reason");
        WarningMessageDialog.INSTANCE.a(message, reason).k0(activity, "warning_message");
    }
}
