.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->checkNow(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.miniapp.performanceanalyse.screen.ScreenInspectHelper$checkNow$1"
    f = "ScreenInspectHelper.kt"
    l = {
        0x141
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public OooO00o:I

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic OooO0Oo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0OO:Lcom/cloud/tmc/integration/structure/App;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0Oo:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0OO:Lcom/cloud/tmc/integration/structure/App;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0Oo:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    new-instance p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0OO:Lcom/cloud/tmc/integration/structure/App;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0Oo:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO00o:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getCheckNowDelay$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getCheckNowDelay$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)J

    move-result-wide v5

    :cond_2
    iput v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO00o:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getAPP_MAP$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0OO:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    iget-boolean v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    if-eqz v1, :cond_4

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$checkWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
