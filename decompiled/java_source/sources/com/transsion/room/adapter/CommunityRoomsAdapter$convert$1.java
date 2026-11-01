package com.transsion.room.adapter;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.transsion.moviedetailapi.bean.RoomItem;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.adapter.CommunityRoomsAdapter$convert$1", f = "CommunityRoomsAdapter.kt", l = {91}, m = "invokeSuspend")
final class CommunityRoomsAdapter$convert$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ CommunityRoomsAdapter.RecommendRoomsItemVH $holder;
    final /* synthetic */ RoomItem $item;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CommunityRoomsAdapter$convert$1(RoomItem roomItem, CommunityRoomsAdapter.RecommendRoomsItemVH recommendRoomsItemVH, Continuation<? super CommunityRoomsAdapter$convert$1> continuation) {
        super(2, continuation);
        this.$item = roomItem;
        this.$holder = recommendRoomsItemVH;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CommunityRoomsAdapter$convert$1(this.$item, this.$holder, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CommunityRoomsAdapter$convert$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        AssetManager assets;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            String avatar = this.$item.getAvatar();
            if (avatar != null) {
                CommunityRoomsAdapter.RecommendRoomsItemVH recommendRoomsItemVH = this.$holder;
                Context context = recommendRoomsItemVH.getViewBinding().f16877c.getContext();
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream((context == null || (assets = context.getAssets()) == null) ? null : assets.open(avatar));
                a2 a2VarC = y0.c();
                CommunityRoomsAdapter$convert$1$1$1 communityRoomsAdapter$convert$1$1$1 = new CommunityRoomsAdapter$convert$1$1$1(recommendRoomsItemVH, bitmapDecodeStream, null);
                this.label = 1;
                if (i.g(a2VarC, communityRoomsAdapter$convert$1$1$1, this) == objF) {
                    return objF;
                }
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
