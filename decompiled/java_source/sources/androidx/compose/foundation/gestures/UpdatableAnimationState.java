package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.v0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public final class UpdatableAnimationState {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final a f2707f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f2708g = 8;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final androidx.compose.animation.core.k f2709h = new androidx.compose.animation.core.k(0.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v0 f2710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2711b = Long.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.compose.animation.core.k f2712c = f2709h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f2714e;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final androidx.compose.animation.core.k a() {
            return UpdatableAnimationState.f2709h;
        }

        public final boolean b(float f11) {
            return Math.abs(f11) < 0.01f;
        }
    }

    public UpdatableAnimationState(androidx.compose.animation.core.g gVar) {
        this.f2710a = gVar.a(VectorConvertersKt.b(FloatCompanionObject.f67281a));
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0082 A[Catch: all -> 0x00ae, PHI: r0 r2 r13 r14 r15
  0x0082: PHI (r0v9 ??) = (r0v3 ??), (r0v15 ??) binds: [B:30:0x007b, B:38:0x00a7] A[DONT_GENERATE, DONT_INLINE]
  0x0082: PHI (r2v4 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1) = 
  (r2v2 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1)
  (r2v5 androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1)
 binds: [B:30:0x007b, B:38:0x00a7] A[DONT_GENERATE, DONT_INLINE]
  0x0082: PHI (r13v6 float) = (r13v4 float), (r13v7 float) binds: [B:30:0x007b, B:38:0x00a7] A[DONT_GENERATE, DONT_INLINE]
  0x0082: PHI (r14v7 kotlin.jvm.functions.Function1) = (r14v4 kotlin.jvm.functions.Function1), (r14v8 kotlin.jvm.functions.Function1) binds: [B:30:0x007b, B:38:0x00a7] A[DONT_GENERATE, DONT_INLINE]
  0x0082: PHI (r15v15 androidx.compose.foundation.gestures.UpdatableAnimationState) = 
  (r15v9 androidx.compose.foundation.gestures.UpdatableAnimationState)
  (r15v16 androidx.compose.foundation.gestures.UpdatableAnimationState)
 binds: [B:30:0x007b, B:38:0x00a7] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #2 {all -> 0x00ae, blocks: (B:36:0x00a2, B:31:0x0082, B:33:0x008c), top: B:59:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x008c A[Catch: all -> 0x00ae, TryCatch #2 {all -> 0x00ae, blocks: (B:36:0x00a2, B:31:0x0082, B:33:0x008c), top: B:59:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00a1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v11, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v0, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [androidx.compose.foundation.gestures.UpdatableAnimationState] */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v19 */
    /* JADX WARN: Type inference failed for: r14v2, types: [androidx.compose.foundation.gestures.UpdatableAnimationState] */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x009f -> B:59:0x00a2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(kotlin.jvm.functions.Function1 r13, kotlin.jvm.functions.Function0 r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.UpdatableAnimationState.h(kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final float i() {
        return this.f2714e;
    }

    public final void j(float f11) {
        this.f2714e = f11;
    }
}
