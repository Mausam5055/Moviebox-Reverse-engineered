package com.transsnet.downloader.viewmodel;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.LocalFileViewModel$getOutsideLocalVideoList$1", f = "LocalFileViewModel.kt", l = {46, Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class LocalFileViewModel$getOutsideLocalVideoList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $fromDb;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    boolean Z$0;
    int label;
    final /* synthetic */ LocalFileViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalFileViewModel$getOutsideLocalVideoList$1(LocalFileViewModel localFileViewModel, boolean z10, Continuation<? super LocalFileViewModel$getOutsideLocalVideoList$1> continuation) {
        super(2, continuation);
        this.this$0 = localFileViewModel;
        this.$fromDb = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalFileViewModel$getOutsideLocalVideoList$1(this.this$0, this.$fromDb, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalFileViewModel$getOutsideLocalVideoList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:19:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:22:0x00dd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x00de  */
    /* JADX WARN: Code duplicated, block: B:26:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:33:0x0116 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x011b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00f3 -> B:30:0x00f6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0114 -> B:34:0x0117). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.viewmodel.LocalFileViewModel$getOutsideLocalVideoList$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
