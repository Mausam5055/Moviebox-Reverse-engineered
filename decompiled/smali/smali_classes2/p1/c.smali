.class public final Lp1/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/lifecycle/x0;

.field private final b:Landroidx/lifecycle/v0$c;

.field private final c:Lp1/a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0$c;Lp1/a;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/c;->a:Landroidx/lifecycle/x0;

    iput-object p2, p0, Lp1/c;->b:Landroidx/lifecycle/v0$c;

    iput-object p3, p0, Lp1/c;->c:Lp1/a;

    return-void
.end method

.method public static synthetic b(Lp1/c;Lkotlin/reflect/KClass;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/t0;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lq1/g;->a:Lq1/g;

    invoke-virtual {p2, p1}, Lq1/g;->c(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lp1/c;->a(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/t0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/t0;
    .locals 2

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp1/c;->a:Landroidx/lifecycle/x0;

    invoke-virtual {v0, p2}, Landroidx/lifecycle/x0;->b(Ljava/lang/String;)Landroidx/lifecycle/t0;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/reflect/KClass;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lp1/c;->b:Landroidx/lifecycle/v0$c;

    instance-of p2, p1, Landroidx/lifecycle/v0$e;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/lifecycle/v0$e;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0$e;->a(Landroidx/lifecycle/t0;)V

    :cond_0
    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lp1/b;

    iget-object v1, p0, Lp1/c;->c:Lp1/a;

    invoke-direct {v0, v1}, Lp1/b;-><init>(Lp1/a;)V

    sget-object v1, Lq1/g$a;->a:Lq1/g$a;

    invoke-virtual {v0, v1, p2}, Lp1/b;->c(Lp1/a$b;Ljava/lang/Object;)V

    iget-object v1, p0, Lp1/c;->b:Landroidx/lifecycle/v0$c;

    invoke-static {v1, p1, v0}, Lp1/d;->a(Landroidx/lifecycle/v0$c;Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p1

    iget-object v0, p0, Lp1/c;->a:Landroidx/lifecycle/x0;

    invoke-virtual {v0, p2, p1}, Landroidx/lifecycle/x0;->d(Ljava/lang/String;Landroidx/lifecycle/t0;)V

    return-object p1
.end method
