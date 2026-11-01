.class final Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->b:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    iput-object p3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    new-instance v9, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;

    iget-object v3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->a:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->b:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    iget-object v5, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->e:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v9, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
