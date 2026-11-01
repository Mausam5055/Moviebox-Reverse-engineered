package com.transsion.mbwidget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.widget.RemoteViews;
import com.transsion.mbwidget.data.SportMatch;
import com.transsion.mbwidget.data.SportWidgetDataManager;
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
@DebugMetadata(c = "com.transsion.mbwidget.SportSchedulePreviewWidgetProvider$Companion$updateWidget$1", f = "SportSchedulePreviewWidgetProvider.kt", l = {176, 178, 186, 197}, m = "invokeSuspend")
final class SportSchedulePreviewWidgetProvider$Companion$updateWidget$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $appWidgetId;
    final /* synthetic */ AppWidgetManager $appWidgetManager;
    final /* synthetic */ Context $context;
    final /* synthetic */ int $hDp;
    final /* synthetic */ boolean $reportExposure;
    final /* synthetic */ int $wDp;
    Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: renamed from: com.transsion.mbwidget.SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.mbwidget.SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$1", f = "SportSchedulePreviewWidgetProvider.kt", l = {}, m = "invokeSuspend")
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

    /* JADX INFO: renamed from: com.transsion.mbwidget.SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.mbwidget.SportSchedulePreviewWidgetProvider$Companion$updateWidget$1$2", f = "SportSchedulePreviewWidgetProvider.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $appWidgetId;
        final /* synthetic */ AppWidgetManager $appWidgetManager;
        final /* synthetic */ RemoteViews $errorViews;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(AppWidgetManager appWidgetManager, int i11, RemoteViews remoteViews, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$appWidgetManager = appWidgetManager;
            this.$appWidgetId = i11;
            this.$errorViews = remoteViews;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$appWidgetManager, this.$appWidgetId, this.$errorViews, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.$appWidgetManager.updateAppWidget(this.$appWidgetId, this.$errorViews);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SportSchedulePreviewWidgetProvider$Companion$updateWidget$1(Context context, int i11, int i12, int i13, boolean z10, AppWidgetManager appWidgetManager, Continuation<? super SportSchedulePreviewWidgetProvider$Companion$updateWidget$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$wDp = i11;
        this.$hDp = i12;
        this.$appWidgetId = i13;
        this.$reportExposure = z10;
        this.$appWidgetManager = appWidgetManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SportSchedulePreviewWidgetProvider$Companion$updateWidget$1(this.$context, this.$wDp, this.$hDp, this.$appWidgetId, this.$reportExposure, this.$appWidgetManager, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SportSchedulePreviewWidgetProvider$Companion$updateWidget$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x008c A[Catch: Exception -> 0x002b, TryCatch #0 {Exception -> 0x002b, blocks: (B:11:0x0026, B:16:0x0038, B:29:0x0088, B:31:0x008c, B:36:0x0096, B:39:0x009e, B:41:0x00a4, B:42:0x00a7, B:19:0x0040, B:25:0x0063, B:22:0x0049), top: B:53:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0090  */
    /* JADX WARN: Code duplicated, block: B:34:0x0093  */
    /* JADX WARN: Code duplicated, block: B:36:0x0096 A[Catch: Exception -> 0x002b, TryCatch #0 {Exception -> 0x002b, blocks: (B:11:0x0026, B:16:0x0038, B:29:0x0088, B:31:0x008c, B:36:0x0096, B:39:0x009e, B:41:0x00a4, B:42:0x00a7, B:19:0x0040, B:25:0x0063, B:22:0x0049), top: B:53:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:37:0x009b  */
    /* JADX WARN: Code duplicated, block: B:39:0x009e A[Catch: Exception -> 0x002b, TryCatch #0 {Exception -> 0x002b, blocks: (B:11:0x0026, B:16:0x0038, B:29:0x0088, B:31:0x008c, B:36:0x0096, B:39:0x009e, B:41:0x00a4, B:42:0x00a7, B:19:0x0040, B:25:0x0063, B:22:0x0049), top: B:53:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c0 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        RemoteViews remoteViews;
        Object objK;
        RemoteViews remoteViews2;
        SportMatch sportMatch;
        a2 a2VarC;
        AnonymousClass1 anonymousClass1;
        String str;
        String matchId;
        String deeplink;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    remoteViews = (RemoteViews) this.L$0;
                    ResultKt.b(obj);
                    objK = obj;
                } else if (i11 == 2) {
                    sportMatch = (SportMatch) this.L$1;
                    remoteViews2 = (RemoteViews) this.L$0;
                    ResultKt.b(obj);
                    if (this.$reportExposure) {
                        com.transsion.mbwidget.utils.a aVar = com.transsion.mbwidget.utils.a.f46283a;
                        if (sportMatch != null) {
                            str = "match";
                        } else {
                            str = "root";
                        }
                        if (sportMatch != null) {
                            matchId = sportMatch.getMatchId();
                        } else {
                            matchId = null;
                        }
                        if (sportMatch != null) {
                            deeplink = sportMatch.getDeeplink();
                        } else {
                            deeplink = null;
                        }
                        aVar.g(str, matchId, deeplink);
                    }
                    a2VarC = y0.c();
                    anonymousClass1 = new AnonymousClass1(this.$appWidgetManager, this.$appWidgetId, remoteViews2, null);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 3;
                    if (i.g(a2VarC, anonymousClass1, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 3 && i11 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            remoteViews = new RemoteViews(this.$context.getPackageName(), R$layout.widget_sport);
            SportWidgetDataManager sportWidgetDataManager = SportWidgetDataManager.f46246a;
            this.L$0 = remoteViews;
            this.label = 1;
            objK = sportWidgetDataManager.k(this);
            if (objK == objF) {
                return objF;
            }
            SportMatch sportMatch2 = (SportMatch) objK;
            SportSchedulePreviewWidgetProvider.Companion companion = SportSchedulePreviewWidgetProvider.INSTANCE;
            companion.e(remoteViews, this.$wDp, this.$hDp);
            Context context = this.$context;
            int i12 = this.$appWidgetId;
            this.L$0 = remoteViews;
            this.L$1 = sportMatch2;
            this.label = 2;
            if (companion.f(context, remoteViews, i12, sportMatch2, this) == objF) {
                return objF;
            }
            remoteViews2 = remoteViews;
            sportMatch = sportMatch2;
            if (this.$reportExposure) {
                com.transsion.mbwidget.utils.a aVar2 = com.transsion.mbwidget.utils.a.f46283a;
                if (sportMatch != null) {
                    str = "match";
                } else {
                    str = "root";
                }
                if (sportMatch != null) {
                    matchId = sportMatch.getMatchId();
                } else {
                    matchId = null;
                }
                if (sportMatch != null) {
                    deeplink = sportMatch.getDeeplink();
                } else {
                    deeplink = null;
                }
                aVar2.g(str, matchId, deeplink);
            }
            a2VarC = y0.c();
            anonymousClass1 = new AnonymousClass1(this.$appWidgetManager, this.$appWidgetId, remoteViews2, null);
            this.L$0 = null;
            this.L$1 = null;
            this.label = 3;
            if (i.g(a2VarC, anonymousClass1, this) == objF) {
                return objF;
            }
            return Unit.f67061a;
        } catch (Exception e11) {
            lg.a.C0828a.k(lg.a.f68839a, "SportWidget_", "updateWidget error: " + e11.getMessage(), e11, false, 8, null);
            RemoteViews remoteViews3 = new RemoteViews(this.$context.getPackageName(), R$layout.widget_sport);
            SportSchedulePreviewWidgetProvider.Companion companion2 = SportSchedulePreviewWidgetProvider.INSTANCE;
            companion2.e(remoteViews3, this.$wDp, this.$hDp);
            companion2.p(this.$context, remoteViews3, this.$appWidgetId);
            if (this.$reportExposure) {
                com.transsion.mbwidget.utils.a.f46283a.g("root", null, null);
            }
            a2 a2VarC2 = y0.c();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$appWidgetManager, this.$appWidgetId, remoteViews3, null);
            this.L$0 = null;
            this.L$1 = null;
            this.label = 4;
            if (i.g(a2VarC2, anonymousClass2, this) == objF) {
                return objF;
            }
        }
    }
}
