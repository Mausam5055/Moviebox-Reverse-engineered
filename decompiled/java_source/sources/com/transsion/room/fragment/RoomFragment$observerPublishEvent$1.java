package com.transsion.room.fragment;

import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsnet.flow.event.sync.event.PublishEvent;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.fragment.RoomFragment$observerPublishEvent$1", f = "RoomFragment.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class RoomFragment$observerPublishEvent$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RoomFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomFragment$observerPublishEvent$1(RoomFragment roomFragment, Continuation<? super RoomFragment$observerPublishEvent$1> continuation) {
        super(2, continuation);
        this.this$0 = roomFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(RoomFragment roomFragment, PublishEvent publishEvent) {
        List<Object> data;
        com.transsion.room.adapter.d dVar = roomFragment.mHotAdapter;
        if (dVar != null && (data = dVar.getData()) != null) {
            int i11 = 0;
            for (Object obj : data) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                RoomItem roomItem = (RoomItem) obj;
                if (Intrinsics.c(publishEvent.getGroupId(), roomItem.getGroupId())) {
                    Long postCount = roomItem.getPostCount();
                    roomItem.setPostCount(postCount != null ? Long.valueOf(postCount.longValue() + 1) : null);
                    com.transsion.room.adapter.d dVar2 = roomFragment.mHotAdapter;
                    if (dVar2 != null) {
                        dVar2.notifyItemChanged(i11);
                    }
                    return Unit.f67061a;
                }
                i11 = i12;
            }
        }
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RoomFragment$observerPublishEvent$1 roomFragment$observerPublishEvent$1 = new RoomFragment$observerPublishEvent$1(this.this$0, continuation);
        roomFragment$observerPublishEvent$1.L$0 = obj;
        return roomFragment$observerPublishEvent$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomFragment$observerPublishEvent$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        kotlinx.coroutines.n0 n0Var = (kotlinx.coroutines.n0) this.L$0;
        final RoomFragment roomFragment = this.this$0;
        kotlinx.coroutines.k.d(n0Var, null, null, new RoomFragment$observerPublishEvent$1$invokeSuspend$$inlined$observeEvent$1(false, new Function1() { // from class: com.transsion.room.fragment.o0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return RoomFragment$observerPublishEvent$1.d(roomFragment, (PublishEvent) obj2);
            }
        }, null), 3, null);
        return Unit.f67061a;
    }
}
