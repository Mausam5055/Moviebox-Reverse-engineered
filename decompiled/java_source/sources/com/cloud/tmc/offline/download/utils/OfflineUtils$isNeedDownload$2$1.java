package com.cloud.tmc.offline.download.utils;

import com.cloud.h5update.bean.UpdateEntity;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.model.OffPkgConfig;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.cloud.tmc.offline.download.utils.OfflineUtils$isNeedDownload$2$1", f = "OfflineUtils.kt", l = {}, m = "invokeSuspend")
final class OfflineUtils$isNeedDownload$2$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ UpdateEntity $diffUpdateEntity;
    final /* synthetic */ OffPkgConfig $offPkgConfigCache;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OfflineUtils$isNeedDownload$2$1(OffPkgConfig offPkgConfig, UpdateEntity updateEntity, Continuation<? super OfflineUtils$isNeedDownload$2$1> continuation) {
        super(2, continuation);
        this.$offPkgConfigCache = offPkgConfig;
        this.$diffUpdateEntity = updateEntity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new OfflineUtils$isNeedDownload$2$1(this.$offPkgConfigCache, this.$diffUpdateEntity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((OfflineUtils$isNeedDownload$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            OfflineUtils offlineUtils = OfflineUtils.INSTANCE;
            String group = this.$offPkgConfigCache.getGroup();
            String version = this.$offPkgConfigCache.getVersion();
            if (version == null) {
                version = "";
            }
            offlineUtils.deleteOfflineZipUnCompressDir(group, version, this.$diffUpdateEntity);
        } catch (Throwable th2) {
            TmcLogger.e(OfflineUtils.TAG, "Error deleting", th2);
        }
        return Unit.f67061a;
    }
}
