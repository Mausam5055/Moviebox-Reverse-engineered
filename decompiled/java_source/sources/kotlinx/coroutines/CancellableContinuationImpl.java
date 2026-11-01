package kotlinx.coroutines;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.DispatchedContinuation;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Ø\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0011\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\u00060\u0004j\u0002`\u00052\u00020\u0006B\u001d\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001e\u0010\u0017\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0082\b¢\u0006\u0004\b\u0017\u0010\u0018J%\u0010\u001b\u001a\u00020\u00152\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u00192\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001d\u0010\u000fJ\u000f\u0010\u001e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001e\u0010\u000fJ\u0011\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J!\u0010'\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\"2\b\u0010&\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\tH\u0002¢\u0006\u0004\b*\u0010+J\u0088\u0001\u00107\u001a\u0004\u0018\u00010\"\"\u0004\b\u0001\u0010,2\u0006\u0010&\u001a\u00020-2\u0006\u0010.\u001a\u00028\u00012\u0006\u0010\n\u001a\u00020\t2M\u00105\u001aI\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(2\u0012\u0013\u0012\u001103¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u0015\u0018\u00010/2\b\u00106\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0004\b7\u00108Jx\u0010:\u001a\u0004\u0018\u000109\"\u0004\b\u0001\u0010,2\u0006\u0010.\u001a\u00028\u00012\b\u00106\u001a\u0004\u0018\u00010\"2M\u00105\u001aI\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(2\u0012\u0013\u0012\u001103¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u0015\u0018\u00010/H\u0002¢\u0006\u0004\b:\u0010;J\u0019\u0010=\u001a\u00020<2\b\u0010.\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0015H\u0002¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u0015H\u0016¢\u0006\u0004\bA\u0010@J\u000f\u0010B\u001a\u00020\rH\u0001¢\u0006\u0004\bB\u0010\u000fJ\u0017\u0010E\u001a\n\u0018\u00010Cj\u0004\u0018\u0001`DH\u0016¢\u0006\u0004\bE\u0010FJ\u0011\u0010I\u001a\u0004\u0018\u00010\"H\u0010¢\u0006\u0004\bG\u0010HJ!\u0010M\u001a\u00020\u00152\b\u0010J\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0011\u001a\u00020\u0010H\u0010¢\u0006\u0004\bK\u0010LJ\u0019\u0010N\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\bN\u0010\u0013J\u0017\u0010Q\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0004\bO\u0010PJ\u001f\u0010S\u001a\u00020\u00152\u0006\u0010#\u001a\u00020R2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\bS\u0010TJp\u0010U\u001a\u00020\u0015\"\u0004\b\u0001\u0010,2K\u00105\u001aG\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(2\u0012\u0013\u0012\u001103¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u00150/2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u00102\u001a\u00028\u0001¢\u0006\u0004\bU\u0010VJ\u0017\u0010Y\u001a\u00020\u00102\u0006\u0010X\u001a\u00020WH\u0016¢\u0006\u0004\bY\u0010ZJ\u0011\u0010[\u001a\u0004\u0018\u00010\"H\u0001¢\u0006\u0004\b[\u0010HJ\u000f\u0010]\u001a\u00020\u0015H\u0000¢\u0006\u0004\b\\\u0010@J\u001d\u0010`\u001a\u00020\u00152\f\u0010_\u001a\b\u0012\u0004\u0012\u00028\u00000^H\u0016¢\u0006\u0004\b`\u0010%J<\u0010b\u001a\u00020\u00152\u0006\u00102\u001a\u00028\u00002#\u00105\u001a\u001f\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u0015\u0018\u00010aH\u0016¢\u0006\u0004\bb\u0010cJp\u0010b\u001a\u00020\u0015\"\b\b\u0001\u0010,*\u00028\u00002\u0006\u00102\u001a\u00028\u00012M\u00105\u001aI\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(2\u0012\u0013\u0012\u001103¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u0015\u0018\u00010/H\u0016¢\u0006\u0004\bb\u0010dJ#\u0010f\u001a\u00020\u00152\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u00192\u0006\u0010e\u001a\u00020\tH\u0016¢\u0006\u0004\bf\u0010gJ8\u0010f\u001a\u00020\u00152'\u0010#\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0010¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00150aj\u0002`hH\u0016¢\u0006\u0004\bf\u0010iJ\u0017\u0010l\u001a\u00020\u00152\u0006\u0010#\u001a\u00020RH\u0000¢\u0006\u0004\bj\u0010kJv\u0010o\u001a\u00020\u0015\"\u0004\b\u0001\u0010,2\u0006\u0010.\u001a\u00028\u00012\u0006\u0010\n\u001a\u00020\t2O\b\u0002\u00105\u001aI\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(2\u0012\u0013\u0012\u001103¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u0015\u0018\u00010/H\u0000¢\u0006\u0004\bm\u0010nJ\u000f\u0010q\u001a\u00020\u0015H\u0000¢\u0006\u0004\bp\u0010@J#\u0010\u001e\u001a\u0004\u0018\u00010\"2\u0006\u00102\u001a\u00028\u00002\b\u00106\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b\u001e\u0010rJ|\u0010\u001e\u001a\u0004\u0018\u00010\"\"\b\b\u0001\u0010,*\u00028\u00002\u0006\u00102\u001a\u00028\u00012\b\u00106\u001a\u0004\u0018\u00010\"2M\u00105\u001aI\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(2\u0012\u0013\u0012\u001103¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u0015\u0018\u00010/H\u0016¢\u0006\u0004\b\u001e\u0010sJ\u0019\u0010u\u001a\u0004\u0018\u00010\"2\u0006\u0010t\u001a\u00020\u0010H\u0016¢\u0006\u0004\bu\u0010vJ\u0017\u0010x\u001a\u00020\u00152\u0006\u0010w\u001a\u00020\"H\u0016¢\u0006\u0004\bx\u0010%J\u001b\u0010z\u001a\u00020\u0015*\u00020y2\u0006\u00102\u001a\u00028\u0000H\u0016¢\u0006\u0004\bz\u0010{J\u001b\u0010|\u001a\u00020\u0015*\u00020y2\u0006\u0010t\u001a\u00020\u0010H\u0016¢\u0006\u0004\b|\u0010}J \u0010\u0080\u0001\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010&\u001a\u0004\u0018\u00010\"H\u0010¢\u0006\u0004\b~\u0010\u007fJ\u001e\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00102\b\u0010&\u001a\u0004\u0018\u00010\"H\u0010¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u0013\u0010\u0085\u0001\u001a\u00030\u0084\u0001H\u0016¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u0013\u0010\u0087\u0001\u001a\u00030\u0084\u0001H\u0014¢\u0006\u0006\b\u0087\u0001\u0010\u0086\u0001R#\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0000X\u0080\u0004¢\u0006\u000f\n\u0005\b\b\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001d\u00104\u001a\u0002038\u0016X\u0096\u0004¢\u0006\u000f\n\u0005\b4\u0010\u008b\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0018\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u008e\u0001\u0010!R\u0018\u0010\u0091\u0001\u001a\u00030\u0084\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0090\u0001\u0010\u0086\u0001R\u0017\u0010&\u001a\u0004\u0018\u00010\"8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0092\u0001\u0010HR\u0016\u0010\u0093\u0001\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0093\u0001\u0010\u000fR\u0016\u0010\u0094\u0001\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0094\u0001\u0010\u000fR\u0016\u0010\u0095\u0001\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0095\u0001\u0010\u000fR\u001f\u0010\u0098\u0001\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001R\r\u0010\u009a\u0001\u001a\u00030\u0099\u00018\u0002X\u0082\u0004R\u0015\u0010\u009c\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\"0\u009b\u00018\u0002X\u0082\u0004R\u0015\u0010\u009d\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u009b\u00018\u0002X\u0082\u0004¨\u0006\u009e\u0001"}, d2 = {"Lkotlinx/coroutines/CancellableContinuationImpl;", "T", "Lkotlinx/coroutines/DispatchedTask;", "Lkotlinx/coroutines/n;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/s2;", "Lkotlin/coroutines/Continuation;", "delegate", "", "resumeMode", "<init>", "(Lkotlin/coroutines/Continuation;I)V", "", "isReusable", "()Z", "", "cause", "cancelLater", "(Ljava/lang/Throwable;)Z", "Lkotlin/Function0;", "", "block", "callCancelHandlerSafely", "(Lkotlin/jvm/functions/Function0;)V", "Lkotlinx/coroutines/internal/w;", "segment", "callSegmentOnCancellation", "(Lkotlinx/coroutines/internal/w;Ljava/lang/Throwable;)V", "trySuspend", "tryResume", "Lkotlinx/coroutines/a1;", "installParentHandle", "()Lkotlinx/coroutines/a1;", "", "handler", "invokeOnCancellationImpl", "(Ljava/lang/Object;)V", "state", "multipleHandlersError", "(Ljava/lang/Object;Ljava/lang/Object;)V", "mode", "dispatchResume", "(I)V", "R", "Lkotlinx/coroutines/e2;", "proposedUpdate", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Lkotlin/coroutines/CoroutineContext;", "context", "onCancellation", "idempotent", "resumedState", "(Lkotlinx/coroutines/e2;Ljava/lang/Object;ILkotlin/jvm/functions/Function3;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/z;", "tryResumeImpl", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/internal/z;", "", "alreadyResumedError", "(Ljava/lang/Object;)Ljava/lang/Void;", "detachChildIfNonResuable", "()V", "initCancellability", "resetStateReusable", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "takenState", "cancelCompletedResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelCompletedResult", "cancel", "parentCancelled$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "parentCancelled", "Lkotlinx/coroutines/m;", "callCancelHandler", "(Lkotlinx/coroutines/m;Ljava/lang/Throwable;)V", "callOnCancellation", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Throwable;Ljava/lang/Object;)V", "Lkotlinx/coroutines/t1;", "parent", "getContinuationCancellationCause", "(Lkotlinx/coroutines/t1;)Ljava/lang/Throwable;", "getResult", "releaseClaimedReusableContinuation$kotlinx_coroutines_core", "releaseClaimedReusableContinuation", "Lkotlin/Result;", "result", "resumeWith", "Lkotlin/Function1;", CampaignEx.JSON_NATIVE_VIDEO_RESUME, "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "index", "invokeOnCancellation", "(Lkotlinx/coroutines/internal/w;I)V", "Lkotlinx/coroutines/CompletionHandler;", "(Lkotlin/jvm/functions/Function1;)V", "invokeOnCancellationInternal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/m;)V", "invokeOnCancellationInternal", "resumeImpl$kotlinx_coroutines_core", "(Ljava/lang/Object;ILkotlin/jvm/functions/Function3;)V", "resumeImpl", "detachChild$kotlinx_coroutines_core", "detachChild", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "exception", "tryResumeWithException", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "token", "completeResume", "Lkotlinx/coroutines/i0;", "resumeUndispatched", "(Lkotlinx/coroutines/i0;Ljava/lang/Object;)V", "resumeUndispatchedWithException", "(Lkotlinx/coroutines/i0;Ljava/lang/Throwable;)V", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getSuccessfulResult", "getExceptionalResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getExceptionalResult", "", "toString", "()Ljava/lang/String;", "nameString", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getParentHandle", "parentHandle", "getStateDebugRepresentation", "stateDebugRepresentation", "getState$kotlinx_coroutines_core", "isActive", "isCompleted", "isCancelled", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlinx/atomicfu/AtomicInt;", "_decisionAndIndex", "Lkotlinx/atomicfu/AtomicRef;", "_state", "_parentHandle", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@PublishedApi
@SourceDebugExtension
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements n, CoroutineStackFrame, s2 {
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;
    private final CoroutineContext context;
    private final Continuation<T> delegate;
    private static final /* synthetic */ AtomicIntegerFieldUpdater _decisionAndIndex$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decisionAndIndex$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _parentHandle$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_parentHandle$volatile");

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableContinuationImpl(Continuation<? super T> continuation, int i11) {
        super(i11);
        this.delegate = continuation;
        this.context = continuation.getF67028a();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = d.f67700a;
    }

    private final Void alreadyResumedError(Object proposedUpdate) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + proposedUpdate).toString());
    }

    private final void callCancelHandlerSafely(Function0<Unit> block) {
        try {
            block.invoke();
        } catch (Throwable th2) {
            k0.a(getF67028a(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    private final void callSegmentOnCancellation(kotlinx.coroutines.internal.w segment, Throwable cause) {
        int i11 = _decisionAndIndex$volatile$FU.get(this) & 536870911;
        if (i11 == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
        }
        try {
            segment.s(i11, cause, getF67028a());
        } catch (Throwable th2) {
            k0.a(getF67028a(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    private final boolean cancelLater(Throwable cause) {
        if (!isReusable()) {
            return false;
        }
        Continuation<T> continuation = this.delegate;
        Intrinsics.f(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((DispatchedContinuation) continuation).postponeCancellation$kotlinx_coroutines_core(cause);
    }

    private final void detachChildIfNonResuable() {
        if (isReusable()) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
    }

    private final void dispatchResume(int mode) {
        if (tryResume()) {
            return;
        }
        w0.a(this, mode);
    }

    private final a1 getParentHandle() {
        return (a1) _parentHandle$volatile$FU.get(this);
    }

    private final String getStateDebugRepresentation() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof e2) {
            return "Active";
        }
        return state$kotlinx_coroutines_core instanceof r ? "Cancelled" : "Completed";
    }

    private final /* synthetic */ int get_decisionAndIndex$volatile() {
        return this._decisionAndIndex$volatile;
    }

    private final /* synthetic */ Object get_parentHandle$volatile() {
        return this._parentHandle$volatile;
    }

    private final /* synthetic */ Object get_state$volatile() {
        return this._state$volatile;
    }

    private final a1 installParentHandle() {
        t1 t1Var = (t1) getF67028a().get(t1.f67996l1);
        if (t1Var == null) {
            return null;
        }
        a1 a1VarM = JobKt__JobKt.m(t1Var, false, new s(this), 1, null);
        androidx.concurrent.futures.a.a(_parentHandle$volatile$FU, this, null, a1VarM);
        return a1VarM;
    }

    private final void invokeOnCancellationImpl(Object handler) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof d) {
                if (androidx.concurrent.futures.a.a(_state$volatile$FU, this, obj, handler)) {
                    return;
                }
            } else if ((obj instanceof m) || (obj instanceof kotlinx.coroutines.internal.w)) {
                multipleHandlersError(handler, obj);
            } else {
                if (obj instanceof b0) {
                    b0 b0Var = (b0) obj;
                    if (!b0Var.c()) {
                        multipleHandlersError(handler, obj);
                    }
                    if (obj instanceof r) {
                        if (!(obj instanceof b0)) {
                            b0Var = null;
                        }
                        Throwable th2 = b0Var != null ? b0Var.f67641a : null;
                        if (handler instanceof m) {
                            callCancelHandler((m) handler, th2);
                            return;
                        } else {
                            Intrinsics.f(handler, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                            callSegmentOnCancellation((kotlinx.coroutines.internal.w) handler, th2);
                            return;
                        }
                    }
                    return;
                }
                if (obj instanceof a0) {
                    a0 a0Var = (a0) obj;
                    if (a0Var.f67626b != null) {
                        multipleHandlersError(handler, obj);
                    }
                    if (handler instanceof kotlinx.coroutines.internal.w) {
                        return;
                    }
                    Intrinsics.f(handler, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    m mVar = (m) handler;
                    if (a0Var.c()) {
                        callCancelHandler(mVar, a0Var.f67629e);
                        return;
                    } else {
                        if (androidx.concurrent.futures.a.a(_state$volatile$FU, this, obj, a0.b(a0Var, null, mVar, null, null, null, 29, null))) {
                            return;
                        }
                    }
                } else {
                    if (handler instanceof kotlinx.coroutines.internal.w) {
                        return;
                    }
                    Intrinsics.f(handler, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    if (androidx.concurrent.futures.a.a(_state$volatile$FU, this, obj, new a0(obj, (m) handler, null, null, null, 28, null))) {
                        return;
                    }
                }
            }
        }
    }

    private final boolean isReusable() {
        if (w0.c(this.resumeMode)) {
            Continuation<T> continuation = this.delegate;
            Intrinsics.f(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((DispatchedContinuation) continuation).isReusable$kotlinx_coroutines_core()) {
                return true;
            }
        }
        return false;
    }

    private final /* synthetic */ void loop$atomicfu(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Unit> function1) {
        while (true) {
            function1.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    private final /* synthetic */ void loop$atomicfu(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    private final void multipleHandlersError(Object handler, Object state) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + handler + ", already has " + state).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit resume$lambda$13$lambda$12(Function1 function1, Throwable th2, Object obj, CoroutineContext coroutineContext) {
        function1.invoke(th2);
        return Unit.f67061a;
    }

    public static /* synthetic */ void resumeImpl$kotlinx_coroutines_core$default(CancellableContinuationImpl cancellableContinuationImpl, Object obj, int i11, Function3 function3, int i12, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i12 & 4) != 0) {
            function3 = null;
        }
        cancellableContinuationImpl.resumeImpl$kotlinx_coroutines_core(obj, i11, function3);
    }

    private final <R> Object resumedState(e2 state, R proposedUpdate, int resumeMode, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation, Object idempotent) {
        if (proposedUpdate instanceof b0) {
            return proposedUpdate;
        }
        if (!w0.b(resumeMode) && idempotent == null) {
            return proposedUpdate;
        }
        if (onCancellation == null && !(state instanceof m) && idempotent == null) {
            return proposedUpdate;
        }
        return new a0(proposedUpdate, state instanceof m ? (m) state : null, onCancellation, idempotent, null, 16, null);
    }

    private final /* synthetic */ void set_decisionAndIndex$volatile(int i11) {
        this._decisionAndIndex$volatile = i11;
    }

    private final /* synthetic */ void set_parentHandle$volatile(Object obj) {
        this._parentHandle$volatile = obj;
    }

    private final /* synthetic */ void set_state$volatile(Object obj) {
        this._state$volatile = obj;
    }

    private final boolean tryResume() {
        int i11;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$volatile$FU;
        do {
            i11 = atomicIntegerFieldUpdater.get(this);
            int i12 = i11 >> 29;
            if (i12 != 0) {
                if (i12 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!_decisionAndIndex$volatile$FU.compareAndSet(this, i11, 1073741824 + (536870911 & i11)));
        return true;
    }

    private final <R> kotlinx.coroutines.internal.z tryResumeImpl(R proposedUpdate, Object idempotent, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof e2)) {
                if ((obj instanceof a0) && idempotent != null && ((a0) obj).f67628d == idempotent) {
                    return p.f67906a;
                }
                return null;
            }
        } while (!androidx.concurrent.futures.a.a(_state$volatile$FU, this, obj, resumedState((e2) obj, proposedUpdate, this.resumeMode, onCancellation, idempotent)));
        detachChildIfNonResuable();
        return p.f67906a;
    }

    private final boolean trySuspend() {
        int i11;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$volatile$FU;
        do {
            i11 = atomicIntegerFieldUpdater.get(this);
            int i12 = i11 >> 29;
            if (i12 != 0) {
                if (i12 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!_decisionAndIndex$volatile$FU.compareAndSet(this, i11, ASTNode.DISCARD + (536870911 & i11)));
        return true;
    }

    private final /* synthetic */ void update$atomicfu(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Integer> function1) {
        int i11;
        do {
            i11 = atomicIntegerFieldUpdater.get(obj);
        } while (!atomicIntegerFieldUpdater.compareAndSet(obj, i11, ((Number) function1.invoke(Integer.valueOf(i11))).intValue()));
    }

    public final void callCancelHandler(m handler, Throwable cause) {
        try {
            handler.a(cause);
        } catch (Throwable th2) {
            k0.a(getF67028a(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final <R> void callOnCancellation(Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation, Throwable cause, R value) {
        try {
            onCancellation.invoke(cause, value, getF67028a());
        } catch (Throwable th2) {
            k0.a(getF67028a(), new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    @Override // kotlinx.coroutines.n
    public boolean cancel(Throwable cause) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof e2)) {
                return false;
            }
        } while (!androidx.concurrent.futures.a.a(_state$volatile$FU, this, obj, new r(this, cause, (obj instanceof m) || (obj instanceof kotlinx.coroutines.internal.w))));
        e2 e2Var = (e2) obj;
        if (e2Var instanceof m) {
            callCancelHandler((m) obj, cause);
        } else if (e2Var instanceof kotlinx.coroutines.internal.w) {
            callSegmentOnCancellation((kotlinx.coroutines.internal.w) obj, cause);
        }
        detachChildIfNonResuable();
        dispatchResume(this.resumeMode);
        return true;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public void cancelCompletedResult$kotlinx_coroutines_core(Object takenState, Throwable cause) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof e2) {
                throw new IllegalStateException("Not completed");
            }
            if (obj instanceof b0) {
                return;
            }
            if (obj instanceof a0) {
                a0 a0Var = (a0) obj;
                if (a0Var.c()) {
                    throw new IllegalStateException("Must be called at most once");
                }
                if (androidx.concurrent.futures.a.a(_state$volatile$FU, this, obj, a0.b(a0Var, null, null, null, null, cause, 15, null))) {
                    a0Var.d(this, cause);
                    return;
                }
            } else if (androidx.concurrent.futures.a.a(_state$volatile$FU, this, obj, new a0(obj, null, null, null, cause, 14, null))) {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.n
    public void completeResume(Object token) {
        dispatchResume(this.resumeMode);
    }

    public final void detachChild$kotlinx_coroutines_core() {
        a1 parentHandle = getParentHandle();
        if (parentHandle == null) {
            return;
        }
        parentHandle.dispose();
        _parentHandle$volatile$FU.set(this, d2.f67702a);
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.delegate;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext, reason: from getter */
    public CoroutineContext getF67028a() {
        return this.context;
    }

    public Throwable getContinuationCancellationCause(t1 parent) {
        return parent.getCancellationException();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Continuation<T> getDelegate$kotlinx_coroutines_core() {
        return this.delegate;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Throwable getExceptionalResult$kotlinx_coroutines_core(Object state) {
        Throwable exceptionalResult$kotlinx_coroutines_core = super.getExceptionalResult$kotlinx_coroutines_core(state);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            return exceptionalResult$kotlinx_coroutines_core;
        }
        return null;
    }

    @PublishedApi
    public final Object getResult() {
        t1 t1Var;
        boolean zIsReusable = isReusable();
        if (trySuspend()) {
            if (getParentHandle() == null) {
                installParentHandle();
            }
            if (zIsReusable) {
                releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            }
            return IntrinsicsKt.f();
        }
        if (zIsReusable) {
            releaseClaimedReusableContinuation$kotlinx_coroutines_core();
        }
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof b0) {
            throw ((b0) state$kotlinx_coroutines_core).f67641a;
        }
        if (!w0.b(this.resumeMode) || (t1Var = (t1) getF67028a().get(t1.f67996l1)) == null || t1Var.isActive()) {
            return getSuccessfulResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
        }
        CancellationException cancellationException = t1Var.getCancellationException();
        cancelCompletedResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core, cancellationException);
        throw cancellationException;
    }

    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final Object getState$kotlinx_coroutines_core() {
        return _state$volatile$FU.get(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.DispatchedTask
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(Object state) {
        return state instanceof a0 ? (T) ((a0) state).f67625a : state;
    }

    public void initCancellability() {
        a1 a1VarInstallParentHandle = installParentHandle();
        if (a1VarInstallParentHandle != null && isCompleted()) {
            a1VarInstallParentHandle.dispose();
            _parentHandle$volatile$FU.set(this, d2.f67702a);
        }
    }

    @Override // kotlinx.coroutines.n
    public void invokeOnCancellation(Function1<? super Throwable, Unit> handler) {
        q.c(this, new m.a(handler));
    }

    @Override // kotlinx.coroutines.s2
    public void invokeOnCancellation(kotlinx.coroutines.internal.w segment, int index) {
        int i11;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$volatile$FU;
        do {
            i11 = atomicIntegerFieldUpdater.get(this);
            if ((i11 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i11, ((i11 >> 29) << 29) + index));
        invokeOnCancellationImpl(segment);
    }

    public final void invokeOnCancellationInternal$kotlinx_coroutines_core(m handler) {
        invokeOnCancellationImpl(handler);
    }

    @Override // kotlinx.coroutines.n
    public boolean isActive() {
        return getState$kotlinx_coroutines_core() instanceof e2;
    }

    public boolean isCancelled() {
        return getState$kotlinx_coroutines_core() instanceof r;
    }

    @Override // kotlinx.coroutines.n
    public boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof e2);
    }

    protected String nameString() {
        return "CancellableContinuation";
    }

    public final void parentCancelled$kotlinx_coroutines_core(Throwable cause) {
        if (cancelLater(cause)) {
            return;
        }
        cancel(cause);
        detachChildIfNonResuable();
    }

    public final void releaseClaimedReusableContinuation$kotlinx_coroutines_core() {
        Throwable thTryReleaseClaimedContinuation$kotlinx_coroutines_core;
        Continuation<T> continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        if (dispatchedContinuation == null || (thTryReleaseClaimedContinuation$kotlinx_coroutines_core = dispatchedContinuation.tryReleaseClaimedContinuation$kotlinx_coroutines_core(this)) == null) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
        cancel(thTryReleaseClaimedContinuation$kotlinx_coroutines_core);
    }

    @JvmName
    public final boolean resetStateReusable() {
        Object obj = _state$volatile$FU.get(this);
        if ((obj instanceof a0) && ((a0) obj).f67628d != null) {
            detachChild$kotlinx_coroutines_core();
            return false;
        }
        _decisionAndIndex$volatile$FU.set(this, 536870911);
        _state$volatile$FU.set(this, d.f67700a);
        return true;
    }

    @Override // kotlinx.coroutines.n
    public void resume(T value, final Function1<? super Throwable, Unit> onCancellation) {
        resumeImpl$kotlinx_coroutines_core(value, this.resumeMode, onCancellation != null ? new Function3() { // from class: kotlinx.coroutines.o
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return CancellableContinuationImpl.resume$lambda$13$lambda$12(onCancellation, (Throwable) obj, obj2, (CoroutineContext) obj3);
            }
        } : null);
    }

    @Override // kotlinx.coroutines.n
    public <R extends T> void resume(R value, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
        resumeImpl$kotlinx_coroutines_core(value, this.resumeMode, onCancellation);
    }

    public final <R> void resumeImpl$kotlinx_coroutines_core(R proposedUpdate, int resumeMode, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof e2)) {
                if (obj instanceof r) {
                    r rVar = (r) obj;
                    if (rVar.e()) {
                        if (onCancellation != null) {
                            callOnCancellation(onCancellation, rVar.f67641a, proposedUpdate);
                            return;
                        }
                        return;
                    }
                }
                alreadyResumedError(proposedUpdate);
                throw new KotlinNothingValueException();
            }
        } while (!androidx.concurrent.futures.a.a(_state$volatile$FU, this, obj, resumedState((e2) obj, proposedUpdate, resumeMode, onCancellation, null)));
        detachChildIfNonResuable();
        dispatchResume(resumeMode);
    }

    @Override // kotlinx.coroutines.n
    public void resumeUndispatched(i0 i0Var, T t11) {
        Continuation<T> continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        resumeImpl$kotlinx_coroutines_core$default(this, t11, (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == i0Var ? 4 : this.resumeMode, null, 4, null);
    }

    public void resumeUndispatchedWithException(i0 i0Var, Throwable th2) {
        Continuation<T> continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        resumeImpl$kotlinx_coroutines_core$default(this, new b0(th2, false, 2, null), (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == i0Var ? 4 : this.resumeMode, null, 4, null);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object result) {
        resumeImpl$kotlinx_coroutines_core$default(this, c0.c(result, this), this.resumeMode, null, 4, null);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Object takeState$kotlinx_coroutines_core() {
        return getState$kotlinx_coroutines_core();
    }

    public String toString() {
        return nameString() + '(' + p0.c(this.delegate) + "){" + getStateDebugRepresentation() + "}@" + p0.b(this);
    }

    public Object tryResume(T value, Object idempotent) {
        return tryResumeImpl(value, idempotent, null);
    }

    @Override // kotlinx.coroutines.n
    public <R extends T> Object tryResume(R value, Object idempotent, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
        return tryResumeImpl(value, idempotent, onCancellation);
    }

    @Override // kotlinx.coroutines.n
    public Object tryResumeWithException(Throwable exception) {
        return tryResumeImpl(new b0(exception, false, 2, null), null, null);
    }
}
