package androidx.work.impl.utils;

import android.net.NetworkRequest;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f15993a = new r();

    private r() {
    }

    public static final NetworkRequest a(int[] capabilities, int[] transports) {
        Intrinsics.h(capabilities, "capabilities");
        Intrinsics.h(transports, "transports");
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        for (int i11 : capabilities) {
            try {
                builder.addCapability(i11);
            } catch (IllegalArgumentException e11) {
                androidx.work.t.e().l(v.f15995b.a(), "Ignoring adding capability '" + i11 + '\'', e11);
            }
        }
        for (int i12 : w.f15998a) {
            if (!ArraysKt.M(capabilities, i12)) {
                try {
                    builder.removeCapability(i12);
                } catch (IllegalArgumentException e12) {
                    androidx.work.t.e().l(v.f15995b.a(), "Ignoring removing default capability '" + i12 + '\'', e12);
                }
            }
        }
        for (int i13 : transports) {
            builder.addTransportType(i13);
        }
        NetworkRequest networkRequestBuild = builder.build();
        Intrinsics.g(networkRequestBuild, "build(...)");
        return networkRequestBuild;
    }

    public final v b(int[] capabilities, int[] transports) {
        Intrinsics.h(capabilities, "capabilities");
        Intrinsics.h(transports, "transports");
        return new v(a(capabilities, transports));
    }

    public final boolean c(NetworkRequest request, int i11) {
        Intrinsics.h(request, "request");
        return request.hasCapability(i11);
    }

    public final boolean d(NetworkRequest request, int i11) {
        Intrinsics.h(request, "request");
        return request.hasTransport(i11);
    }
}
