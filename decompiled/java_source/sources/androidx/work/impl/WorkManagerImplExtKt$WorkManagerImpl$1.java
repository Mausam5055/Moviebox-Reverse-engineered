package androidx.work.impl;

import android.content.Context;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final /* synthetic */ class WorkManagerImplExtKt$WorkManagerImpl$1 extends FunctionReferenceImpl implements Function6<Context, androidx.work.b, j4.c, WorkDatabase, i4.n, s, List<? extends u>> {
    public static final WorkManagerImplExtKt$WorkManagerImpl$1 INSTANCE = new WorkManagerImplExtKt$WorkManagerImpl$1();

    WorkManagerImplExtKt$WorkManagerImpl$1() {
        super(6, WorkManagerImplExtKt.class, "createSchedulers", "createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;", 1);
    }

    @Override // kotlin.jvm.functions.Function6
    public final List<u> invoke(Context p11, androidx.work.b p12, j4.c p13, WorkDatabase p14, i4.n p15, s p16) {
        Intrinsics.h(p11, "p0");
        Intrinsics.h(p12, "p1");
        Intrinsics.h(p13, "p2");
        Intrinsics.h(p14, "p3");
        Intrinsics.h(p15, "p4");
        Intrinsics.h(p16, "p5");
        return WorkManagerImplExtKt.b(p11, p12, p13, p14, p15, p16);
    }
}
