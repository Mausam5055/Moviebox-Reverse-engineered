package com.transsion.shorttv_pugc.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv_pugc.ShorttvModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1", f = "ShortTvViewModel.kt", l = {172, 174}, m = "invokeSuspend")
final class ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1 extends SuspendLambda implements Function2<n0, Continuation<? super ShorttvModel.UGCVideo>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ String $subjectId;
    final /* synthetic */ Ref.ObjectRef<String> $ugcVideoIdMutable;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1(Ref.ObjectRef<String> objectRef, ShortTvViewModel shortTvViewModel, String str, String str2, Continuation<? super ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1> continuation) {
        super(2, continuation);
        this.$ugcVideoIdMutable = objectRef;
        this.this$0 = shortTvViewModel;
        this.$collectionId = str;
        this.$subjectId = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1 shortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1 = new ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1(this.$ugcVideoIdMutable, this.this$0, this.$collectionId, this.$subjectId, continuation);
        shortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1.L$0 = obj;
        return shortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super ShorttvModel.UGCVideo> continuation) {
        return ((ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x006a A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return (ShorttvModel.UGCVideo) ((BaseDto) obj).getData();
        }
        ResultKt.b(obj);
        n0 n0Var = (n0) this.L$0;
        String str = this.$ugcVideoIdMutable.element;
        if (str != null) {
            ShortTvViewModel shortTvViewModel = this.this$0;
            String str2 = this.$collectionId;
            rt.a aVar = shortTvViewModel.f54466a;
            this.L$0 = n0Var;
            this.label = 1;
            obj = rt.a.C0909a.b(aVar, str, str2, null, this, 4, null);
            if (obj == objF) {
                return objF;
            }
        }
        ShortTvViewModel shortTvViewModel2 = this.this$0;
        String str3 = this.$subjectId;
        rt.a aVar2 = shortTvViewModel2.f54466a;
        this.L$0 = null;
        this.label = 2;
        obj = rt.a.C0909a.c(aVar2, str3, null, this, 2, null);
        if (obj == objF) {
            return objF;
        }
        return (ShorttvModel.UGCVideo) ((BaseDto) obj).getData();
        ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) ((BaseDto) obj).getData();
        if (uGCVideo != null) {
            return uGCVideo;
        }
        ShortTvViewModel shortTvViewModel3 = this.this$0;
        String str4 = this.$subjectId;
        rt.a aVar3 = shortTvViewModel3.f54466a;
        this.L$0 = null;
        this.label = 2;
        obj = rt.a.C0909a.c(aVar3, str4, null, this, 2, null);
        if (obj == objF) {
            return objF;
        }
        return (ShorttvModel.UGCVideo) ((BaseDto) obj).getData();
    }
}
