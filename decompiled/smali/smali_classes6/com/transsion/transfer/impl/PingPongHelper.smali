.class public final Lcom/transsion/transfer/impl/PingPongHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/PingPongHelper$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lcom/transsion/transfer/androidasync/http/b0;

.field private final d:Lcom/transsion/transfer/impl/PingPongHelper$a;

.field private final e:Ljava/util/Stack;

.field private f:Z

.field private g:I

.field private final h:I

.field private final i:Ljava/util/Timer;

.field private final j:Lcom/transsion/transfer/impl/PingPongHelper$task$1;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/impl/PingPongHelper$a;)V
    .locals 1

    const-string v0, "remoteIP"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pingPongListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/transsion/transfer/impl/PingPongHelper;->b:Z

    iput-object p3, p0, Lcom/transsion/transfer/impl/PingPongHelper;->c:Lcom/transsion/transfer/androidasync/http/b0;

    iput-object p4, p0, Lcom/transsion/transfer/impl/PingPongHelper;->d:Lcom/transsion/transfer/impl/PingPongHelper$a;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->e:Ljava/util/Stack;

    const/4 p1, 0x2

    iput p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->h:I

    new-instance p1, Lcom/transsion/transfer/impl/j;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/j;-><init>(Lcom/transsion/transfer/impl/PingPongHelper;)V

    invoke-interface {p3, p1}, Lcom/transsion/transfer/androidasync/http/b0;->G(Lcom/transsion/transfer/androidasync/http/b0$b;)V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->i:Ljava/util/Timer;

    new-instance p1, Lcom/transsion/transfer/impl/PingPongHelper$task$1;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/PingPongHelper$task$1;-><init>(Lcom/transsion/transfer/impl/PingPongHelper;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->j:Lcom/transsion/transfer/impl/PingPongHelper$task$1;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/transfer/impl/PingPongHelper;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/PingPongHelper;->b(Lcom/transsion/transfer/impl/PingPongHelper;Ljava/lang/String;)V

    return-void
.end method

.method private static final b(Lcom/transsion/transfer/impl/PingPongHelper;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->g:I

    iget-object p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->e:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/transfer/impl/PingPongHelper;)I
    .locals 0

    iget p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->g:I

    return p0
.end method

.method public static final synthetic d(Lcom/transsion/transfer/impl/PingPongHelper;)I
    .locals 0

    iget p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->h:I

    return p0
.end method

.method public static final synthetic e(Lcom/transsion/transfer/impl/PingPongHelper;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/PingPongHelper;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/transfer/impl/PingPongHelper;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->e:Ljava/util/Stack;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/transfer/impl/PingPongHelper;)Lcom/transsion/transfer/impl/PingPongHelper$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->d:Lcom/transsion/transfer/impl/PingPongHelper$a;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/transfer/impl/PingPongHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/transfer/impl/PingPongHelper;)Lcom/transsion/transfer/androidasync/http/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->c:Lcom/transsion/transfer/androidasync/http/b0;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/transfer/impl/PingPongHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->f:Z

    return p0
.end method

.method public static final synthetic k(Lcom/transsion/transfer/impl/PingPongHelper;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->g:I

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/transfer/impl/PingPongHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->f:Z

    return-void
.end method

.method private final m()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "server"

    goto :goto_0

    :cond_0
    const-string v0, "client"

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final n()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->i:Ljava/util/Timer;

    iget-object v1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->j:Lcom/transsion/transfer/impl/PingPongHelper$task$1;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->f:Z

    iget-object v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->j:Lcom/transsion/transfer/impl/PingPongHelper$task$1;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
