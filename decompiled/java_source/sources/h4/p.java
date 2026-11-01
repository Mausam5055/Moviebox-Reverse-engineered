package h4;

import android.app.job.JobInfo;
import android.net.NetworkRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p {
    public static final void a(JobInfo.Builder builder, NetworkRequest networkRequest) {
        Intrinsics.h(builder, "builder");
        builder.setRequiredNetwork(networkRequest);
    }
}
