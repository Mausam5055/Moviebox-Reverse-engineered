.class public final Lxw/c;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lxw/a;

    invoke-direct {p1}, Lxw/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lxw/c;->b:Lkotlin/Lazy;

    new-instance p1, Lxw/b;

    invoke-direct {p1}, Lxw/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lxw/c;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lxw/c;->e()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lxw/c;->h()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method private static final e()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final g()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lxw/c;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method private static final h()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method


# virtual methods
.method public final f()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-direct {p0}, Lxw/c;->g()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method protected onCleared()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/t0;->onCleared()V

    return-void
.end method
