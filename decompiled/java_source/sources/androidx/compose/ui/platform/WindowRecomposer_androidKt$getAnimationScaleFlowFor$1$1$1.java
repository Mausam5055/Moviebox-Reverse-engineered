package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1", f = "WindowRecomposer.android.kt", l = {Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE}, m = "invokeSuspend")
final class WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
    final /* synthetic */ Uri $animationScaleUri;
    final /* synthetic */ Context $applicationContext;
    final /* synthetic */ kotlinx.coroutines.channels.d $channel;
    final /* synthetic */ WindowRecomposer_androidKt.b $contentObserver;
    final /* synthetic */ ContentResolver $resolver;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(ContentResolver contentResolver, Uri uri, WindowRecomposer_androidKt.b bVar, kotlinx.coroutines.channels.d dVar, Context context, Continuation<? super WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1> continuation) {
        super(2, continuation);
        this.$resolver = contentResolver;
        this.$animationScaleUri = uri;
        this.$contentObserver = bVar;
        this.$channel = dVar;
        this.$applicationContext = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(this.$resolver, this.$animationScaleUri, this.$contentObserver, this.$channel, this.$applicationContext, continuation);
        windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.L$0 = obj;
        return windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
        return ((WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0054 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    /* JADX WARN: Code duplicated, block: B:24:0x0060 A[Catch: all -> 0x001b, TRY_LEAVE, TryCatch #0 {all -> 0x001b, blocks: (B:7:0x0016, B:18:0x0048, B:22:0x0058, B:24:0x0060, B:14:0x002d, B:17:0x0042), top: B:31:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x0082  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007f -> B:8:0x0019). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
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
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L31
            if (r1 == r3) goto L25
            if (r1 != r2) goto L1d
            java.lang.Object r1 = r8.L$1
            kotlinx.coroutines.channels.f r1 = (kotlinx.coroutines.channels.f) r1
            java.lang.Object r4 = r8.L$0
            kotlinx.coroutines.flow.c r4 = (kotlinx.coroutines.flow.c) r4
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L1b
        L19:
            r9 = r4
            goto L48
        L1b:
            r9 = move-exception
            goto L8c
        L1d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L25:
            java.lang.Object r1 = r8.L$1
            kotlinx.coroutines.channels.f r1 = (kotlinx.coroutines.channels.f) r1
            java.lang.Object r4 = r8.L$0
            kotlinx.coroutines.flow.c r4 = (kotlinx.coroutines.flow.c) r4
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L1b
            goto L58
        L31:
            kotlin.ResultKt.b(r9)
            java.lang.Object r9 = r8.L$0
            kotlinx.coroutines.flow.c r9 = (kotlinx.coroutines.flow.c) r9
            android.content.ContentResolver r1 = r8.$resolver
            android.net.Uri r4 = r8.$animationScaleUri
            r5 = 0
            androidx.compose.ui.platform.WindowRecomposer_androidKt$b r6 = r8.$contentObserver
            r1.registerContentObserver(r4, r5, r6)
            kotlinx.coroutines.channels.d r1 = r8.$channel     // Catch: java.lang.Throwable -> L1b
            kotlinx.coroutines.channels.f r1 = r1.iterator()     // Catch: java.lang.Throwable -> L1b
        L48:
            r8.L$0 = r9     // Catch: java.lang.Throwable -> L1b
            r8.L$1 = r1     // Catch: java.lang.Throwable -> L1b
            r8.label = r3     // Catch: java.lang.Throwable -> L1b
            java.lang.Object r4 = r1.a(r8)     // Catch: java.lang.Throwable -> L1b
            if (r4 != r0) goto L55
            return r0
        L55:
            r7 = r4
            r4 = r9
            r9 = r7
        L58:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L1b
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L1b
            if (r9 == 0) goto L82
            r1.next()     // Catch: java.lang.Throwable -> L1b
            android.content.Context r9 = r8.$applicationContext     // Catch: java.lang.Throwable -> L1b
            android.content.ContentResolver r9 = r9.getContentResolver()     // Catch: java.lang.Throwable -> L1b
            java.lang.String r5 = "animator_duration_scale"
            r6 = 1065353216(0x3f800000, float:1.0)
            float r9 = android.provider.Settings.Global.getFloat(r9, r5, r6)     // Catch: java.lang.Throwable -> L1b
            java.lang.Float r9 = kotlin.coroutines.jvm.internal.Boxing.c(r9)     // Catch: java.lang.Throwable -> L1b
            r8.L$0 = r4     // Catch: java.lang.Throwable -> L1b
            r8.L$1 = r1     // Catch: java.lang.Throwable -> L1b
            r8.label = r2     // Catch: java.lang.Throwable -> L1b
            java.lang.Object r9 = r4.emit(r9, r8)     // Catch: java.lang.Throwable -> L1b
            if (r9 != r0) goto L19
            return r0
        L82:
            android.content.ContentResolver r9 = r8.$resolver
            androidx.compose.ui.platform.WindowRecomposer_androidKt$b r0 = r8.$contentObserver
            r9.unregisterContentObserver(r0)
            kotlin.Unit r9 = kotlin.Unit.f67061a
            return r9
        L8c:
            android.content.ContentResolver r0 = r8.$resolver
            androidx.compose.ui.platform.WindowRecomposer_androidKt$b r1 = r8.$contentObserver
            r0.unregisterContentObserver(r1)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
