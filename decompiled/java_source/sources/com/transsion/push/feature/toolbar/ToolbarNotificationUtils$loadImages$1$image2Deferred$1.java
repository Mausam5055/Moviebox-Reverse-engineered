package com.transsion.push.feature.toolbar;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroid/graphics/Bitmap;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroid/graphics/Bitmap;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.feature.toolbar.ToolbarNotificationUtils$loadImages$1$image2Deferred$1", f = "ToolbarNotificationUtils.kt", l = {294}, m = "invokeSuspend")
final class ToolbarNotificationUtils$loadImages$1$image2Deferred$1 extends SuspendLambda implements Function2<n0, Continuation<? super Bitmap>, Object> {
    final /* synthetic */ Pair<ToolbarNoticeItem, ToolbarNoticeItem> $pair;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ToolbarNotificationUtils$loadImages$1$image2Deferred$1(Pair<ToolbarNoticeItem, ToolbarNoticeItem> pair, Continuation<? super ToolbarNotificationUtils$loadImages$1$image2Deferred$1> continuation) {
        super(2, continuation);
        this.$pair = pair;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ToolbarNotificationUtils$loadImages$1$image2Deferred$1(this.$pair, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Bitmap> continuation) {
        return ((ToolbarNotificationUtils$loadImages$1$image2Deferred$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            String cover = this.$pair.getSecond().getCover();
            if (cover == null || cover.length() == 0) {
                return null;
            }
            ToolbarNotificationUtils toolbarNotificationUtils = ToolbarNotificationUtils.f50834a;
            String cover2 = this.$pair.getSecond().getCover();
            Intrinsics.e(cover2);
            this.label = 1;
            obj = toolbarNotificationUtils.t(cover2, this);
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
