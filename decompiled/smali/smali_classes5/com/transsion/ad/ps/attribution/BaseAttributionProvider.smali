.class public Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$a;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->b:Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/ad/ps/attribution/a;

    invoke-direct {v0}, Lcom/transsion/ad/ps/attribution/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lcom/transsion/ad/db/pslink/a;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->i()Lcom/transsion/ad/db/pslink/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;)Lcom/transsion/ad/db/pslink/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->f()Lcom/transsion/ad/db/pslink/a;

    move-result-object p0

    return-object p0
.end method

.method private final f()Lcom/transsion/ad/db/pslink/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/db/pslink/a;

    return-object v0
.end method

.method private static final i()Lcom/transsion/ad/db/pslink/a;
    .locals 3

    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$n;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/db/MbAdDatabase$n;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/ad/db/MbAdDatabase;->x0()Lcom/transsion/ad/db/pslink/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final c(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$delete$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$delete$2;-><init>(Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method protected final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$n;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/db/MbAdDatabase$n;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/ad/db/MbAdDatabase;->x0()Lcom/transsion/ad/db/pslink/a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/transsion/ad/db/pslink/a;->d(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final e()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final g(Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v7, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;-><init>(Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, p4}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method protected final h(Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v7, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$isAttributionPointExists$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$isAttributionPointExists$2;-><init>(Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, p4}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final j(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$update$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$update$2;-><init>(Lcom/transsion/ad/db/pslink/AttributionPoint;Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
