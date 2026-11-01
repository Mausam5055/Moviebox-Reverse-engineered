.class public final Lcom/transsnet/login/interest/LoginInterestViewModel;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/interest/LoginInterestViewModel;->b:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static final synthetic c(Lcom/transsnet/login/interest/LoginInterestViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/login/interest/LoginInterestViewModel;->b:Landroidx/lifecycle/b0;

    return-object p0
.end method


# virtual methods
.method public final d()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/interest/LoginInterestViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final e(Ljava/util/List;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/login/interest/LoginInterestViewModel$postInterest$1$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/transsnet/login/interest/LoginInterestViewModel$postInterest$1$1;-><init>(Lcom/transsnet/login/interest/LoginInterestViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method
