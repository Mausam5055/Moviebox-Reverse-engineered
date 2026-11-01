.class public final Lcom/transsion/usercenter/setting/b0;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Lkotlin/Lazy;

.field private f:Lio/reactivex/rxjava3/disposables/c;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/b0;->b:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/b0;->c:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/b0;->d:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/usercenter/setting/a0;

    invoke-direct {p1}, Lcom/transsion/usercenter/setting/a0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/setting/b0;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c()Lyw/c;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/setting/b0;->d()Lyw/c;

    move-result-object v0

    return-object v0
.end method

.method private static final d()Lyw/c;
    .locals 1

    new-instance v0, Lyw/c;

    invoke-direct {v0}, Lyw/c;-><init>()V

    return-object v0
.end method

.method private final e()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/b0;->f:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/usercenter/setting/b0;->f:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final f()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/b0;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final g()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/b0;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final h()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/b0;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method protected onCleared()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/t0;->onCleared()V

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/b0;->e()V

    return-void
.end method
