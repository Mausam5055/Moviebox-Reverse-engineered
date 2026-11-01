package kotlin.io.path;

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
@DebugMetadata(c = "kotlin.io.path.PathTreeWalk$bfsIterator$1", f = "PathTreeWalk.kt", l = {191, 197}, m = "invokeSuspend")
@SourceDebugExtension
final class PathTreeWalk$bfsIterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    final /* synthetic */ PathTreeWalk this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PathTreeWalk$bfsIterator$1(PathTreeWalk pathTreeWalk, Continuation<? super PathTreeWalk$bfsIterator$1> continuation) {
        super(2, continuation);
        this.this$0 = pathTreeWalk;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PathTreeWalk$bfsIterator$1 pathTreeWalk$bfsIterator$1 = new PathTreeWalk$bfsIterator$1(this.this$0, continuation);
        pathTreeWalk$bfsIterator$1.L$0 = obj;
        return pathTreeWalk$bfsIterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
        return ((PathTreeWalk$bfsIterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0085  */
    /* JADX WARN: Code duplicated, block: B:15:0x0097  */
    /* JADX WARN: Code duplicated, block: B:20:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:22:0x00be  */
    /* JADX WARN: Code duplicated, block: B:24:0x00d2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:27:0x00e1 A[PHI: r1 r5 r6 r7 r8 r13
  0x00e1: PHI (r1v3 kotlin.io.path.e) = (r1v5 kotlin.io.path.e), (r1v6 kotlin.io.path.e) binds: [B:26:0x00da, B:21:0x00bc] A[DONT_GENERATE, DONT_INLINE]
  0x00e1: PHI (r5v2 kotlin.collections.ArrayDeque) = (r5v4 kotlin.collections.ArrayDeque), (r5v5 kotlin.collections.ArrayDeque) binds: [B:26:0x00da, B:21:0x00bc] A[DONT_GENERATE, DONT_INLINE]
  0x00e1: PHI (r6v4 kotlin.sequences.SequenceScope) = (r6v6 kotlin.sequences.SequenceScope), (r6v7 kotlin.sequences.SequenceScope) binds: [B:26:0x00da, B:21:0x00bc] A[DONT_GENERATE, DONT_INLINE]
  0x00e1: PHI (r7v2 kotlin.io.path.PathTreeWalk) = (r7v10 kotlin.io.path.PathTreeWalk), (r7v11 kotlin.io.path.PathTreeWalk) binds: [B:26:0x00da, B:21:0x00bc] A[DONT_GENERATE, DONT_INLINE]
  0x00e1: PHI (r8v3 java.nio.file.Path) = (r8v5 java.nio.file.Path), (r8v6 java.nio.file.Path) binds: [B:26:0x00da, B:21:0x00bc] A[DONT_GENERATE, DONT_INLINE]
  0x00e1: PHI (r13v3 kotlin.io.path.h) = (r13v6 kotlin.io.path.h), (r13v10 kotlin.io.path.h) binds: [B:26:0x00da, B:21:0x00bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:30:0x0104  */
    /* JADX WARN: Code duplicated, block: B:32:0x0110  */
    /* JADX WARN: Code duplicated, block: B:39:0x0125 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x0139 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x007f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x007f A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00f7 -> B:11:0x007f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00f9 -> B:11:0x007f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:32:0x0110
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.path.PathTreeWalk$bfsIterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
