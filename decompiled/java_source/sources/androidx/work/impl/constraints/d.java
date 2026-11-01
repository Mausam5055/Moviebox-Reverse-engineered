package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.work.t;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
final class d extends ConnectivityManager.NetworkCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f15613b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f15614a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(Ref.BooleanRef booleanRef, ConnectivityManager connectivityManager, d dVar) {
            if (booleanRef.element) {
                t.e().a(WorkConstraintsTrackerKt.f15589a, "NetworkRequestConstraintController unregister callback");
                connectivityManager.unregisterNetworkCallback(dVar);
            }
            return Unit.f67061a;
        }

        public final Function0 b(final ConnectivityManager connManager, NetworkRequest networkRequest, Function1 onConstraintState) {
            Intrinsics.h(connManager, "connManager");
            Intrinsics.h(networkRequest, "networkRequest");
            Intrinsics.h(onConstraintState, "onConstraintState");
            final d dVar = new d(onConstraintState, null);
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            try {
                t.e().a(WorkConstraintsTrackerKt.f15589a, "NetworkRequestConstraintController register callback");
                connManager.registerNetworkCallback(networkRequest, dVar);
                booleanRef.element = true;
            } catch (RuntimeException e11) {
                String name = e11.getClass().getName();
                Intrinsics.g(name, "getName(...)");
                if (!StringsKt.G(name, "TooManyRequestsException", false, 2, null)) {
                    throw e11;
                }
                t.e().b(WorkConstraintsTrackerKt.f15589a, "NetworkRequestConstraintController couldn't register callback", e11);
                onConstraintState.invoke(new b.C0134b(7));
            }
            return new Function0() { // from class: androidx.work.impl.constraints.c
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return d.a.c(booleanRef, connManager, dVar);
                }
            };
        }
    }

    private d(Function1 function1) {
        this.f15614a = function1;
    }

    public /* synthetic */ d(Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        t.e().a(WorkConstraintsTrackerKt.f15589a, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        this.f15614a.invoke(b.a.f15592a);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        Intrinsics.h(network, "network");
        t.e().a(WorkConstraintsTrackerKt.f15589a, "NetworkRequestConstraintController onLost callback");
        this.f15614a.invoke(new b.C0134b(7));
    }
}
