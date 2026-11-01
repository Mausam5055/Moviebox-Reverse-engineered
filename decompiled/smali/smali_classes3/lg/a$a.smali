.class public final Llg/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llg/a$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Llg/a$a;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MB_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static synthetic e(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Llg/a$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static synthetic f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Llg/a$a;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Llg/a$a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static synthetic l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic m(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Llg/a$a;->j(Ljava/lang/String;Z)V

    return-void
.end method

.method private final n()Lmg/a;
    .locals 2

    sget-object v0, Lmg/c;->a:Lmg/c$a;

    invoke-virtual {v0}, Lmg/c$a;->d()Lcom/tn/lib/logger/xlog/LogType;

    move-result-object v0

    sget-object v1, Llg/a$a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Log/d;->b:Log/d$a;

    invoke-virtual {v0}, Log/d$a;->a()Log/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Log/b;->b:Log/b$a;

    invoke-virtual {v0}, Log/b$a;->a()Log/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static synthetic q(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Llg/a$a;->o(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method private final s(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final t(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public static synthetic v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic y(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Llg/a$a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static synthetic z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Llg/a$a;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p4, Log/b;->b:Log/b$a;

    invoke-virtual {p4}, Log/b$a;->a()Log/b;

    move-result-object p4

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    invoke-virtual {p3}, [Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Log/b;->f(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    sget-object p4, Log/b;->b:Log/b$a;

    invoke-virtual {p4}, Log/b$a;->a()Log/b;

    move-result-object p4

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    invoke-virtual {p3}, [Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Log/b;->d(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p4

    if-nez p4, :cond_2

    invoke-direct {p0}, Llg/a$a;->n()Lmg/a;

    move-result-object p4

    invoke-static {p4}, Llg/a;->b(Lmg/a;)V

    :cond_2
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    invoke-virtual {p3}, [Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lmg/a;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Llg/a$a;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p3, Log/b;->b:Log/b$a;

    invoke-virtual {p3}, Log/b$a;->a()Log/b;

    move-result-object p3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Log/b;->f(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Log/b;->b:Log/b$a;

    invoke-virtual {p3}, Log/b$a;->a()Log/b;

    move-result-object p3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Log/b;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-direct {p0}, Llg/a$a;->n()Lmg/a;

    move-result-object p3

    invoke-static {p3}, Llg/a;->b(Lmg/a;)V

    :cond_2
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lmg/a;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p2, Log/b;->b:Log/b$a;

    invoke-virtual {p2}, Log/b$a;->a()Log/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Log/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Llg/a$a;->n()Lmg/a;

    move-result-object p2

    invoke-static {p2}, Llg/a;->b(Lmg/a;)V

    :cond_1
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lmg/a;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4}, Llg/a$a;->s(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Log/b;->b:Log/b$a;

    invoke-virtual {p4}, Log/b$a;->a()Log/b;

    move-result-object p4

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    invoke-virtual {p3}, [Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Log/b;->g(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p4

    if-nez p4, :cond_1

    invoke-direct {p0}, Llg/a$a;->n()Lmg/a;

    move-result-object p4

    invoke-static {p4}, Llg/a;->b(Lmg/a;)V

    :cond_1
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    invoke-virtual {p3}, [Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lmg/a;->g(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Llg/a$a;->s(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Log/b;->b:Log/b$a;

    invoke-virtual {p3}, Log/b$a;->a()Log/b;

    move-result-object p3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Log/b;->g(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-direct {p0}, Llg/a$a;->n()Lmg/a;

    move-result-object p3

    invoke-static {p3}, Llg/a;->b(Lmg/a;)V

    :cond_1
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lmg/a;->g(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final j(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p2, Log/b;->b:Log/b$a;

    invoke-virtual {p2}, Log/b$a;->a()Log/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Log/b;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Llg/a$a;->n()Lmg/a;

    move-result-object p2

    invoke-static {p2}, Llg/a;->b(Lmg/a;)V

    :cond_1
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lmg/a;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final o(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p2, Log/b;->b:Log/b$a;

    invoke-virtual {p2}, Log/b$a;->a()Log/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Log/b;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Llg/a$a;->n()Lmg/a;

    move-result-object p2

    invoke-static {p2}, Llg/a;->b(Lmg/a;)V

    :cond_1
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lmg/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final p(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Llg/a$a;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p3, Log/b;->b:Log/b$a;

    invoke-virtual {p3}, Log/b$a;->a()Log/b;

    move-result-object p3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Log/b;->f(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Log/b;->b:Log/b$a;

    invoke-virtual {p3}, Log/b$a;->a()Log/b;

    move-result-object p3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Log/b;->d(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-direct {p0}, Llg/a$a;->n()Lmg/a;

    move-result-object p3

    invoke-static {p3}, Llg/a;->b(Lmg/a;)V

    :cond_2
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lmg/a;->d(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Llg/a$a;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p3, Log/b;->b:Log/b$a;

    invoke-virtual {p3}, Log/b$a;->a()Log/b;

    move-result-object p3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Log/b;->f(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Log/b;->b:Log/b$a;

    invoke-virtual {p3}, Log/b$a;->a()Log/b;

    move-result-object p3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Log/b;->h(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-direct {p0}, Llg/a$a;->n()Lmg/a;

    move-result-object p3

    invoke-static {p3}, Llg/a;->b(Lmg/a;)V

    :cond_2
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lmg/a;->h(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4}, Llg/a$a;->s(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Log/b;->b:Log/b$a;

    invoke-virtual {p4}, Log/b$a;->a()Log/b;

    move-result-object p4

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    invoke-virtual {p3}, [Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Log/b;->f(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p4

    if-nez p4, :cond_1

    invoke-direct {p0}, Llg/a$a;->n()Lmg/a;

    move-result-object p4

    invoke-static {p4}, Llg/a;->b(Lmg/a;)V

    :cond_1
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    invoke-virtual {p3}, [Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lmg/a;->f(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Llg/a$a;->s(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Log/b;->b:Log/b$a;

    invoke-virtual {p3}, Log/b$a;->a()Log/b;

    move-result-object p3

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Log/b;->f(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-direct {p0}, Llg/a$a;->n()Lmg/a;

    move-result-object p3

    invoke-static {p3}, Llg/a;->b(Lmg/a;)V

    :cond_1
    invoke-static {}, Llg/a;->a()Lmg/a;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Llg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lmg/a;->f(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method
