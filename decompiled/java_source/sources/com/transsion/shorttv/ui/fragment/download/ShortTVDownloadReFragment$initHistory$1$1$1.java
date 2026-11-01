package com.transsion.shorttv.ui.fragment.download;

import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.Utils;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.bean.ShortTvInnerPlayBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import ms.z;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$initHistory$1$1$1", f = "ShortTVDownloadReFragment.kt", l = {}, m = "invokeSuspend")
final class ShortTVDownloadReFragment$initHistory$1$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ ShortTvInnerPlayBean $history;
    int label;
    final /* synthetic */ ShortTVDownloadReFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTVDownloadReFragment$initHistory$1$1$1(ShortTVDownloadReFragment shortTVDownloadReFragment, ShortTvInnerPlayBean shortTvInnerPlayBean, Continuation<? super ShortTVDownloadReFragment$initHistory$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTVDownloadReFragment;
        this.$history = shortTvInnerPlayBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTVDownloadReFragment$initHistory$1$1$1(this.this$0, this.$history, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTVDownloadReFragment$initHistory$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        AppCompatTextView appCompatTextView;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        z zVar = (z) this.this$0.getMViewBinding();
        if (zVar != null && (appCompatTextView = zVar.A) != null) {
            appCompatTextView.setText(this.$history != null ? Utils.a().getString(R$string.short_tv_continue_watch) : Utils.a().getString(R$string.short_tv_play));
        }
        return Unit.f67061a;
    }
}
