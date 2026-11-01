package com.transsion.push;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.transsion.mpush.api.LocalPushMessage;
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
import kotlinx.coroutines.i0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.PushTestActivity$showLocalPushList$1", f = "PushTestActivity.kt", l = {150}, m = "invokeSuspend")
final class PushTestActivity$showLocalPushList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ PushTestActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PushTestActivity$showLocalPushList$1(PushTestActivity pushTestActivity, Continuation<? super PushTestActivity$showLocalPushList$1> continuation) {
        super(2, continuation);
        this.this$0 = pushTestActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence d(LocalPushMessage localPushMessage) {
        return "msgId=" + localPushMessage.getMessageId() + "\ntitle=" + localPushMessage.getTitle() + "\ndesc=" + localPushMessage.getDesc() + "\ndeeplink=" + localPushMessage.getDeeplink() + "\nimage=" + localPushMessage.getImageList() + "\nstyle=" + localPushMessage.getStyle() + "\nstatus=" + localPushMessage.getMsgStatus();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PushTestActivity$showLocalPushList$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PushTestActivity$showLocalPushList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            i0 i0VarB = y0.b();
            PushTestActivity$showLocalPushList$1$list$1 pushTestActivity$showLocalPushList$1$list$1 = new PushTestActivity$showLocalPushList$1$list$1(null);
            this.label = 1;
            obj = kotlinx.coroutines.i.g(i0VarB, pushTestActivity$showLocalPushList$1$list$1, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        List list = (List) obj;
        if (list.isEmpty()) {
            PushTestActivity pushTestActivity = this.this$0;
            Toast.makeText(pushTestActivity, pushTestActivity.getString(com.transsion.lib.push.R$string.push_test_no_local), 0).show();
            return Unit.f67061a;
        }
        String strS0 = CollectionsKt.s0(list, "\n\n", null, null, 0, null, new Function1() { // from class: com.transsion.push.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return PushTestActivity$showLocalPushList$1.d((LocalPushMessage) obj2);
            }
        }, 30, null);
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(this.this$0);
        View viewInflate = this.this$0.getLayoutInflater().inflate(com.transsion.lib.push.R$layout.dialog_push_list, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(com.transsion.lib.push.R$id.tvPushListTitle)).setText(this.this$0.getString(com.transsion.lib.push.R$string.push_test_local_list_title));
        TextView textView = (TextView) viewInflate.findViewById(com.transsion.lib.push.R$id.tvPushListContent);
        textView.setText(strS0);
        textView.setTextSize(12.0f);
        cVar.setContentView(viewInflate);
        cVar.show();
        return Unit.f67061a;
    }
}
