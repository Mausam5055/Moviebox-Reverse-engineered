package com.transsion.mpush.core.renderer;

import android.content.Context;
import com.transsion.mpush.api.PermanentPushMessage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.r0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/n0;", "", "Lkotlinx/coroutines/r0;", "Landroid/graphics/Bitmap;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/util/List;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.mpush.core.renderer.AbsPermanentNotificationRenderer$loadImages$deferredList$1", f = "AbsPermanentNotificationRenderer.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class AbsPermanentNotificationRenderer$loadImages$deferredList$1 extends SuspendLambda implements Function2<n0, Continuation<? super List<? extends r0>>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ int $loadSize;
    final /* synthetic */ List<PermanentPushMessage> $messages;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AbsPermanentNotificationRenderer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsPermanentNotificationRenderer$loadImages$deferredList$1(int i11, List<PermanentPushMessage> list, AbsPermanentNotificationRenderer absPermanentNotificationRenderer, Context context, Continuation<? super AbsPermanentNotificationRenderer$loadImages$deferredList$1> continuation) {
        super(2, continuation);
        this.$loadSize = i11;
        this.$messages = list;
        this.this$0 = absPermanentNotificationRenderer;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AbsPermanentNotificationRenderer$loadImages$deferredList$1 absPermanentNotificationRenderer$loadImages$deferredList$1 = new AbsPermanentNotificationRenderer$loadImages$deferredList$1(this.$loadSize, this.$messages, this.this$0, this.$context, continuation);
        absPermanentNotificationRenderer$loadImages$deferredList$1.L$0 = obj;
        return absPermanentNotificationRenderer$loadImages$deferredList$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super List<? extends r0>> continuation) {
        return ((AbsPermanentNotificationRenderer$loadImages$deferredList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        n0 n0Var = (n0) this.L$0;
        IntRange intRangeT = RangesKt.t(0, this.$loadSize);
        List<PermanentPushMessage> list = this.$messages;
        AbsPermanentNotificationRenderer absPermanentNotificationRenderer = this.this$0;
        Context context = this.$context;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(intRangeT, 10));
        Iterator<Integer> it = intRangeT.iterator();
        while (it.hasNext()) {
            arrayList.add(kotlinx.coroutines.k.b(n0Var, null, null, new AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1(list, ((IntIterator) it).a(), absPermanentNotificationRenderer, context, null), 3, null));
        }
        return arrayList;
    }
}
