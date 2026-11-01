package com.transsion.push.feature.sport;

import android.content.Context;
import android.graphics.Bitmap;
import com.transsion.mpush.core.renderer.i;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroid/graphics/Bitmap;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroid/graphics/Bitmap;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.feature.sport.SportsNotificationRenderer$show$1$deferredList$1$1", f = "SportsNotificationRenderer.kt", l = {57}, m = "invokeSuspend")
final class SportsNotificationRenderer$show$1$deferredList$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Bitmap>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ String $url;
    int label;
    final /* synthetic */ SportsNotificationRenderer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SportsNotificationRenderer$show$1$deferredList$1$1(String str, SportsNotificationRenderer sportsNotificationRenderer, Context context, Continuation<? super SportsNotificationRenderer$show$1$deferredList$1$1> continuation) {
        super(2, continuation);
        this.$url = str;
        this.this$0 = sportsNotificationRenderer;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SportsNotificationRenderer$show$1$deferredList$1$1(this.$url, this.this$0, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Bitmap> continuation) {
        return ((SportsNotificationRenderer$show$1$deferredList$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            String str = this.$url;
            if (str == null || str.length() == 0) {
                return null;
            }
            SportsNotificationRenderer sportsNotificationRenderer = this.this$0;
            Context context = this.$context;
            String str2 = this.$url;
            this.label = 1;
            obj = i.k(sportsNotificationRenderer, context, str2, null, this, 4, null);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return (Bitmap) obj;
    }
}
