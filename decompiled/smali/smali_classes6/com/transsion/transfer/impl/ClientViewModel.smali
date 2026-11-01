.class public final Lcom/transsion/transfer/impl/ClientViewModel;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Landroid/app/Application;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Ljv/b;

.field private final e:Ljv/b;

.field private final f:Ljv/b;

.field private final g:Ljv/b;

.field private h:Ljava/lang/String;

.field private final i:Lcom/transsion/transfer/impl/ClientViewModel$a;

.field private final j:Lcom/transsion/transfer/impl/ClientViewModel$b;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->b:Landroid/app/Application;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->c:Landroidx/lifecycle/b0;

    new-instance p1, Ljv/b;

    invoke-direct {p1}, Ljv/b;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->d:Ljv/b;

    new-instance p1, Ljv/b;

    invoke-direct {p1}, Ljv/b;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->e:Ljv/b;

    new-instance p1, Ljv/b;

    invoke-direct {p1}, Ljv/b;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->f:Ljv/b;

    new-instance p1, Ljv/b;

    invoke-direct {p1}, Ljv/b;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->g:Ljv/b;

    new-instance p1, Lcom/transsion/transfer/impl/ClientViewModel$a;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/ClientViewModel$a;-><init>(Lcom/transsion/transfer/impl/ClientViewModel;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    new-instance p1, Lcom/transsion/transfer/impl/ClientViewModel$b;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/ClientViewModel$b;-><init>(Lcom/transsion/transfer/impl/ClientViewModel;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    return-void
.end method

.method private static final A(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendServerCreateNotify:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final D(Ljava/util/List;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkv/b;->a:Lkv/b;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lkv/b;->m(ILjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/util/List;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/impl/ClientViewModel;->t(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/util/List;Ljava/lang/Exception;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/ClientViewModel;->l(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;ZLjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/impl/ClientViewModel;->D(Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/ClientViewModel;->A(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/transfer/impl/ClientViewModel;)Ljv/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->e:Ljv/b;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/transfer/impl/ClientViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->c:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/transfer/impl/ClientViewModel;)Ljv/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->f:Ljv/b;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->h:Ljava/lang/String;

    return-void
.end method

.method private static final l(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 8

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->c:Landroidx/lifecycle/b0;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v3

    new-instance v5, Lcom/transsion/transfer/impl/ClientViewModel$connect$2$1;

    const/4 p0, 0x0

    invoke-direct {v5, p1, p2, p3, p0}, Lcom/transsion/transfer/impl/ClientViewModel$connect$2$1;-><init>(Lkotlin/jvm/functions/Function2;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final m()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "transfer"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final t(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/util/List;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTransferList: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->d:Ljv/b;

    invoke-virtual {p0, p1}, Ljv/b;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getTransferList error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final B(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    invoke-interface {v0, p1}, Lcom/transsion/transfer/impl/e;->c(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final C(Ljava/util/List;)V
    .locals 3

    const-string v0, "files"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/ClientViewModel;->m()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/transfer/impl/a;

    invoke-direct {v2}, Lcom/transsion/transfer/impl/a;-><init>()V

    invoke-interface {v0, v1, p1, v2}, Lcom/transsion/transfer/impl/e;->i(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public final k(Lkotlin/jvm/functions/Function2;)V
    .locals 2

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "no connect info"

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    new-instance v1, Lcom/transsion/transfer/impl/c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/transfer/impl/c;-><init>(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->d(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final n()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->e:Ljv/b;

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method protected onCleared()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/t0;->onCleared()V

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->g(Lcom/transsion/transfer/impl/f;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    :cond_0
    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    invoke-interface {v0}, Lcom/transsion/transfer/impl/e;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->h:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public final q()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->g:Ljv/b;

    return-object v0
.end method

.method public final r()I
    .locals 1

    sget-object v0, Lmv/a;->a:Lmv/a;

    invoke-virtual {v0}, Lmv/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final s(Z)V
    .locals 2

    sget-object v0, Lmv/a;->a:Lmv/a;

    invoke-virtual {v0}, Lmv/a;->h()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->d:Ljv/b;

    invoke-virtual {v0}, Lmv/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljv/b;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lkv/b;->a:Lkv/b;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkv/b;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    invoke-interface {p1, v0}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    invoke-interface {p1, v0}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/ClientViewModel;->m()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/transfer/impl/b;

    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/b;-><init>(Lcom/transsion/transfer/impl/ClientViewModel;)V

    invoke-interface {p1, v0, v1}, Lcom/transsion/transfer/impl/e;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    :goto_1
    return-void
.end method

.method public final u()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->d:Ljv/b;

    return-object v0
.end method

.method public final v()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->f:Ljv/b;

    return-object v0
.end method

.method public final w()I
    .locals 2

    sget-object v0, Lmv/a;->a:Lmv/a;

    invoke-virtual {v0}, Lmv/a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lmv/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final x()Z
    .locals 2

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    invoke-interface {v0}, Lcom/transsion/transfer/impl/e;->h()Z

    move-result v0

    return v0
.end method

.method public final y(Lcom/transsion/transfer/impl/entity/FileData;)V
    .locals 2

    const-string v0, "fileData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    invoke-interface {v0, p1}, Lcom/transsion/transfer/impl/e;->f(Lcom/transsion/transfer/impl/entity/FileData;)V

    return-void
.end method

.method public final z(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    new-instance v1, Lcom/transsion/transfer/impl/d;

    invoke-direct {v1, p1}, Lcom/transsion/transfer/impl/d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
