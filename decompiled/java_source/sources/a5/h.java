package a5;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public class h implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f239a = new h();

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (b.a(obj)) {
            j1Var.V('{', AppMeasurementSdk.ConditionalUserProperty.VALUE, c.a(obj).longValue());
            j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
        } else if (e.a(obj)) {
            j1Var.T('{', AppMeasurementSdk.ConditionalUserProperty.VALUE, f.a(obj).doubleValue());
            j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
        }
    }
}
