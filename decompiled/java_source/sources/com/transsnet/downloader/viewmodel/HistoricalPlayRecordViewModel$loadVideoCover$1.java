package com.transsnet.downloader.viewmodel;

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
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel$loadVideoCover$1", f = "HistoricalPlayRecordViewModel.kt", l = {265, 269, 276}, m = "invokeSuspend")
@SourceDebugExtension
final class HistoricalPlayRecordViewModel$loadVideoCover$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ HistoricalPlayRecordViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistoricalPlayRecordViewModel$loadVideoCover$1(HistoricalPlayRecordViewModel historicalPlayRecordViewModel, Continuation<? super HistoricalPlayRecordViewModel$loadVideoCover$1> continuation) {
        super(2, continuation);
        this.this$0 = historicalPlayRecordViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HistoricalPlayRecordViewModel$loadVideoCover$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HistoricalPlayRecordViewModel$loadVideoCover$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0072 A[Catch: all -> 0x002b, TryCatch #0 {all -> 0x002b, blocks: (B:8:0x0026, B:46:0x00f7, B:48:0x00fd, B:50:0x0105, B:51:0x0108, B:53:0x0110, B:55:0x0116, B:57:0x011c, B:59:0x0126, B:61:0x012c, B:62:0x012f, B:22:0x006c, B:24:0x0072, B:26:0x0083, B:30:0x008c, B:34:0x00a2, B:38:0x00be, B:40:0x00c2, B:43:0x00da, B:45:0x00e6, B:70:0x015a, B:15:0x0042, B:18:0x0053, B:21:0x0060), top: B:79:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:29:0x008b  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:36:0x00bb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c2 A[Catch: all -> 0x002b, TryCatch #0 {all -> 0x002b, blocks: (B:8:0x0026, B:46:0x00f7, B:48:0x00fd, B:50:0x0105, B:51:0x0108, B:53:0x0110, B:55:0x0116, B:57:0x011c, B:59:0x0126, B:61:0x012c, B:62:0x012f, B:22:0x006c, B:24:0x0072, B:26:0x0083, B:30:0x008c, B:34:0x00a2, B:38:0x00be, B:40:0x00c2, B:43:0x00da, B:45:0x00e6, B:70:0x015a, B:15:0x0042, B:18:0x0053, B:21:0x0060), top: B:79:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00d9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x00e6 A[Catch: all -> 0x002b, TryCatch #0 {all -> 0x002b, blocks: (B:8:0x0026, B:46:0x00f7, B:48:0x00fd, B:50:0x0105, B:51:0x0108, B:53:0x0110, B:55:0x0116, B:57:0x011c, B:59:0x0126, B:61:0x012c, B:62:0x012f, B:22:0x006c, B:24:0x0072, B:26:0x0083, B:30:0x008c, B:34:0x00a2, B:38:0x00be, B:40:0x00c2, B:43:0x00da, B:45:0x00e6, B:70:0x015a, B:15:0x0042, B:18:0x0053, B:21:0x0060), top: B:79:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:? A[LOOP:1: B:22:0x006c->B:87:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c0 -> B:69:0x0156). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e4 -> B:69:0x0156). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e6 -> B:46:0x00f7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x014a -> B:66:0x014c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel$loadVideoCover$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
