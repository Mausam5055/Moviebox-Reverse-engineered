package androidx.window.core;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SpecificationComputer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15277a = new a(null);

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/window/core/SpecificationComputer$VerificationMode;", "", "(Ljava/lang/String;I)V", "STRICT", "LOG", "QUIET", "window_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum VerificationMode {
        STRICT,
        LOG,
        QUIET
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ SpecificationComputer b(a aVar, Object obj, String str, VerificationMode verificationMode, e eVar, int i11, Object obj2) {
            if ((i11 & 2) != 0) {
                verificationMode = c.f15293a.a();
            }
            if ((i11 & 4) != 0) {
                eVar = androidx.window.core.a.f15288a;
            }
            return aVar.a(obj, str, verificationMode, eVar);
        }

        public final SpecificationComputer a(Object obj, String tag, VerificationMode verificationMode, e logger) {
            Intrinsics.h(obj, "<this>");
            Intrinsics.h(tag, "tag");
            Intrinsics.h(verificationMode, "verificationMode");
            Intrinsics.h(logger, "logger");
            return new f(obj, tag, verificationMode, logger);
        }
    }

    public abstract Object a();

    protected final String b(Object value, String message) {
        Intrinsics.h(value, "value");
        Intrinsics.h(message, "message");
        return message + " value: " + value;
    }

    public abstract SpecificationComputer c(String str, Function1 function1);
}
