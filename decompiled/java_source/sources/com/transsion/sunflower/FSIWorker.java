package com.transsion.sunflower;

import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.s;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\u000eB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/transsion/sunflower/FSIWorker;", "Landroidx/work/Worker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "workerParams", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/s$a;", TtmlNode.TAG_P, "()Landroidx/work/s$a;", "e", "Landroid/content/Context;", "f", "a", "Sunflower_psRelease"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FSIWorker extends Worker {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FSIWorker(Context context, WorkerParameters workerParams) {
        super(context, workerParams);
        Intrinsics.h(context, "context");
        Intrinsics.h(workerParams, "workerParams");
        this.context = context;
    }

    @Override // androidx.work.Worker
    public s.a p() {
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            FSNManager fSNManagerA = FSNManager.f55052f.a();
            if (fSNManagerA != null) {
                fSNManagerA.r("fsi_worker");
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        s.a aVarC = s.a.c();
        Intrinsics.g(aVarC, "success()");
        return aVarC;
    }
}
