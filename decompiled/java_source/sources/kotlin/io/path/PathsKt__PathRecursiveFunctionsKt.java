package kotlin.io.path;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.nio.file.Path;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
class PathsKt__PathRecursiveFunctionsKt extends p {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f67257a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f67258b;

        static {
            int[] iArr = new int[CopyActionResult.values().length];
            try {
                iArr[CopyActionResult.CONTINUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CopyActionResult.TERMINATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CopyActionResult.SKIP_SUBTREE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f67257a = iArr;
            int[] iArr2 = new int[OnErrorResult.values().length];
            try {
                iArr2[OnErrorResult.TERMINATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[OnErrorResult.SKIP_SUBTREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            f67258b = iArr2;
        }
    }

    public static final void a(Path path) throws IllegalFileNameException {
        Intrinsics.h(path, "<this>");
        String strB = t.b(path);
        int iHashCode = strB.hashCode();
        if (iHashCode != 46) {
            if (iHashCode != 1518) {
                if (iHashCode != 45679) {
                    if (iHashCode != 45724) {
                        if (iHashCode != 1472) {
                            if (iHashCode != 1473 || !strB.equals("./")) {
                                return;
                            }
                        } else if (!strB.equals("..")) {
                            return;
                        }
                    } else if (!strB.equals("..\\")) {
                        return;
                    }
                } else if (!strB.equals("../")) {
                    return;
                }
            } else if (!strB.equals(".\\")) {
                return;
            }
        } else if (!strB.equals(".")) {
            return;
        }
        throw new IllegalFileNameException(path);
    }
}
