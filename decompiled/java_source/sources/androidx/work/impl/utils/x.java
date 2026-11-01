package androidx.work.impl.utils;

import android.net.NetworkRequest;
import android.os.Build;
import androidx.work.NetworkType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class x {

    public static final /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15999a;

        static {
            int[] iArr = new int[NetworkType.values().length];
            try {
                iArr[NetworkType.METERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkType.UNMETERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkType.NOT_ROAMING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f15999a = iArr;
        }
    }

    public static final NetworkRequest a(NetworkType networkType) {
        Intrinsics.h(networkType, "<this>");
        if (networkType == NetworkType.NOT_REQUIRED) {
            return null;
        }
        NetworkRequest.Builder builderRemoveCapability = new NetworkRequest.Builder().addCapability(12).addCapability(16).removeCapability(15).removeCapability(13);
        if (Build.VERSION.SDK_INT >= 30 && networkType == NetworkType.TEMPORARILY_UNMETERED) {
            return builderRemoveCapability.addCapability(25).build();
        }
        int i11 = a.f15999a[networkType.ordinal()];
        if (i11 == 1) {
            builderRemoveCapability = builderRemoveCapability.addTransportType(0);
        } else if (i11 == 2) {
            builderRemoveCapability = builderRemoveCapability.addCapability(11);
        } else if (i11 == 3) {
            builderRemoveCapability = builderRemoveCapability.addCapability(18);
        }
        return builderRemoveCapability.build();
    }
}
