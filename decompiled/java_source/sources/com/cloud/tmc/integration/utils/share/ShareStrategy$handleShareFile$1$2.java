package com.cloud.tmc.integration.utils.share;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.cloud.tmc.integration.utils.share.ShareStrategy$handleShareFile$1$2", f = "ShareStrategy.kt", l = {92}, m = "invokeSuspend")
final class ShareStrategy$handleShareFile$1$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $block;
    final /* synthetic */ Context $context;
    final /* synthetic */ File $file;
    final /* synthetic */ ShareParams $shareParams;
    Object L$0;
    int label;
    final /* synthetic */ ShareStrategy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShareStrategy$handleShareFile$1$2(ShareParams shareParams, ShareStrategy shareStrategy, Context context, File file, Function0<Unit> function0, Continuation<? super ShareStrategy$handleShareFile$1$2> continuation) {
        super(2, continuation);
        this.$shareParams = shareParams;
        this.this$0 = shareStrategy;
        this.$context = context;
        this.$file = file;
        this.$block = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$0(Function0 function0) {
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShareStrategy$handleShareFile$1$2(this.$shareParams, this.this$0, this.$context, this.$file, this.$block, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShareStrategy$handleShareFile$1$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ShareParams shareParams;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ShareParams shareParams2 = this.$shareParams;
            ShareStrategy shareStrategy = this.this$0;
            Context context = this.$context;
            File file = this.$file;
            this.L$0 = shareParams2;
            this.label = 1;
            Object fileUriByCursor = shareStrategy.getFileUriByCursor(context, file, this);
            if (fileUriByCursor == objF) {
                return objF;
            }
            shareParams = shareParams2;
            obj = fileUriByCursor;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            shareParams = (ShareParams) this.L$0;
            ResultKt.b(obj);
        }
        shareParams.setFileUri((Uri) obj);
        Handler handler = ShareStrategy.HANDLER;
        final Function0<Unit> function0 = this.$block;
        handler.post(new Runnable() { // from class: com.cloud.tmc.integration.utils.share.c
            @Override // java.lang.Runnable
            public final void run() {
                ShareStrategy$handleShareFile$1$2.invokeSuspend$lambda$0(function0);
            }
        });
        return Unit.f67061a;
    }
}
