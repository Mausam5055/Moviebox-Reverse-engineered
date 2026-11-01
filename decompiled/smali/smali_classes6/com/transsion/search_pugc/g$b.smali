.class public final Lcom/transsion/search_pugc/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/search_pugc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search_pugc/g$b;-><init>()V

    return-void
.end method

.method private final c()Lcom/transsion/search_pugc/g;
    .locals 1

    invoke-static {}, Lcom/transsion/search_pugc/g;->b()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/search_pugc/g;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroidx/lifecycle/u;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    check-cast p1, Landroidx/lifecycle/u;

    invoke-virtual {v0, p1}, Lcom/transsion/search_pugc/g$b;->b(Landroidx/lifecycle/u;)Lcom/transsion/search_pugc/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    invoke-direct {p1}, Lcom/transsion/search_pugc/g$b;->c()Lcom/transsion/search_pugc/g;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/transsion/search_pugc/g$b;->c()Lcom/transsion/search_pugc/g;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final b(Landroidx/lifecycle/u;)Lcom/transsion/search_pugc/g;
    .locals 1

    invoke-static {}, Lcom/transsion/search_pugc/g;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/search_pugc/g;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/search_pugc/g$b;->c()Lcom/transsion/search_pugc/g;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final d(Landroidx/lifecycle/u;)Lcom/transsion/search_pugc/g;
    .locals 4

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/search_pugc/g;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/search_pugc/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/transsion/search_pugc/g;-><init>(Landroidx/lifecycle/u;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v3, Lcom/transsion/search_pugc/g$b$a;

    invoke-direct {v3}, Lcom/transsion/search_pugc/g$b$a;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Lcom/transsion/search_pugc/g;

    return-object v1
.end method
