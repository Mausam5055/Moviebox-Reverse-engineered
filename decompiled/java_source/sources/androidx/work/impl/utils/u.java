package androidx.work.impl.utils;

import android.net.NetworkRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u f15994a = new u();

    private u() {
    }

    public final int[] a(NetworkRequest request) {
        Intrinsics.h(request, "request");
        int[] capabilities = request.getCapabilities();
        Intrinsics.g(capabilities, "getCapabilities(...)");
        return capabilities;
    }

    public final int[] b(NetworkRequest request) {
        Intrinsics.h(request, "request");
        int[] transportTypes = request.getTransportTypes();
        Intrinsics.g(transportTypes, "getTransportTypes(...)");
        return transportTypes;
    }
}
