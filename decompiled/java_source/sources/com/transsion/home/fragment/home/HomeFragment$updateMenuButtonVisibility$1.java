package com.transsion.home.fragment.home;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.fragment.home.HomeFragment$updateMenuButtonVisibility$1", f = "HomeFragment.kt", l = {419}, m = "invokeSuspend")
final class HomeFragment$updateMenuButtonVisibility$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int I$0;
    int I$1;
    int label;
    final /* synthetic */ HomeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HomeFragment$updateMenuButtonVisibility$1(HomeFragment homeFragment, Continuation<? super HomeFragment$updateMenuButtonVisibility$1> continuation) {
        super(2, continuation);
        this.this$0 = homeFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HomeFragment$updateMenuButtonVisibility$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HomeFragment$updateMenuButtonVisibility$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0029  */
    /* JADX WARN: Code duplicated, block: B:12:0x0037 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x0046  */
    /* JADX WARN: Code duplicated, block: B:16:0x004b  */
    /* JADX WARN: Code duplicated, block: B:18:0x004e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0035 -> B:13:0x0038). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:16:0x004b
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            r18 = this;
            r0 = r18
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L1d
            if (r2 != r3) goto L15
            int r2 = r0.I$1
            int r4 = r0.I$0
            kotlin.ResultKt.b(r19)
            goto L38
        L15:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L1d:
            kotlin.ResultKt.b(r19)
            r2 = 0
            r4 = 3
            r17 = r4
            r4 = r2
            r2 = r17
        L27:
            if (r4 >= r2) goto L7f
            r0.I$0 = r4
            r0.I$1 = r2
            r0.label = r3
            r5 = 3500(0xdac, double:1.729E-320)
            java.lang.Object r5 = kotlinx.coroutines.u0.a(r5, r0)
            if (r5 != r1) goto L38
            return r1
        L38:
            sm.f$a r5 = sm.f.f75407c
            sm.f r5 = r5.a()
            java.lang.String r6 = "home_tab_menu_show"
            com.transsion.mb.config.manager.ConfigBean r5 = r5.c(r6, r3)
            if (r5 == 0) goto L4b
            java.lang.String r5 = r5.getValue()
            goto L4c
        L4b:
            r5 = 0
        L4c:
            if (r5 == 0) goto L5d
            int r6 = r5.length()
            if (r6 != 0) goto L55
            goto L5d
        L55:
            com.transsion.home.fragment.home.HomeFragment r1 = r0.this$0
            com.transsion.home.fragment.home.HomeFragment.A0(r1, r5)
            kotlin.Unit r1 = kotlin.Unit.f67061a
            return r1
        L5d:
            int r4 = r4 + r3
            lg.a$a r5 = lg.a.f68839a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Cloud config retry #"
            r6.append(r7)
            r6.append(r4)
            java.lang.String r7 = ", value still null"
            r6.append(r7)
            java.lang.String r7 = r6.toString()
            r9 = 4
            r10 = 0
            java.lang.String r6 = "HomeFragment"
            r8 = 0
            lg.a.C0828a.f(r5, r6, r7, r8, r9, r10)
            goto L27
        L7f:
            lg.a$a r11 = lg.a.f68839a
            r15 = 4
            r16 = 0
            java.lang.String r12 = "HomeFragment"
            java.lang.String r13 = "Cloud config max retries reached, using default (hidden)"
            r14 = 0
            lg.a.C0828a.f(r11, r12, r13, r14, r15, r16)
            kotlin.Unit r1 = kotlin.Unit.f67061a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.home.fragment.home.HomeFragment$updateMenuButtonVisibility$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
