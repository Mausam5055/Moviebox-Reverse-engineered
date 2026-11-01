package com.transsion.mbwidget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.widget.RemoteViews;
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

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.mbwidget.PlayWidgetProvider$Companion$updateWidget$1", f = "PlayWidgetProvider.kt", l = {77, 78}, m = "invokeSuspend")
final class PlayWidgetProvider$Companion$updateWidget$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $appWidgetId;
    final /* synthetic */ AppWidgetManager $appWidgetManager;
    final /* synthetic */ Context $context;
    Object L$0;
    int label;

    /* JADX INFO: renamed from: com.transsion.mbwidget.PlayWidgetProvider$Companion$updateWidget$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.mbwidget.PlayWidgetProvider$Companion$updateWidget$1$1", f = "PlayWidgetProvider.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $appWidgetId;
        final /* synthetic */ AppWidgetManager $appWidgetManager;
        final /* synthetic */ RemoteViews $views;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AppWidgetManager appWidgetManager, int i11, RemoteViews remoteViews, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$appWidgetManager = appWidgetManager;
            this.$appWidgetId = i11;
            this.$views = remoteViews;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$appWidgetManager, this.$appWidgetId, this.$views, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.$appWidgetManager.updateAppWidget(this.$appWidgetId, this.$views);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PlayWidgetProvider$Companion$updateWidget$1(int i11, Context context, AppWidgetManager appWidgetManager, Continuation<? super PlayWidgetProvider$Companion$updateWidget$1> continuation) {
        super(2, continuation);
        this.$appWidgetId = i11;
        this.$context = context;
        this.$appWidgetManager = appWidgetManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PlayWidgetProvider$Companion$updateWidget$1(this.$appWidgetId, this.$context, this.$appWidgetManager, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PlayWidgetProvider$Companion$updateWidget$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        RemoteViews remoteViews;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                remoteViews = (RemoteViews) this.L$0;
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        int i12 = this.$appWidgetId;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("updateWidget: ");
        sb2.append(i12);
        remoteViews = new RemoteViews(this.$context.getPackageName(), R$layout.widget_subject_play_small);
        PlayWidgetProvider.Companion companion = PlayWidgetProvider.INSTANCE;
        Context context = this.$context;
        int i13 = this.$appWidgetId;
        this.L$0 = remoteViews;
        this.label = 1;
        if (companion.b(context, remoteViews, i13, this) == objF) {
            return objF;
        }
        a2 a2VarC = y0.c();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$appWidgetManager, this.$appWidgetId, remoteViews, null);
        this.L$0 = null;
        this.label = 2;
        if (i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
