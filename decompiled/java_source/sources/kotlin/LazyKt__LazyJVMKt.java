package kotlin;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class LazyKt__LazyJVMKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f67038a;

        static {
            int[] iArr = new int[LazyThreadSafetyMode.values().length];
            try {
                iArr[LazyThreadSafetyMode.SYNCHRONIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LazyThreadSafetyMode.PUBLICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LazyThreadSafetyMode.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f67038a = iArr;
        }
    }

    public static Lazy a(LazyThreadSafetyMode mode, Function0 initializer) {
        Intrinsics.h(mode, "mode");
        Intrinsics.h(initializer, "initializer");
        int i11 = WhenMappings.f67038a[mode.ordinal()];
        int i12 = 2;
        if (i11 == 1) {
            DefaultConstructorMarker defaultConstructorMarker = null;
            return new SynchronizedLazyImpl(initializer, defaultConstructorMarker, i12, defaultConstructorMarker);
        }
        if (i11 == 2) {
            return new SafePublicationLazyImpl(initializer);
        }
        if (i11 == 3) {
            return new UnsafeLazyImpl(initializer);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static Lazy b(Function0 initializer) {
        Intrinsics.h(initializer, "initializer");
        DefaultConstructorMarker defaultConstructorMarker = null;
        return new SynchronizedLazyImpl(initializer, defaultConstructorMarker, 2, defaultConstructorMarker);
    }
}
