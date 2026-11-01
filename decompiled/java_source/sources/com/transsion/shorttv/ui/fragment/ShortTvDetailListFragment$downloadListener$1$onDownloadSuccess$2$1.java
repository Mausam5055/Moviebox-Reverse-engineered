package com.transsion.shorttv.ui.fragment;

import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.Video;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1", f = "ShortTvDetailListFragment.kt", l = {1134}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ js.e $it;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ ShortTvDetailListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1(js.e eVar, ShortTvDetailListFragment shortTvDetailListFragment, Continuation<? super ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1> continuation) {
        super(2, continuation);
        this.$it = eVar;
        this.this$0 = shortTvDetailListFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1(this.$it, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Media video;
        Video video2;
        String url;
        ShortTvDetailListFragment shortTvDetailListFragment;
        js.e eVar;
        String str;
        lo.f fVar;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ShortTVItem shortTVItemD = this.$it.d();
            if (shortTVItemD != null && (video = shortTVItemD.getVideo()) != null && (video2 = video.getVideo()) != null && (url = video2.getUrl()) != null) {
                ShortTvDetailListFragment shortTvDetailListFragment2 = this.this$0;
                js.e eVar2 = this.$it;
                qs.d dVarS0 = shortTvDetailListFragment2.K0().s0();
                if (dVarS0 != null) {
                    String strE = eVar2.e();
                    int iC = eVar2.c();
                    this.L$0 = shortTvDetailListFragment2;
                    this.L$1 = eVar2;
                    this.L$2 = url;
                    this.label = 1;
                    Object objA = dVarS0.a(strE, iC, url, this);
                    if (objA == objF) {
                        return objF;
                    }
                    shortTvDetailListFragment = shortTvDetailListFragment2;
                    eVar = eVar2;
                    str = url;
                    obj = objA;
                }
            }
            return Unit.f67061a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        String str2 = (String) this.L$2;
        eVar = (js.e) this.L$1;
        ShortTvDetailListFragment shortTvDetailListFragment3 = (ShortTvDetailListFragment) this.L$0;
        ResultKt.b(obj);
        str = str2;
        shortTvDetailListFragment = shortTvDetailListFragment3;
        String str3 = (String) obj;
        if (str3 != null && (fVar = shortTvDetailListFragment.mOrPlayer) != null) {
            ShortTVItem shortTVItemD2 = eVar.d();
            ao.e eVar3 = new ao.e(shortTVItemD2 != null ? shortTVItemD2.getId() : null, str, eVar.c(), null, null, 24, null);
            eVar3.t(str3);
            Boxing.a(fVar.b(eVar3));
        }
        return Unit.f67061a;
    }
}
