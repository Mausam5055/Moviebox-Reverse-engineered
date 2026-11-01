.class public final Lcom/transsion/transfer/impl/k;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Ljv/b;

.field private final e:Ljv/b;

.field private final f:Landroidx/lifecycle/b0;

.field private g:Lcom/transsion/transfer/impl/g;

.field private final h:Lcom/transsion/transfer/impl/g;

.field private final i:Lkotlin/jvm/functions/Function4;

.field private final j:Lcom/transsion/transfer/impl/k$c;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/k;->b:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/k;->c:Landroidx/lifecycle/b0;

    new-instance p1, Ljv/b;

    invoke-direct {p1}, Ljv/b;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/k;->d:Ljv/b;

    new-instance p1, Ljv/b;

    invoke-direct {p1}, Ljv/b;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/k;->e:Ljv/b;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/k;->f:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/transfer/impl/k$b;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/k$b;-><init>(Lcom/transsion/transfer/impl/k;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/k;->h:Lcom/transsion/transfer/impl/g;

    new-instance p1, Lcom/transsion/transfer/impl/k$a;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/k$a;-><init>(Lcom/transsion/transfer/impl/k;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    new-instance p1, Lcom/transsion/transfer/impl/k$c;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/k$c;-><init>(Lcom/transsion/transfer/impl/k;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/k;->j:Lcom/transsion/transfer/impl/k$c;

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/transfer/impl/k;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/k;->c:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/transfer/impl/k;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/k;->f:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/transfer/impl/k;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/k;->b:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/transfer/impl/k;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/k;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/transfer/impl/k;)Lcom/transsion/transfer/impl/g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/k;->g:Lcom/transsion/transfer/impl/g;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/transfer/impl/k;)Ljv/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/k;->e:Ljv/b;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/transfer/impl/k;)Ljv/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/k;->d:Ljv/b;

    return-object p0
.end method

.method private final q()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 2

    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->h:Lcom/transsion/transfer/impl/g;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->e(Lcom/transsion/transfer/impl/g;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->j:Lcom/transsion/transfer/impl/k$c;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->a(Lcom/transsion/transfer/impl/i;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->b(Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v0}, Lcom/transsion/transfer/impl/h;->open()V

    sget-object v0, Lkv/b;->a:Lkv/b;

    invoke-virtual {v0}, Lkv/b;->r()V

    return-void
.end method

.method public final B(Lcom/transsion/transfer/impl/g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/k;->g:Lcom/transsion/transfer/impl/g;

    return-void
.end method

.method public final C()V
    .locals 2

    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->h:Lcom/transsion/transfer/impl/g;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->e(Lcom/transsion/transfer/impl/g;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->j:Lcom/transsion/transfer/impl/k$c;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->a(Lcom/transsion/transfer/impl/i;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->b(Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v0}, Lcom/transsion/transfer/impl/h;->d()V

    return-void
.end method

.method public final j()Z
    .locals 2

    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->h:Lcom/transsion/transfer/impl/g;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->e(Lcom/transsion/transfer/impl/g;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->j:Lcom/transsion/transfer/impl/k$c;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->a(Lcom/transsion/transfer/impl/i;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->b(Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v0}, Lcom/transsion/transfer/impl/h;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final k()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/k;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 2

    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->h:Lcom/transsion/transfer/impl/g;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->e(Lcom/transsion/transfer/impl/g;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->j:Lcom/transsion/transfer/impl/k$c;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->a(Lcom/transsion/transfer/impl/i;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->b(Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v0}, Lcom/transsion/transfer/impl/h;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 2

    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->h:Lcom/transsion/transfer/impl/g;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->e(Lcom/transsion/transfer/impl/g;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->j:Lcom/transsion/transfer/impl/k$c;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->a(Lcom/transsion/transfer/impl/i;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->b(Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v0}, Lcom/transsion/transfer/impl/h;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/k;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/k;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method protected onCleared()V
    .locals 3

    invoke-super {p0}, Landroidx/lifecycle/t0;->onCleared()V

    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/transfer/impl/k;->j:Lcom/transsion/transfer/impl/k$c;

    invoke-interface {v1, v2}, Lcom/transsion/transfer/impl/h;->g(Lcom/transsion/transfer/impl/i;)V

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    invoke-interface {v1, v2}, Lcom/transsion/transfer/impl/h;->h(Lkotlin/jvm/functions/Function4;)V

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->e(Lcom/transsion/transfer/impl/g;)V

    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 3

    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->h:Lcom/transsion/transfer/impl/g;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->e(Lcom/transsion/transfer/impl/g;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->j:Lcom/transsion/transfer/impl/k$c;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->a(Lcom/transsion/transfer/impl/i;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->b(Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v0}, Lcom/transsion/transfer/impl/h;->i()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurClientName: getCurClientName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final r()Lkotlin/jvm/functions/Function4;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public final s()I
    .locals 1

    sget-object v0, Lmv/b;->a:Lmv/b;

    invoke-virtual {v0}, Lmv/b;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->h:Lcom/transsion/transfer/impl/g;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->e(Lcom/transsion/transfer/impl/g;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->b(Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v0}, Lcom/transsion/transfer/impl/h;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/k;->e:Ljv/b;

    return-object v0
.end method

.method public final v()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/k;->d:Ljv/b;

    return-object v0
.end method

.method public final w()I
    .locals 2

    sget-object v0, Lmv/b;->a:Lmv/b;

    invoke-virtual {v0}, Lmv/b;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lmv/b;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final x()V
    .locals 2

    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->h:Lcom/transsion/transfer/impl/g;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->e(Lcom/transsion/transfer/impl/g;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->j:Lcom/transsion/transfer/impl/k$c;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->a(Lcom/transsion/transfer/impl/i;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->b(Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public final y()Z
    .locals 2

    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->h:Lcom/transsion/transfer/impl/g;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->e(Lcom/transsion/transfer/impl/g;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/h;->b(Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v0}, Lcom/transsion/transfer/impl/h;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final z(I)V
    .locals 4

    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/transfer/impl/h;->c()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyClientCMD: clientIps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Liv/h$a;->b(Landroid/content/Context;)Lcom/transsion/transfer/impl/h;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/transfer/impl/k;->h:Lcom/transsion/transfer/impl/g;

    invoke-interface {v0, v2}, Lcom/transsion/transfer/impl/h;->e(Lcom/transsion/transfer/impl/g;)V

    iget-object v2, p0, Lcom/transsion/transfer/impl/k;->j:Lcom/transsion/transfer/impl/k$c;

    invoke-interface {v0, v2}, Lcom/transsion/transfer/impl/h;->a(Lcom/transsion/transfer/impl/i;)V

    iget-object v2, p0, Lcom/transsion/transfer/impl/k;->i:Lkotlin/jvm/functions/Function4;

    invoke-interface {v0, v2}, Lcom/transsion/transfer/impl/h;->b(Lkotlin/jvm/functions/Function4;)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/transsion/transfer/impl/h;->f(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
