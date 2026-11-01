package com.transsion.lib_web.download_render;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.transsion.lib_web.download_render.FileDownloadTaskManager$startDownloadExecution$1", f = "FileDownloadTaskManager.kt", l = {256}, m = "invokeSuspend")
@SourceDebugExtension
final class FileDownloadTaskManager$startDownloadExecution$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;

    FileDownloadTaskManager$startDownloadExecution$1(Continuation<? super FileDownloadTaskManager$startDownloadExecution$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FileDownloadTaskManager$startDownloadExecution$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((FileDownloadTaskManager$startDownloadExecution$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:19:0x0053 A[Catch: all -> 0x0062, TRY_LEAVE, TryCatch #0 {all -> 0x0062, blocks: (B:17:0x003c, B:19:0x0053), top: B:39:0x003c, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0064  */
    /* JADX WARN: Code duplicated, block: B:26:0x006a A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #2 {all -> 0x0019, blocks: (B:6:0x0015, B:24:0x0065, B:26:0x006a, B:29:0x0081, B:14:0x002d, B:30:0x0085, B:31:0x0088, B:13:0x0026, B:17:0x003c, B:19:0x0053), top: B:43:0x000d, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0081 A[Catch: all -> 0x0019, TRY_ENTER, TryCatch #2 {all -> 0x0019, blocks: (B:6:0x0015, B:24:0x0065, B:26:0x006a, B:29:0x0081, B:14:0x002d, B:30:0x0085, B:31:0x0088, B:13:0x0026, B:17:0x003c, B:19:0x0053), top: B:43:0x000d, inners: #0 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0039 -> B:39:0x003c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:29:0x0081
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r1 = r8.label
            r2 = 1
            r3 = 0
            java.lang.String r4 = "<startDownloadExecution> 设置下载状态为false"
            java.lang.String r5 = "DR_FileDownloadTaskManager"
            r6 = 0
            if (r1 == 0) goto L23
            if (r1 != r2) goto L1b
            java.lang.Object r1 = r8.L$0
            kotlinx.coroutines.sync.a r1 = (kotlinx.coroutines.sync.a) r1
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L19
            goto L3c
        L19:
            r9 = move-exception
            goto L89
        L1b:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L23:
            kotlin.ResultKt.b(r9)
            gm.i r9 = gm.i.f63883a     // Catch: java.lang.Throwable -> L19
            java.lang.String r1 = "<startDownloadExecution> 执行下载任务"
            r9.a(r5, r1)     // Catch: java.lang.Throwable -> L19
        L2d:
            kotlinx.coroutines.sync.a r1 = com.transsion.lib_web.download_render.FileDownloadTaskManager.c()     // Catch: java.lang.Throwable -> L19
            r8.L$0 = r1     // Catch: java.lang.Throwable -> L19
            r8.label = r2     // Catch: java.lang.Throwable -> L19
            java.lang.Object r9 = r1.h(r6, r8)     // Catch: java.lang.Throwable -> L19
            if (r9 != r0) goto L3c
            return r0
        L3c:
            java.util.LinkedHashMap r9 = com.transsion.lib_web.download_render.FileDownloadTaskManager.a()     // Catch: java.lang.Throwable -> L62
            java.util.Set r9 = r9.entrySet()     // Catch: java.lang.Throwable -> L62
            java.lang.String r7 = "<get-entries>(...)"
            kotlin.jvm.internal.Intrinsics.g(r9, r7)     // Catch: java.lang.Throwable -> L62
            java.lang.Iterable r9 = (java.lang.Iterable) r9     // Catch: java.lang.Throwable -> L62
            java.lang.Object r9 = kotlin.collections.CollectionsKt.j0(r9)     // Catch: java.lang.Throwable -> L62
            java.util.Map$Entry r9 = (java.util.Map.Entry) r9     // Catch: java.lang.Throwable -> L62
            if (r9 == 0) goto L64
            java.util.LinkedHashMap r7 = com.transsion.lib_web.download_render.FileDownloadTaskManager.a()     // Catch: java.lang.Throwable -> L62
            java.lang.Object r9 = r9.getKey()     // Catch: java.lang.Throwable -> L62
            java.lang.Object r9 = r7.remove(r9)     // Catch: java.lang.Throwable -> L62
            jm.a r9 = (jm.a) r9     // Catch: java.lang.Throwable -> L62
            goto L65
        L62:
            r9 = move-exception
            goto L85
        L64:
            r9 = r6
        L65:
            r1.unlock(r6)     // Catch: java.lang.Throwable -> L19
            if (r9 != 0) goto L81
            gm.i r9 = gm.i.f63883a     // Catch: java.lang.Throwable -> L19
            java.lang.String r0 = "<startDownloadExecution> get fileDownloadTask is null, finish all downlaodTask"
            r9.f(r5, r0)     // Catch: java.lang.Throwable -> L19
            r9.a(r5, r4)
        L74:
            java.util.concurrent.atomic.AtomicBoolean r9 = com.transsion.lib_web.download_render.FileDownloadTaskManager.d()
            r9.set(r3)
            com.transsion.lib_web.download_render.utils.a r9 = com.transsion.lib_web.download_render.utils.a.f46185a
            r9.b()
            goto La3
        L81:
            r9.c()     // Catch: java.lang.Throwable -> L19
            goto L2d
        L85:
            r1.unlock(r6)     // Catch: java.lang.Throwable -> L19
            throw r9     // Catch: java.lang.Throwable -> L19
        L89:
            gm.i r0 = gm.i.f63883a     // Catch: java.lang.Throwable -> La6
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La6
            r1.<init>()     // Catch: java.lang.Throwable -> La6
            java.lang.String r2 = "<startDownloadExecution> fail: "
            r1.append(r2)     // Catch: java.lang.Throwable -> La6
            r1.append(r9)     // Catch: java.lang.Throwable -> La6
            java.lang.String r9 = r1.toString()     // Catch: java.lang.Throwable -> La6
            r0.b(r5, r9)     // Catch: java.lang.Throwable -> La6
            r0.a(r5, r4)
            goto L74
        La3:
            kotlin.Unit r9 = kotlin.Unit.f67061a
            return r9
        La6:
            r9 = move-exception
            gm.i r0 = gm.i.f63883a
            r0.a(r5, r4)
            java.util.concurrent.atomic.AtomicBoolean r0 = com.transsion.lib_web.download_render.FileDownloadTaskManager.d()
            r0.set(r3)
            com.transsion.lib_web.download_render.utils.a r0 = com.transsion.lib_web.download_render.utils.a.f46185a
            r0.b()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.lib_web.download_render.FileDownloadTaskManager$startDownloadExecution$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
