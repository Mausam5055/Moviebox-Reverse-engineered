package com.transsion.shorttv.ad.playeroverlayad;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1", f = "ShortTvPlayerOverlayAdManager.kt", l = {97}, m = "invokeSuspend")
final class ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1(Continuation<? super ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1 shortTvPlayerOverlayAdManager$startAutoDestroyTimer$1 = new ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1(continuation);
        shortTvPlayerOverlayAdManager$startAutoDestroyTimer$1.L$0 = obj;
        return shortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0029  */
    /* JADX WARN: Code duplicated, block: B:13:0x0035 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0033 -> B:14:0x0036). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L1b
            if (r1 != r2) goto L13
            java.lang.Object r1 = r5.L$0
            kotlinx.coroutines.n0 r1 = (kotlinx.coroutines.n0) r1
            kotlin.ResultKt.b(r6)
            goto L36
        L13:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1b:
            kotlin.ResultKt.b(r6)
            java.lang.Object r6 = r5.L$0
            kotlinx.coroutines.n0 r6 = (kotlinx.coroutines.n0) r6
            r1 = r6
        L23:
            boolean r6 = kotlinx.coroutines.o0.g(r1)
            if (r6 == 0) goto L3c
            r5.L$0 = r1
            r5.label = r2
            r3 = 5000(0x1388, double:2.4703E-320)
            java.lang.Object r6 = kotlinx.coroutines.u0.a(r3, r5)
            if (r6 != r0) goto L36
            return r0
        L36:
            com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdManager r6 = com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdManager.f52716a
            com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdManager.a(r6)
            goto L23
        L3c:
            kotlin.Unit r6 = kotlin.Unit.f67061a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
