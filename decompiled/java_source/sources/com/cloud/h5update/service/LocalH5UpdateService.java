package com.cloud.h5update.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.cloud.h5update.b;
import com.cloud.h5update.utils.l;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/cloud/h5update/service/LocalH5UpdateService;", "Landroid/app/IntentService;", "<init>", "()V", "", "a", "Landroid/content/Intent;", "intent", "onHandleIntent", "(Landroid/content/Intent;)V", "apph5update_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LocalH5UpdateService extends IntentService {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.cloud.h5update.service.LocalH5UpdateService$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            Intrinsics.h(context, "context");
            try {
                Intent intent = new Intent(context, (Class<?>) LocalH5UpdateService.class);
                intent.setAction("com.cloud.h5update.service.action.LOCAL_UPDATE");
                context.startService(intent);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public LocalH5UpdateService() {
        super("LocalH5UpdateService");
    }

    private final void a() {
        l.f21309a.e(b.f21252g.a());
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (Intrinsics.c("com.cloud.h5update.service.action.LOCAL_UPDATE", action)) {
                a();
                return;
            }
            gg.b.f63567a.c("error intent for action: " + action);
        }
    }
}
