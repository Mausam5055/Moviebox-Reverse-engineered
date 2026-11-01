package com.wecloud.load.lib;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.wecloud.load.lib.bean.SoZipInfo;
import java.util.List;
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
@DebugMetadata(c = "com.wecloud.load.lib.SoLoadService$downloadAndLoadSoInternal$1", f = "SoLoadService.kt", l = {Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class SoLoadService$downloadAndLoadSoInternal$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<SoZipInfo> $soZipList;
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ SoLoadService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SoLoadService$downloadAndLoadSoInternal$1(List<SoZipInfo> list, SoLoadService soLoadService, Continuation<? super SoLoadService$downloadAndLoadSoInternal$1> continuation) {
        super(2, continuation);
        this.$soZipList = list;
        this.this$0 = soLoadService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SoLoadService$downloadAndLoadSoInternal$1(this.$soZipList, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SoLoadService$downloadAndLoadSoInternal$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0080 A[Catch: Exception -> 0x002e, CancellationException -> 0x016e, TryCatch #2 {CancellationException -> 0x016e, Exception -> 0x002e, blocks: (B:6:0x0021, B:31:0x00ed, B:14:0x007a, B:16:0x0080, B:18:0x0088, B:19:0x008b, B:21:0x0093, B:24:0x009b, B:26:0x00a1, B:27:0x00a5, B:32:0x011b, B:13:0x003c), top: B:38:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0088 A[Catch: Exception -> 0x002e, CancellationException -> 0x016e, TryCatch #2 {CancellationException -> 0x016e, Exception -> 0x002e, blocks: (B:6:0x0021, B:31:0x00ed, B:14:0x007a, B:16:0x0080, B:18:0x0088, B:19:0x008b, B:21:0x0093, B:24:0x009b, B:26:0x00a1, B:27:0x00a5, B:32:0x011b, B:13:0x003c), top: B:38:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0093 A[Catch: Exception -> 0x002e, CancellationException -> 0x016e, TryCatch #2 {CancellationException -> 0x016e, Exception -> 0x002e, blocks: (B:6:0x0021, B:31:0x00ed, B:14:0x007a, B:16:0x0080, B:18:0x0088, B:19:0x008b, B:21:0x0093, B:24:0x009b, B:26:0x00a1, B:27:0x00a5, B:32:0x011b, B:13:0x003c), top: B:38:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00a1 A[Catch: Exception -> 0x002e, CancellationException -> 0x016e, TryCatch #2 {CancellationException -> 0x016e, Exception -> 0x002e, blocks: (B:6:0x0021, B:31:0x00ed, B:14:0x007a, B:16:0x0080, B:18:0x0088, B:19:0x008b, B:21:0x0093, B:24:0x009b, B:26:0x00a1, B:27:0x00a5, B:32:0x011b, B:13:0x003c), top: B:38:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00e6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:40:0x009b A[ADDED_TO_REGION, EDGE_INSN: B:40:0x009b->B:24:0x009b BREAK  A[LOOP:0: B:14:0x007a->B:23:0x0099], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x011b A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00e7 -> B:31:0x00ed). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:16:0x0080
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.wecloud.load.lib.SoLoadService$downloadAndLoadSoInternal$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
