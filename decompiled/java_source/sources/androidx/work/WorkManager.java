package androidx.work;

import android.content.Context;
import androidx.p009lifecycle.LiveData;
import androidx.work.impl.f1;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class WorkManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15399a = new a(null);

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/work/WorkManager$UpdateResult;", "", "<init>", "(Ljava/lang/String;I)V", "NOT_APPLIED", "APPLIED_IMMEDIATELY", "APPLIED_FOR_NEXT_RUN", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum UpdateResult {
        NOT_APPLIED,
        APPLIED_IMMEDIATELY,
        APPLIED_FOR_NEXT_RUN;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<UpdateResult> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public WorkManager a(Context context) {
            Intrinsics.h(context, "context");
            f1 f1VarO = f1.o(context);
            Intrinsics.g(f1VarO, "getInstance(...)");
            return f1VarO;
        }

        public void b(Context context, b configuration) {
            Intrinsics.h(context, "context");
            Intrinsics.h(configuration, "configuration");
            f1.h(context, configuration);
        }
    }

    public static WorkManager f(Context context) {
        return f15399a.a(context);
    }

    public static void h(Context context, b bVar) {
        f15399a.b(context, bVar);
    }

    public final h0 a(String uniqueWorkName, ExistingWorkPolicy existingWorkPolicy, v request) {
        Intrinsics.h(uniqueWorkName, "uniqueWorkName");
        Intrinsics.h(existingWorkPolicy, "existingWorkPolicy");
        Intrinsics.h(request, "request");
        return b(uniqueWorkName, existingWorkPolicy, CollectionsKt.e(request));
    }

    public abstract h0 b(String str, ExistingWorkPolicy existingWorkPolicy, List list);

    public final w c(i0 request) {
        Intrinsics.h(request, "request");
        return d(CollectionsKt.e(request));
    }

    public abstract w d(List list);

    public abstract w e(String str, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, b0 b0Var);

    public abstract LiveData g(UUID uuid);
}
