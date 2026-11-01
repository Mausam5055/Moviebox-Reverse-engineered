package androidx.privacysandbox.ads.adservices.java.measurement;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.r;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import w3.n;
import w3.o;
import w3.p;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MeasurementManagerFutures {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f14020a = new a(null);

    /* JADX INFO: Access modifiers changed from: private */
    static final class Api33Ext5JavaImpl extends MeasurementManagerFutures {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final n f14021b;

        public Api33Ext5JavaImpl(n mMeasurementManager) {
            Intrinsics.h(mMeasurementManager, "mMeasurementManager");
            this.f14021b = mMeasurementManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        public r b() {
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1(this, null), 3, null), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        public r c(Uri trigger) {
            Intrinsics.h(trigger, "trigger");
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1(this, trigger, null), 3, null), null, 1, null);
        }

        public r e(w3.a deletionRequest) {
            Intrinsics.h(deletionRequest, "deletionRequest");
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1(this, deletionRequest, null), 3, null), null, 1, null);
        }

        public r f(Uri attributionSource, InputEvent inputEvent) {
            Intrinsics.h(attributionSource, "attributionSource");
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1(this, attributionSource, inputEvent, null), 3, null), null, 1, null);
        }

        public r g(o request) {
            Intrinsics.h(request, "request");
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(this, request, null), 3, null), null, 1, null);
        }

        public r h(p request) {
            Intrinsics.h(request, "request");
            return CoroutineAdapterKt.c(k.b(o0.a(y0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebTriggerAsync$1(this, request, null), 3, null), null, 1, null);
        }
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MeasurementManagerFutures a(Context context) {
            Intrinsics.h(context, "context");
            n nVarA = n.f77561a.a(context);
            if (nVarA != null) {
                return new Api33Ext5JavaImpl(nVarA);
            }
            return null;
        }
    }

    public static final MeasurementManagerFutures a(Context context) {
        return f14020a.a(context);
    }

    public abstract r b();

    public abstract r c(Uri uri);
}
