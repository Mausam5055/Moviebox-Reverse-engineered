.class public final Lcom/transsion/transfer/impl/client/TransferClient$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/impl/client/TransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->f(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->n(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final h()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&1000&"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljv/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m(Lcom/transsion/transfer/impl/client/TransferClient$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->h()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final n(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->M(Lcom/transsion/transfer/impl/e;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/h;
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientIp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transferId"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/transfer/androidasync/http/h;

    invoke-direct {v2, p1}, Lcom/transsion/transfer/androidasync/http/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p2}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v2, v1, p3}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    const-string p1, "transferProtocolVersion"

    const-string p2, "1"

    invoke-virtual {v2, p1, p2}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    const/16 p1, 0xbb8

    invoke-virtual {v2, p1}, Lcom/transsion/transfer/androidasync/http/j;->y(I)Lcom/transsion/transfer/androidasync/http/j;

    return-object v2
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/i;
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientIp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transferId"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/transfer/androidasync/http/i;

    invoke-direct {v2, p1}, Lcom/transsion/transfer/androidasync/http/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p2}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    invoke-virtual {v2, v1, p3}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    const-string p1, "transferProtocolVersion"

    const-string p2, "1"

    invoke-virtual {v2, p1, p2}, Lcom/transsion/transfer/androidasync/http/j;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;

    const/16 p1, 0xbb8

    invoke-virtual {v2, p1}, Lcom/transsion/transfer/androidasync/http/j;->y(I)Lcom/transsion/transfer/androidasync/http/j;

    return-object v2
.end method

.method public final e(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->P(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->L(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->R(Ljava/lang/String;)V

    sget-object v1, Lmv/a;->a:Lmv/a;

    invoke-virtual {v1}, Lmv/a;->b()V

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->B()Lcom/transsion/transfer/impl/e;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->B()Lcom/transsion/transfer/impl/e;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/transsion/transfer/impl/client/k;

    invoke-direct {v2, p1}, Lcom/transsion/transfer/impl/client/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v1, v2}, Lcom/transsion/transfer/impl/e;->c(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->M(Lcom/transsion/transfer/impl/e;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 3

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->E()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->H()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public final i()Lcom/transsion/transfer/impl/e;
    .locals 5

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->B()Lcom/transsion/transfer/impl/e;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/transsion/transfer/impl/client/TransferClient;

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->H()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->M(Lcom/transsion/transfer/impl/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "serverIpNew"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientIpNew"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transferIdNew"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/transfer/impl/client/TransferClient;->P(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/transfer/impl/client/TransferClient;->L(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/transsion/transfer/impl/client/TransferClient;->R(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->B()Lcom/transsion/transfer/impl/e;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->B()Lcom/transsion/transfer/impl/e;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/transsion/transfer/impl/client/l;

    invoke-direct {p2, p4}, Lcom/transsion/transfer/impl/client/l;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p1, p2}, Lcom/transsion/transfer/impl/e;->c(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-void
.end method
