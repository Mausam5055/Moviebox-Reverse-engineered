package kotlin.io.path;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.nio.file.Path;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequenceScope;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Ljava/nio/file/Path;"}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "kotlin.io.path.PathTreeWalk$dfsIterator$1", f = "PathTreeWalk.kt", l = {191, 197, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class PathTreeWalk$dfsIterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    final /* synthetic */ PathTreeWalk this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PathTreeWalk$dfsIterator$1(PathTreeWalk pathTreeWalk, Continuation<? super PathTreeWalk$dfsIterator$1> continuation) {
        super(2, continuation);
        this.this$0 = pathTreeWalk;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PathTreeWalk$dfsIterator$1 pathTreeWalk$dfsIterator$1 = new PathTreeWalk$dfsIterator$1(this.this$0, continuation);
        pathTreeWalk$dfsIterator$1.L$0 = obj;
        return pathTreeWalk$dfsIterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
        return ((PathTreeWalk$dfsIterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0153  */
    /* JADX WARN: Code duplicated, block: B:45:0x0178  */
    /* JADX WARN: Code duplicated, block: B:50:0x0199  */
    /* JADX WARN: Code duplicated, block: B:52:0x019f  */
    /* JADX WARN: Code duplicated, block: B:54:0x01b3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:55:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:57:0x01cc A[PHI: r2 r6 r9 r10 r11 r12
  0x01cc: PHI (r2v11 kotlin.io.path.e) = (r2v9 kotlin.io.path.e), (r2v13 kotlin.io.path.e) binds: [B:51:0x019d, B:56:0x01c0] A[DONT_GENERATE, DONT_INLINE]
  0x01cc: PHI (r6v18 kotlin.collections.ArrayDeque) = (r6v16 kotlin.collections.ArrayDeque), (r6v20 kotlin.collections.ArrayDeque) binds: [B:51:0x019d, B:56:0x01c0] A[DONT_GENERATE, DONT_INLINE]
  0x01cc: PHI (r9v9 kotlin.sequences.SequenceScope) = (r9v7 kotlin.sequences.SequenceScope), (r9v11 kotlin.sequences.SequenceScope) binds: [B:51:0x019d, B:56:0x01c0] A[DONT_GENERATE, DONT_INLINE]
  0x01cc: PHI (r10v16 kotlin.io.path.h) = (r10v9 kotlin.io.path.h), (r10v18 kotlin.io.path.h) binds: [B:51:0x019d, B:56:0x01c0] A[DONT_GENERATE, DONT_INLINE]
  0x01cc: PHI (r11v15 kotlin.io.path.PathTreeWalk) = (r11v12 kotlin.io.path.PathTreeWalk), (r11v25 kotlin.io.path.PathTreeWalk) binds: [B:51:0x019d, B:56:0x01c0] A[DONT_GENERATE, DONT_INLINE]
  0x01cc: PHI (r12v12 java.nio.file.Path) = (r12v10 java.nio.file.Path), (r12v14 java.nio.file.Path) binds: [B:51:0x019d, B:56:0x01c0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:59:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:60:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:73:0x0193 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x0166 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x01e2 -> B:39:0x014d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x01e4 -> B:39:0x014d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 561
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.path.PathTreeWalk$dfsIterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
