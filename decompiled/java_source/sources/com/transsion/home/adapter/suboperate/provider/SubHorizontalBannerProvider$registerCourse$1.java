package com.transsion.home.adapter.suboperate.provider;

import com.transsion.edcation.CourseManager;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.x0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider$registerCourse$1", f = "SubHorizontalBannerProvider.kt", l = {129}, m = "invokeSuspend")
final class SubHorizontalBannerProvider$registerCourse$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ SubHorizontalBannerProvider this$0;

    /* JADX INFO: renamed from: com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider$registerCourse$1$1, reason: invalid class name */
    static final class AnonymousClass1 implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SubHorizontalBannerProvider f44537a;

        AnonymousClass1(SubHorizontalBannerProvider subHorizontalBannerProvider) {
            this.f44537a = subHorizontalBannerProvider;
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0069  */
        /* JADX WARN: Code duplicated, block: B:25:0x0071  */
        /* JADX WARN: Code duplicated, block: B:28:0x007d  */
        /* JADX WARN: Code duplicated, block: B:29:0x0082  */
        /* JADX WARN: Code duplicated, block: B:33:0x008b  */
        /* JADX WARN: Code duplicated, block: B:36:0x00af A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:37:0x00b0 A[EDGE_INSN: B:37:0x00b0->B:38:0x00b3 BREAK  A[LOOP:0: B:21:0x0063->B:39:0x00b7]] */
        /* JADX WARN: Code duplicated, block: B:39:0x00b7 A[LOOP:0: B:21:0x0063->B:39:0x00b7, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:43:0x0089 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00b0 -> B:38:0x00b3). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:36:0x00af
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final java.lang.Object emit(com.transsion.edcation.bean.CourseBean r11, kotlin.coroutines.Continuation r12) {
            /*
                r10 = this;
                boolean r0 = r12 instanceof com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider$registerCourse$1$1$emit$1
                if (r0 == 0) goto L13
                r0 = r12
                com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider$registerCourse$1$1$emit$1 r0 = (com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider$registerCourse$1$1$emit$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider$registerCourse$1$1$emit$1 r0 = new com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider$registerCourse$1$1$emit$1
                r0.<init>(r10, r12)
            L18:
                java.lang.Object r12 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L40
                if (r2 != r3) goto L38
                int r11 = r0.I$0
                java.lang.Object r2 = r0.L$2
                java.util.Iterator r2 = (java.util.Iterator) r2
                java.lang.Object r4 = r0.L$1
                com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider r4 = (com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider) r4
                java.lang.Object r5 = r0.L$0
                com.transsion.edcation.bean.CourseBean r5 = (com.transsion.edcation.bean.CourseBean) r5
                kotlin.ResultKt.b(r12)
                goto Lb3
            L38:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r12)
                throw r11
            L40:
                kotlin.ResultKt.b(r12)
                com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider r12 = r10.f44537a
                com.transsion.home.bean.OperateItem r12 = com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider.D(r12)
                if (r12 == 0) goto Lb9
                com.transsion.home.bean.BannerBean r12 = r12.getBanner()
                if (r12 == 0) goto Lb9
                java.util.List r12 = r12.getBanners()
                if (r12 == 0) goto Lb9
                java.lang.Iterable r12 = (java.lang.Iterable) r12
                com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider r2 = r10.f44537a
                java.util.Iterator r12 = r12.iterator()
                r4 = 0
                r9 = r2
                r2 = r12
                r12 = r9
            L63:
                boolean r5 = r2.hasNext()
                if (r5 == 0) goto Lb9
                java.lang.Object r5 = r2.next()
                int r6 = r4 + 1
                if (r4 >= 0) goto L74
                kotlin.collections.CollectionsKt.u()
            L74:
                com.transsion.home.bean.BannerData r5 = (com.transsion.home.bean.BannerData) r5
                java.lang.String r4 = r11.getSubjectId()
                r7 = 0
                if (r5 == 0) goto L82
                java.lang.String r8 = r5.getSubjectId()
                goto L83
            L82:
                r8 = r7
            L83:
                boolean r4 = kotlin.jvm.internal.Intrinsics.c(r4, r8)
                if (r4 == 0) goto Lb7
                if (r5 == 0) goto L96
                int r4 = r11.getSeenStatus()
                java.lang.Integer r4 = kotlin.coroutines.jvm.internal.Boxing.d(r4)
                r5.setSeenStatus(r4)
            L96:
                kotlinx.coroutines.a2 r4 = kotlinx.coroutines.y0.c()
                com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider$registerCourse$1$1$1$1 r5 = new com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider$registerCourse$1$1$1$1
                r5.<init>(r12, r7)
                r0.L$0 = r11
                r0.L$1 = r12
                r0.L$2 = r2
                r0.I$0 = r6
                r0.label = r3
                java.lang.Object r4 = kotlinx.coroutines.i.g(r4, r5, r0)
                if (r4 != r1) goto Lb0
                return r1
            Lb0:
                r5 = r11
                r4 = r12
                r11 = r6
            Lb3:
                r12 = r4
                r4 = r11
                r11 = r5
                goto L63
            Lb7:
                r4 = r6
                goto L63
            Lb9:
                kotlin.Unit r11 = kotlin.Unit.f67061a
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider$registerCourse$1.AnonymousClass1.emit(com.transsion.edcation.bean.CourseBean, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubHorizontalBannerProvider$registerCourse$1(SubHorizontalBannerProvider subHorizontalBannerProvider, Continuation<? super SubHorizontalBannerProvider$registerCourse$1> continuation) {
        super(2, continuation);
        this.this$0 = subHorizontalBannerProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubHorizontalBannerProvider$registerCourse$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubHorizontalBannerProvider$registerCourse$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            x0 x0VarK = CourseManager.f44085a.k();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0);
            this.label = 1;
            if (x0VarK.a(anonymousClass1, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        throw new KotlinNothingValueException();
    }
}
