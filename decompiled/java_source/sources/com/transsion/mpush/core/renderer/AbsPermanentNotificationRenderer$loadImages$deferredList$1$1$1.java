package com.transsion.mpush.core.renderer;

import android.content.Context;
import android.graphics.Bitmap;
import com.transsion.mpush.api.PermanentPushMessage;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroid/graphics/Bitmap;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroid/graphics/Bitmap;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.mpush.core.renderer.AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1", f = "AbsPermanentNotificationRenderer.kt", l = {231}, m = "invokeSuspend")
final class AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Bitmap>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ int $index;
    final /* synthetic */ List<PermanentPushMessage> $messages;
    int label;
    final /* synthetic */ AbsPermanentNotificationRenderer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1(List<PermanentPushMessage> list, int i11, AbsPermanentNotificationRenderer absPermanentNotificationRenderer, Context context, Continuation<? super AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1> continuation) {
        super(2, continuation);
        this.$messages = list;
        this.$index = i11;
        this.this$0 = absPermanentNotificationRenderer;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1(this.$messages, this.$index, this.this$0, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Bitmap> continuation) {
        return ((AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            String image = this.$messages.get(this.$index).getImage();
            if (image == null || image.length() == 0) {
                return null;
            }
            AbsPermanentNotificationRenderer absPermanentNotificationRenderer = this.this$0;
            Context context = this.$context;
            Integer numD = Boxing.d(absPermanentNotificationRenderer.D());
            this.label = 1;
            obj = absPermanentNotificationRenderer.j(context, image, numD, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }
}
