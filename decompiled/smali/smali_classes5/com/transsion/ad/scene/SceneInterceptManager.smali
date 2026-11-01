.class public final Lcom/transsion/ad/scene/SceneInterceptManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/scene/SceneInterceptManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/scene/SceneInterceptManager;

    invoke-direct {v0}, Lcom/transsion/ad/scene/SceneInterceptManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/scene/SceneInterceptManager;->a:Lcom/transsion/ad/scene/SceneInterceptManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/transsion/ad/scene/SceneInterceptManager$intercept$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/ad/scene/SceneInterceptManager$intercept$1;

    iget v1, v0, Lcom/transsion/ad/scene/SceneInterceptManager$intercept$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/scene/SceneInterceptManager$intercept$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/scene/SceneInterceptManager$intercept$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/scene/SceneInterceptManager$intercept$1;-><init>(Lcom/transsion/ad/scene/SceneInterceptManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/scene/SceneInterceptManager$intercept$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/scene/SceneInterceptManager$intercept$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "sceneId is empty"

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    sget-object p2, Lhi/f;->a:Lhi/f;

    invoke-virtual {p2}, Lhi/f;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "\u5ba2\u6237\u7aef \u5168\u5c40\u5173\u95ed\u5e7f\u544a"

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    sget-object p2, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {p2, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "\u573a\u666f\u914d\u7f6e\u4e3a\u7a7a"

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_5
    sget-object p2, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    invoke-virtual {p2}, Lcom/transsion/ad/scene/b;->l()Z

    move-result p2

    if-nez p2, :cond_6

    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "\u5168\u5c40\u573a\u666f\u5173\u95ed"

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    sget-object p2, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-static {p2, p1, v3, v2, v5}, Lcom/transsion/ad/scene/c;->f(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "\u5f53\u524d\u573a\u666f\u5173\u95ed"

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    sget-object v2, Lcom/transsion/ad/strategy/s;->a:Lcom/transsion/ad/strategy/s;

    invoke-virtual {v2}, Lcom/transsion/ad/strategy/s;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "\u65b0\u7528\u6237\u4fdd\u62a4\u671f\uff0c\u4e0d\u5c55\u793a\u5e7f\u544a"

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_8
    invoke-virtual {p2, p1}, Lcom/transsion/ad/scene/c;->g(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "\u5f53\u524d\u662f\u4f1a\u5458,\u4e0d\u5c55\u793a\u5e7f\u544a"

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_9
    sget-object p2, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;->a:Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;

    if-nez p1, :cond_a

    const-string p1, ""

    :cond_a
    iput v4, v0, Lcom/transsion/ad/scene/SceneInterceptManager$intercept$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    :cond_b
    :goto_1
    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_c
    sget-object p1, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    invoke-virtual {p1}, Lcom/transsion/ad/strategy/t;->a()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "\u9752\u5c11\u5e74\u6a21\u5f0f\uff0c\u4e0d\u5c55\u793a\u5e7f\u544a"

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_d
    new-instance p1, Lkotlin/Pair;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "\u9ed8\u8ba4\u4e0d\u62e6\u622a"

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
