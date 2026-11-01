package com.transsnet.downloader.proxy;

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
@DebugMetadata(c = "com.transsnet.downloader.proxy.DownloadFileCache$updateDBRanges$1", f = "DownloadFileCache.kt", l = {339}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadFileCache$updateDBRanges$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<DownloadRange> $downloadRanges;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ DownloadFileCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadFileCache$updateDBRanges$1(List<DownloadRange> list, DownloadFileCache downloadFileCache, Continuation<? super DownloadFileCache$updateDBRanges$1> continuation) {
        super(2, continuation);
        this.$downloadRanges = list;
        this.this$0 = downloadFileCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadFileCache$updateDBRanges$1(this.$downloadRanges, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadFileCache$updateDBRanges$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0040 A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:6:0x0017, B:17:0x005a, B:12:0x003a, B:14:0x0040, B:11:0x0026), top: B:22:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:16:0x0059 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0057 -> B:17:0x005a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r1 = r13.label
            r2 = 1
            if (r1 == 0) goto L23
            if (r1 != r2) goto L1b
            java.lang.Object r1 = r13.L$2
            com.transsion.baselib.db.download.DownloadRange r1 = (com.transsion.baselib.db.download.DownloadRange) r1
            java.lang.Object r3 = r13.L$1
            java.util.Iterator r3 = (java.util.Iterator) r3
            java.lang.Object r4 = r13.L$0
            com.transsnet.downloader.proxy.DownloadFileCache r4 = (com.transsnet.downloader.proxy.DownloadFileCache) r4
            kotlin.ResultKt.b(r14)     // Catch: java.lang.Throwable -> La3
            goto L5a
        L1b:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r0)
            throw r14
        L23:
            kotlin.ResultKt.b(r14)
            java.util.ArrayList r14 = new java.util.ArrayList     // Catch: java.lang.Throwable -> La3
            r14.<init>()     // Catch: java.lang.Throwable -> La3
            java.util.List<com.transsion.baselib.db.download.DownloadRange> r1 = r13.$downloadRanges     // Catch: java.lang.Throwable -> La3
            java.util.Collection r1 = (java.util.Collection) r1     // Catch: java.lang.Throwable -> La3
            r14.addAll(r1)     // Catch: java.lang.Throwable -> La3
            com.transsnet.downloader.proxy.DownloadFileCache r1 = r13.this$0     // Catch: java.lang.Throwable -> La3
            java.util.Iterator r14 = r14.iterator()     // Catch: java.lang.Throwable -> La3
            r3 = r14
            r4 = r1
        L3a:
            boolean r14 = r3.hasNext()     // Catch: java.lang.Throwable -> La3
            if (r14 == 0) goto La3
            java.lang.Object r14 = r3.next()     // Catch: java.lang.Throwable -> La3
            r1 = r14
            com.transsion.baselib.db.download.DownloadRange r1 = (com.transsion.baselib.db.download.DownloadRange) r1     // Catch: java.lang.Throwable -> La3
            lj.n0 r14 = com.transsnet.downloader.proxy.DownloadFileCache.e(r4)     // Catch: java.lang.Throwable -> La3
            r13.L$0 = r4     // Catch: java.lang.Throwable -> La3
            r13.L$1 = r3     // Catch: java.lang.Throwable -> La3
            r13.L$2 = r1     // Catch: java.lang.Throwable -> La3
            r13.label = r2     // Catch: java.lang.Throwable -> La3
            java.lang.Object r14 = r14.d(r1, r13)     // Catch: java.lang.Throwable -> La3
            if (r14 != r0) goto L5a
            return r0
        L5a:
            int r14 = r1.getThreadId()     // Catch: java.lang.Throwable -> La3
            int r5 = r1.getRangeId()     // Catch: java.lang.Throwable -> La3
            long r6 = r1.getStart()     // Catch: java.lang.Throwable -> La3
            long r8 = r1.getEnd()     // Catch: java.lang.Throwable -> La3
            long r10 = r1.getProgress()     // Catch: java.lang.Throwable -> La3
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La3
            r1.<init>()     // Catch: java.lang.Throwable -> La3
            java.lang.String r12 = "================range,  updateDBRanges ，threadId = "
            r1.append(r12)     // Catch: java.lang.Throwable -> La3
            r1.append(r14)     // Catch: java.lang.Throwable -> La3
            java.lang.String r14 = ", rangeId = "
            r1.append(r14)     // Catch: java.lang.Throwable -> La3
            r1.append(r5)     // Catch: java.lang.Throwable -> La3
            java.lang.String r14 = ", start = "
            r1.append(r14)     // Catch: java.lang.Throwable -> La3
            r1.append(r6)     // Catch: java.lang.Throwable -> La3
            java.lang.String r14 = ", end = "
            r1.append(r14)     // Catch: java.lang.Throwable -> La3
            r1.append(r8)     // Catch: java.lang.Throwable -> La3
            java.lang.String r14 = ", progress = "
            r1.append(r14)     // Catch: java.lang.Throwable -> La3
            r1.append(r10)     // Catch: java.lang.Throwable -> La3
            java.lang.String r14 = r1.toString()     // Catch: java.lang.Throwable -> La3
            com.danikula.videocache.q.c(r14)     // Catch: java.lang.Throwable -> La3
            goto L3a
        La3:
            kotlin.Unit r14 = kotlin.Unit.f67061a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.proxy.DownloadFileCache$updateDBRanges$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
