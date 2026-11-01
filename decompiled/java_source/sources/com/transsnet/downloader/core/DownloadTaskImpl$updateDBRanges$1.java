package com.transsnet.downloader.core;

import com.transsion.baselib.db.download.DownloadRange;
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
@DebugMetadata(c = "com.transsnet.downloader.core.DownloadTaskImpl$updateDBRanges$1", f = "DownloadTaskImpl.kt", l = {754}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadTaskImpl$updateDBRanges$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<DownloadRange> $downloadRanges;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ DownloadTaskImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadTaskImpl$updateDBRanges$1(DownloadTaskImpl downloadTaskImpl, List<DownloadRange> list, Continuation<? super DownloadTaskImpl$updateDBRanges$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadTaskImpl;
        this.$downloadRanges = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadTaskImpl$updateDBRanges$1(this.this$0, this.$downloadRanges, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadTaskImpl$updateDBRanges$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0072 A[Catch: all -> 0x0105, TryCatch #0 {all -> 0x0105, blocks: (B:6:0x001f, B:17:0x008d, B:12:0x006c, B:14:0x0072, B:18:0x00dc, B:11:0x003a), top: B:22:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:16:0x008c A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x008a -> B:17:0x008d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.core.DownloadTaskImpl$updateDBRanges$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
