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
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.MediaBaseViewModel$loadLocalVideoCover$1", f = "MediaBaseViewModel.kt", l = {91, 95}, m = "invokeSuspend")
@SourceDebugExtension
final class MediaBaseViewModel$loadLocalVideoCover$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ MediaBaseViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBaseViewModel$loadLocalVideoCover$1(MediaBaseViewModel mediaBaseViewModel, Continuation<? super MediaBaseViewModel$loadLocalVideoCover$1> continuation) {
        super(2, continuation);
        this.this$0 = mediaBaseViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MediaBaseViewModel$loadLocalVideoCover$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MediaBaseViewModel$loadLocalVideoCover$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0054 A[Catch: all -> 0x001f, TryCatch #0 {all -> 0x001f, blocks: (B:7:0x001a, B:39:0x00b9, B:18:0x004e, B:20:0x0054, B:22:0x0065, B:26:0x006e, B:30:0x0084, B:34:0x009d, B:36:0x00a1, B:41:0x00c3, B:14:0x0036, B:17:0x0042), top: B:50:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x006d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0082  */
    /* JADX WARN: Code duplicated, block: B:29:0x0083  */
    /* JADX WARN: Code duplicated, block: B:32:0x009a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x009b  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a1 A[Catch: all -> 0x001f, TryCatch #0 {all -> 0x001f, blocks: (B:7:0x001a, B:39:0x00b9, B:18:0x004e, B:20:0x0054, B:22:0x0065, B:26:0x006e, B:30:0x0084, B:34:0x009d, B:36:0x00a1, B:41:0x00c3, B:14:0x0036, B:17:0x0042), top: B:50:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00b8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x0065 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:? A[LOOP:0: B:18:0x004e->B:55:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x009f -> B:40:0x00c0). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00b6 -> B:39:0x00b9). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:53:0x0065
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.viewmodel.MediaBaseViewModel$loadLocalVideoCover$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
