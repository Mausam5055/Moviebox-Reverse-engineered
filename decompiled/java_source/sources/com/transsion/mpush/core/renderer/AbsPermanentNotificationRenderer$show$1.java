package com.transsion.mpush.core.renderer;

import android.content.Context;
import android.graphics.Bitmap;
import com.transsion.mpush.api.PermanentPushMessage;
import com.transsion.mpush.core.config.PermanentConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.mpush.core.renderer.AbsPermanentNotificationRenderer$show$1", f = "AbsPermanentNotificationRenderer.kt", l = {78}, m = "invokeSuspend")
@SourceDebugExtension
final class AbsPermanentNotificationRenderer$show$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ PermanentConfig $config;
    final /* synthetic */ Context $context;
    final /* synthetic */ List<PermanentPushMessage> $messages;
    int label;
    final /* synthetic */ AbsPermanentNotificationRenderer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsPermanentNotificationRenderer$show$1(List<PermanentPushMessage> list, AbsPermanentNotificationRenderer absPermanentNotificationRenderer, Context context, PermanentConfig permanentConfig, Continuation<? super AbsPermanentNotificationRenderer$show$1> continuation) {
        super(2, continuation);
        this.$messages = list;
        this.this$0 = absPermanentNotificationRenderer;
        this.$context = context;
        this.$config = permanentConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AbsPermanentNotificationRenderer$show$1(this.$messages, this.this$0, this.$context, this.$config, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AbsPermanentNotificationRenderer$show$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List listK0;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【常驻渲染】开始加载 " + this.$messages.size() + " 张图片"}, false, 4, null);
            AbsPermanentNotificationRenderer absPermanentNotificationRenderer = this.this$0;
            Context context = this.$context;
            List<PermanentPushMessage> list = this.$messages;
            this.label = 1;
            obj = absPermanentNotificationRenderer.G(context, list, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        List listZ0 = CollectionsKt.Z0(this.$messages, (List) obj);
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : listZ0) {
            if (((Pair) obj2).getSecond() != null) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj3 : listZ0) {
            if (((Pair) obj3).getSecond() == null) {
                arrayList2.add(obj3);
            }
        }
        lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【常驻渲染】图片加载完成，成功：" + arrayList.size() + "，失败：" + arrayList2.size()}, false, 4, null);
        if (arrayList.size() >= 10) {
            listK0 = CollectionsKt.K0(arrayList, 10);
        } else {
            this.this$0.f47552d = 0L;
            listK0 = CollectionsKt.K0(CollectionsKt.B0(arrayList, arrayList2), 5);
        }
        List list2 = listK0;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList3.add((Bitmap) ((Pair) it.next()).getSecond());
        }
        ArrayList arrayList4 = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList4.add((PermanentPushMessage) ((Pair) it2.next()).getFirst());
        }
        if (arrayList4.isEmpty()) {
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【常驻渲染】没有有效消息可展示", false, 4, null);
        } else {
            lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【常驻渲染】准备渲染 " + arrayList4.size() + " 条消息"}, false, 4, null);
            this.this$0.E(this.$context, arrayList4, arrayList3, this.$config);
        }
        return Unit.f67061a;
    }
}
