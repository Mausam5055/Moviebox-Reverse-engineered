package com.transsion.push.feature.sport;

import android.content.Context;
import android.graphics.Bitmap;
import com.transsion.mpush.api.LocalPushMessage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.f;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.feature.sport.SportsNotificationRenderer$show$1", f = "SportsNotificationRenderer.kt", l = {61}, m = "invokeSuspend")
@SourceDebugExtension
final class SportsNotificationRenderer$show$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ ServerMatchListItemData $matchData;
    final /* synthetic */ LocalPushMessage $message;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SportsNotificationRenderer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SportsNotificationRenderer$show$1(ServerMatchListItemData serverMatchListItemData, SportsNotificationRenderer sportsNotificationRenderer, Context context, LocalPushMessage localPushMessage, Continuation<? super SportsNotificationRenderer$show$1> continuation) {
        super(2, continuation);
        this.$matchData = serverMatchListItemData;
        this.this$0 = sportsNotificationRenderer;
        this.$context = context;
        this.$message = localPushMessage;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SportsNotificationRenderer$show$1 sportsNotificationRenderer$show$1 = new SportsNotificationRenderer$show$1(this.$matchData, this.this$0, this.$context, this.$message, continuation);
        sportsNotificationRenderer$show$1.L$0 = obj;
        return sportsNotificationRenderer$show$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SportsNotificationRenderer$show$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            TeamInfoMatch team1 = this.$matchData.getTeam1();
            String avatar = team1 != null ? team1.getAvatar() : null;
            TeamInfoMatch team2 = this.$matchData.getTeam2();
            List listO = CollectionsKt.o(avatar, team2 != null ? team2.getAvatar() : null);
            SportsNotificationRenderer sportsNotificationRenderer = this.this$0;
            Context context = this.$context;
            ArrayList arrayList = new ArrayList(CollectionsKt.v(listO, 10));
            Iterator it = listO.iterator();
            while (it.hasNext()) {
                arrayList.add(k.b(n0Var, null, null, new SportsNotificationRenderer$show$1$deferredList$1$1((String) it.next(), sportsNotificationRenderer, context, null), 3, null));
            }
            this.label = 1;
            obj = f.a(arrayList, this);
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
        this.this$0.z(this.$context, this.$message, null, new SportsNotificationRenderer.b(this.$matchData, (Bitmap) list.get(0), (Bitmap) list.get(1)));
        return Unit.f67061a;
    }
}
