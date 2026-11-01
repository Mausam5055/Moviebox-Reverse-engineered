package com.transsion.room.viewmodel;

import com.transsion.baselib.db.room.RoomItemBean;
import com.transsion.moviedetailapi.bean.RoomItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.viewmodel.RoomDetailViewModel$insertRecentlyRoom$1", f = "RoomDetailViewModel.kt", l = {142, 143, 146}, m = "invokeSuspend")
@SourceDebugExtension
final class RoomDetailViewModel$insertRecentlyRoom$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ RoomItem $roomItem;
    int label;
    final /* synthetic */ RoomDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomDetailViewModel$insertRecentlyRoom$1(RoomItem roomItem, RoomDetailViewModel roomDetailViewModel, Continuation<? super RoomDetailViewModel$insertRecentlyRoom$1> continuation) {
        super(2, continuation);
        this.$roomItem = roomItem;
        this.this$0 = roomDetailViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomDetailViewModel$insertRecentlyRoom$1(this.$roomItem, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomDetailViewModel$insertRecentlyRoom$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0090  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b2 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        RoomItemBean roomItemBean;
        rj.a aVarO;
        Object objA;
        rj.a aVarO2;
        RoomItemBean roomItemBean2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        List list = null;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else if (i11 == 2) {
                ResultKt.b(obj);
                objA = obj;
                list = (List) objA;
                if (list != null && list.size() > 5 && (aVarO2 = this.this$0.o()) != null) {
                    roomItemBean2 = (RoomItemBean) list.get(list.size() - 1);
                    this.label = 3;
                    if (aVarO2.c(roomItemBean2, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        String groupId = this.$roomItem.getGroupId();
        if (groupId != null) {
            RoomItem roomItem = this.$roomItem;
            roomItemBean = new RoomItemBean(groupId, roomItem.getName(), roomItem.getAvatar(), roomItem.getHasJoin(), roomItem.getNewPostCount(), roomItem.getDescription(), roomItem.getPostCount(), roomItem.getUserCount(), roomItem.getLevel(), System.currentTimeMillis());
        } else {
            roomItemBean = null;
        }
        if (roomItemBean != null && (aVarO = this.this$0.o()) != null) {
            this.label = 1;
            if (aVarO.b(roomItemBean, this) == objF) {
                return objF;
            }
        }
        rj.a aVarO3 = this.this$0.o();
        if (aVarO3 != null) {
            this.label = 2;
            objA = aVarO3.a(this);
            if (objA == objF) {
                return objF;
            }
            list = (List) objA;
            if (list != null) {
                roomItemBean2 = (RoomItemBean) list.get(list.size() - 1);
                this.label = 3;
                if (aVarO2.c(roomItemBean2, this) == objF) {
                    return objF;
                }
            }
        } else if (list != null) {
            roomItemBean2 = (RoomItemBean) list.get(list.size() - 1);
            this.label = 3;
            if (aVarO2.c(roomItemBean2, this) == objF) {
                return objF;
            }
        }
        return Unit.f67061a;
    }
}
