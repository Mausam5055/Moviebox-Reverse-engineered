package com.transsion.mbwidget.data;

import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.transsion.mbwidget.SportSchedulePreviewWidgetProvider;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "a", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SportWidgetRefreshReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: com.transsion.mbwidget.data.SportWidgetRefreshReceiver$onReceive$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.mbwidget.data.SportWidgetRefreshReceiver$onReceive$1", f = "SportWidgetRefreshReceiver.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $ctx;
        final /* synthetic */ BroadcastReceiver.PendingResult $pendingResult;
        int label;

        /* JADX INFO: renamed from: com.transsion.mbwidget.data.SportWidgetRefreshReceiver$onReceive$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.mbwidget.data.SportWidgetRefreshReceiver$onReceive$1$1", f = "SportWidgetRefreshReceiver.kt", l = {33}, m = "invokeSuspend")
        static final class C06351 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            int label;

            C06351(Continuation<? super C06351> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06351(continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((C06351) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objF = IntrinsicsKt.f();
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.b(obj);
                    SportWidgetDataManager sportWidgetDataManager = SportWidgetDataManager.f46246a;
                    this.label = 1;
                    if (sportWidgetDataManager.g(this) == objF) {
                        return objF;
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, BroadcastReceiver.PendingResult pendingResult, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$ctx = context;
            this.$pendingResult = pendingResult;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$ctx, this.$pendingResult, continuation);
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
            try {
                try {
                    lg.a.C0828a c0828a = lg.a.f68839a;
                    c0828a.c("SportWidget", "SportWidgetRefreshReceiver: alarm fired at " + System.currentTimeMillis(), true);
                    kotlinx.coroutines.j.b(null, new C06351(null), 1, null);
                    AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.$ctx);
                    int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(this.$ctx, (Class<?>) SportSchedulePreviewWidgetProvider.class));
                    Intrinsics.e(appWidgetIds);
                    if (appWidgetIds.length == 0) {
                        c0828a.c("SportWidget", "SportWidgetRefreshReceiver: no sport widget instance, skip", true);
                    } else {
                        Context context = this.$ctx;
                        for (int i11 : appWidgetIds) {
                            SportSchedulePreviewWidgetProvider.Companion companion = SportSchedulePreviewWidgetProvider.INSTANCE;
                            Intrinsics.e(context);
                            Intrinsics.e(appWidgetManager);
                            companion.q(context, appWidgetManager, i11, true);
                        }
                        lg.a.f68839a.c("SportWidget", "SportWidgetRefreshReceiver: refreshed " + appWidgetIds.length + " sport widget(s)", true);
                    }
                } catch (Exception e11) {
                    lg.a.C0828a c0828a2 = lg.a.f68839a;
                    lg.a.C0828a.k(c0828a2, "SportWidget", "SportWidgetRefreshReceiver error: " + e11.getMessage(), e11, false, 8, null);
                    c0828a2.c("SportWidget", "SportWidgetRefreshReceiver FAILED: " + e11.getMessage(), true);
                }
                return Unit.f67061a;
            } finally {
                this.$pendingResult.finish();
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intrinsics.h(context, "context");
        Intrinsics.h(intent, "intent");
        if (Intrinsics.c("com.transsion.mbwidget.ACTION_MATCH_REFRESH", intent.getAction())) {
            BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
            kotlinx.coroutines.k.d(o0.a(y0.b().plus(l2.b(null, 1, null))), null, null, new AnonymousClass1(context.getApplicationContext(), pendingResultGoAsync, null), 3, null);
        }
    }
}
