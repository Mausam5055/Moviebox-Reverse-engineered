package com.transsion.postdetail.ui.fragment;

import android.media.MediaMetadataRetriever;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$localVideoPrepare$1", f = "LocalVideoDetailFragment.kt", l = {954}, m = "invokeSuspend")
final class LocalVideoDetailFragment$localVideoPrepare$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $path;
    int label;
    final /* synthetic */ LocalVideoDetailFragment this$0;

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$localVideoPrepare$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00010\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lkotlin/Triple;", "", "", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$localVideoPrepare$1$1", f = "LocalVideoDetailFragment.kt", l = {951}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $path;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ LocalVideoDetailFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, LocalVideoDetailFragment localVideoDetailFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$path = str;
            this.this$0 = localVideoDetailFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$path, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Long lX;
            Integer numV;
            Integer numV2;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                Ref.IntRef intRef = new Ref.IntRef();
                Ref.IntRef intRef2 = new Ref.IntRef();
                Ref.LongRef longRef = new Ref.LongRef();
                try {
                    try {
                        String str = this.$path;
                        LocalVideoDetailFragment localVideoDetailFragment = this.this$0;
                        mediaMetadataRetriever.setDataSource(str);
                        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                        intRef.element = (strExtractMetadata == null || (numV2 = StringsKt.v(strExtractMetadata)) == null) ? 0 : numV2.intValue();
                        String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                        intRef2.element = (strExtractMetadata2 == null || (numV = StringsKt.v(strExtractMetadata2)) == null) ? 0 : numV.intValue();
                        String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(9);
                        longRef.element = (strExtractMetadata3 == null || (lX = StringsKt.x(strExtractMetadata3)) == null) ? 0L : lX.longValue();
                        lg.a.C0828a c0828a = lg.a.f68839a;
                        lg.a.C0828a.f(c0828a, localVideoDetailFragment.TAG, "play width:" + intRef.element + ",height:" + intRef2.element, false, 4, null);
                        lg.a.C0828a.f(c0828a, localVideoDetailFragment.TAG, "play duration:" + longRef.element, false, 4, null);
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        intRef.element = 0;
                        intRef2.element = 0;
                        longRef.element = 0L;
                    }
                    mediaMetadataRetriever.release();
                    Triple triple = new Triple(Boxing.d(intRef.element), Boxing.d(intRef2.element), Boxing.e(longRef.element));
                    this.label = 1;
                    if (cVar.emit(triple, this) == objF) {
                        return objF;
                    }
                } catch (Throwable th2) {
                    mediaMetadataRetriever.release();
                    throw th2;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$localVideoPrepare$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u0006*\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00010\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lkotlin/Triple;", "", "", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$localVideoPrepare$1$2", f = "LocalVideoDetailFragment.kt", l = {953}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = cVar;
            return anonymousClass2.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
                Triple triple = new Triple(Boxing.d(0), Boxing.d(0), Boxing.e(0L));
                this.label = 1;
                if (cVar.emit(triple, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    static final class a implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LocalVideoDetailFragment f49536a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f49537b;

        a(LocalVideoDetailFragment localVideoDetailFragment, String str) {
            this.f49536a = localVideoDetailFragment;
            this.f49537b = str;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(Triple triple, Continuation continuation) {
            lg.a.C0828a.v(lg.a.f68839a, this.f49536a.TAG, "Prepare success width = " + triple.getFirst() + "， height = " + triple.getSecond() + " ,duration = " + triple.getThird() + ",completed = " + this.f49536a.completed, false, 4, null);
            this.f49536a.duration = ((Number) triple.getThird()).longValue();
            this.f49536a.videoWidth = ((Number) triple.getFirst()).intValue();
            this.f49536a.videoHeight = ((Number) triple.getSecond()).intValue();
            this.f49536a.f3(((Number) triple.getFirst()).intValue(), ((Number) triple.getSecond()).intValue(), this.f49537b);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalVideoDetailFragment$localVideoPrepare$1(String str, LocalVideoDetailFragment localVideoDetailFragment, Continuation<? super LocalVideoDetailFragment$localVideoPrepare$1> continuation) {
        super(2, continuation);
        this.$path = str;
        this.this$0 = localVideoDetailFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalVideoDetailFragment$localVideoPrepare$1(this.$path, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalVideoDetailFragment$localVideoPrepare$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.$path, this.this$0, null)), kotlinx.coroutines.y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.this$0, this.$path);
            this.label = 1;
            if (bVarF.a(aVar, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
