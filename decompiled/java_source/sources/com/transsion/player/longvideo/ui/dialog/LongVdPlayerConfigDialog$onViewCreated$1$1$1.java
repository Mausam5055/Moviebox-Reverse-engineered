package com.transsion.player.longvideo.ui.dialog;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import com.transsion.memberapi.IMemberApi;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import hj.i;
import java.util.LinkedHashMap;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.ui.dialog.LongVdPlayerConfigDialog$onViewCreated$1$1$1", f = "LongVdPlayerConfigDialog.kt", l = {142}, m = "invokeSuspend")
final class LongVdPlayerConfigDialog$onViewCreated$1$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ go.b $config;
    int label;
    final /* synthetic */ LongVdPlayerConfigDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVdPlayerConfigDialog$onViewCreated$1$1$1(go.b bVar, LongVdPlayerConfigDialog longVdPlayerConfigDialog, Continuation<? super LongVdPlayerConfigDialog$onViewCreated$1$1$1> continuation) {
        super(2, continuation);
        this.$config = bVar;
        this.this$0 = longVdPlayerConfigDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVdPlayerConfigDialog$onViewCreated$1$1$1(this.$config, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVdPlayerConfigDialog$onViewCreated$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
            ?? C = iMemberApi != null ? iMemberApi.c() : 0;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("module_name", "clarity");
            linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, this.$config.d());
            go.a aVar = this.this$0.longVdPlayerBean;
            linkedHashMap.put("subject_id", aVar != null ? aVar.o() : null);
            linkedHashMap.put("is_member", String.valueOf((int) C));
            i iVar = i.f64505a;
            String str = this.this$0.pageName;
            if (str == null) {
                str = "vip_resolution";
            }
            iVar.p(str, linkedHashMap);
            LongVdPlayerConfigDialog longVdPlayerConfigDialog = this.this$0;
            go.b bVar = this.$config;
            go.a aVar2 = longVdPlayerConfigDialog.longVdPlayerBean;
            this.label = 1;
            obj = longVdPlayerConfigDialog.A0(bVar, aVar2, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            LongVodPlayerView longVodPlayerView = this.this$0.longVodPlayerView;
            if (longVodPlayerView != null) {
                longVodPlayerView.showResolutionIntercept(this.$config, "LongVdPlayerConfigDialogResolution");
            }
            this.this$0.dismissAllowingStateLoss();
        } else {
            this.this$0.F0(this.$config);
        }
        return Unit.f67061a;
    }
}
