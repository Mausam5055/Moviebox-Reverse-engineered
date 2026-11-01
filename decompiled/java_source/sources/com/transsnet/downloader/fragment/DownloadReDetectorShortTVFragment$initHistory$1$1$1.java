package com.transsnet.downloader.fragment;

import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.video.ShortTVPlayBean;
import com.transsnet.downloader.R$string;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$initHistory$1$1$1", f = "DownloadReDetectorShortTVFragment.kt", l = {}, m = "invokeSuspend")
final class DownloadReDetectorShortTVFragment$initHistory$1$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ ShortTVPlayBean $history;
    int label;
    final /* synthetic */ DownloadReDetectorShortTVFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadReDetectorShortTVFragment$initHistory$1$1$1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, ShortTVPlayBean shortTVPlayBean, Continuation<? super DownloadReDetectorShortTVFragment$initHistory$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadReDetectorShortTVFragment;
        this.$history = shortTVPlayBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadReDetectorShortTVFragment$initHistory$1$1$1(this.this$0, this.$history, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadReDetectorShortTVFragment$initHistory$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        AppCompatTextView appCompatTextView;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        py.f0 f0Var = (py.f0) this.this$0.getMViewBinding();
        if (f0Var != null && (appCompatTextView = f0Var.f72711z) != null) {
            appCompatTextView.setText(this.$history != null ? Utils.a().getString(R$string.continue_watch) : Utils.a().getString(com.transsion.baseui.R$string.play));
        }
        return Unit.f67061a;
    }
}
