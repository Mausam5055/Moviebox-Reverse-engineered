package com.transsion.fissionapi;

import android.content.Context;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.inject.Singleton;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Singleton
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0007\bg\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\r\u001a\u0004\u0018\u00010\u0005H&¢\u0006\u0004\b\r\u0010\u0007J\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0005H&¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0002H&¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0014\u001a\u00020\n2\b\b\u0002\u0010\u0011\u001a\u00020\u0002H&¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H&¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0002H&¢\u0006\u0004\b\u001a\u0010\u0013J\u000f\u0010\u001b\u001a\u00020\u0002H&¢\u0006\u0004\b\u001b\u0010\u0004¨\u0006\u001c"}, d2 = {"Lcom/transsion/fissionapi/IFissionProvider;", "", "", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "()Z", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Ljava/lang/String;", "Landroid/content/Context;", "context", "", "e", "(Landroid/content/Context;)V", "h", "inviteCode", "a", "(Ljava/lang/String;)V", "force", "c", "(Z)V", "i", "", "subjectType", "f", "(I)V", "isExists", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "g", "FissionApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IFissionProvider {

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {
        public static /* synthetic */ void a(IFissionProvider iFissionProvider, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkFissionConfig");
            }
            if ((i11 & 1) != 0) {
                z10 = false;
            }
            iFissionProvider.i(z10);
        }
    }

    void a(String inviteCode);

    void b(boolean isExists);

    void c(boolean force);

    String d();

    void e(Context context);

    boolean enable();

    void f(int subjectType);

    boolean g();

    String h();

    void i(boolean force);
}
