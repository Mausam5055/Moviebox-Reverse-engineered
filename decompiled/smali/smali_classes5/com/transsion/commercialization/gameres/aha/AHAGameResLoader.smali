.class public final Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/commercialization/gameres/a;


# instance fields
.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/commercialization/gameres/aha/d;

    invoke-direct {v0}, Lcom/transsion/commercialization/gameres/aha/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic b()Lcom/transsion/commercialization/gameres/aha/a;
    .locals 1

    invoke-static {}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;->h()Lcom/transsion/commercialization/gameres/aha/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;)Lcom/transsion/commercialization/gameres/aha/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;->g()Lcom/transsion/commercialization/gameres/aha/a;

    move-result-object p0

    return-object p0
.end method

.method private final g()Lcom/transsion/commercialization/gameres/aha/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/gameres/aha/a;

    return-object v0
.end method

.method private static final h()Lcom/transsion/commercialization/gameres/aha/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/commercialization/gameres/aha/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/gameres/aha/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1;-><init>(Ljava/lang/String;Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/commercialization/gameres/aha/c;)Lmk/a;
    .locals 3

    const-string v0, "pageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lmk/a;

    sget-object v1, Lcom/transsion/bean/GameInfoType;->AHA:Lcom/transsion/bean/GameInfoType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p3}, Lmk/a;-><init>(Lcom/transsion/bean/GameInfoType;Lcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/commercialization/gameres/aha/c;)V

    invoke-virtual {v0, p1}, Lmk/a;->l(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lmk/a;->k(Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Landroid/content/Context;Lmk/a;)Lcom/transsion/commercialization/gameres/GameResView;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/commercialization/gameres/aha/AHAGameResView;

    invoke-direct {v0, p1}, Lcom/transsion/commercialization/gameres/aha/AHAGameResView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResView;->setContent(Lmk/a;)V

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lpg/a;->a:Lpg/a$a;

    invoke-virtual {v0}, Lpg/a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://tapi.ahagamecenter.com"

    goto :goto_0

    :cond_0
    const-string v0, "https://api.ahagamecenter.com"

    :goto_0
    return-object v0
.end method
