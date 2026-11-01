.class public final Lmg/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmg/c$a$a;
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

    invoke-direct {p0}, Lmg/c$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lq7/b;)Lq7/b;
    .locals 0

    invoke-static {p0}, Lmg/c$a;->j(Lq7/b;)Lq7/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lmg/c$a;Landroid/app/Application;Lcom/tn/lib/logger/xlog/LogType;ZLjava/lang/String;JILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const-string p4, ""

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const-wide/16 p5, 0x0

    :cond_1
    move-wide v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lmg/c$a;->f(Landroid/app/Application;Lcom/tn/lib/logger/xlog/LogType;ZLjava/lang/String;J)V

    return-void
.end method

.method private final h(Ljava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmg/c$a;->i(Ljava/lang/String;JZ)V

    return-void
.end method

.method private final i(Ljava/lang/String;JZ)V
    .locals 3

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p0}, Lmg/c$a;->b()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmg/c$a;->c(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    new-instance v0, Lq7/a$a;

    invoke-direct {v0}, Lq7/a$a;-><init>()V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lq7/a$a;->B(I)Lq7/a$a;

    move-result-object v0

    const-string v1, "X-LOG"

    invoke-virtual {v0, v1}, Lq7/a$a;->E(Ljava/lang/String;)Lq7/a$a;

    move-result-object v0

    new-instance v1, Lu7/a;

    invoke-direct {v1}, Lu7/a;-><init>()V

    invoke-virtual {v0, v1}, Lq7/a$a;->A(Lu7/b;)Lq7/a$a;

    move-result-object v0

    new-instance v1, Lx7/a;

    invoke-direct {v1}, Lx7/a;-><init>()V

    invoke-virtual {v0, v1}, Lq7/a$a;->H(Lx7/b;)Lq7/a$a;

    move-result-object v0

    new-instance v1, Lw7/a;

    invoke-direct {v1}, Lw7/a;-><init>()V

    invoke-virtual {v0, v1}, Lq7/a$a;->G(Lw7/b;)Lq7/a$a;

    move-result-object v0

    new-instance v1, Lng/b;

    invoke-direct {v1}, Lng/b;-><init>()V

    invoke-virtual {v0, v1}, Lq7/a$a;->F(Lz7/b;)Lq7/a$a;

    move-result-object v0

    new-instance v1, Ly7/a;

    invoke-direct {v1}, Ly7/a;-><init>()V

    invoke-virtual {v0, v1}, Lq7/a$a;->D(Ly7/b;)Lq7/a$a;

    move-result-object v0

    new-instance v1, Lt7/b;

    invoke-direct {v1}, Lt7/b;-><init>()V

    invoke-virtual {v0, v1}, Lq7/a$a;->q(Lt7/a;)Lq7/a$a;

    move-result-object v0

    new-instance v1, Lmg/b;

    invoke-direct {v1}, Lmg/b;-><init>()V

    invoke-virtual {v0, v1}, Lq7/a$a;->p(La8/a;)Lq7/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a$a;->r()Lq7/a;

    move-result-object v0

    new-instance v1, Le8/a;

    invoke-direct {v1}, Le8/a;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lcom/elvishew/xlog/printer/file/FilePrinter$b;

    invoke-direct {v2, p1}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;-><init>(Ljava/lang/String;)V

    new-instance p1, Lng/a;

    invoke-direct {p1}, Lng/a;-><init>()V

    invoke-virtual {v2, p1}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->d(Lh8/b;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;

    move-result-object p1

    new-instance v2, Lf8/d;

    invoke-direct {v2}, Lf8/d;-><init>()V

    invoke-virtual {p1, v2}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->a(Lf8/b;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;

    move-result-object p1

    new-instance v2, Lng/c;

    invoke-direct {v2}, Lng/c;-><init>()V

    invoke-virtual {p1, v2}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->c(Lg8/a;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;

    move-result-object p1

    new-instance v2, Lr7/a;

    invoke-direct {v2}, Lr7/a;-><init>()V

    invoke-virtual {p1, v2}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->f(Lr7/c;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->b()Lcom/elvishew/xlog/printer/file/FilePrinter;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p4, :cond_3

    if-nez p1, :cond_2

    new-array p1, p3, [Le8/c;

    aput-object v1, p1, p2

    invoke-static {v0, p1}, Lq7/e;->f(Lq7/a;[Le8/c;)V

    goto :goto_2

    :cond_2
    const/4 p4, 0x2

    new-array p4, p4, [Le8/c;

    aput-object v1, p4, p2

    aput-object p1, p4, p3

    invoke-static {v0, p4}, Lq7/e;->f(Lq7/a;[Le8/c;)V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    invoke-static {v0}, Lq7/e;->e(Lq7/a;)V

    goto :goto_2

    :cond_4
    new-array p3, p3, [Le8/c;

    aput-object p1, p3, p2

    invoke-static {v0, p3}, Lq7/e;->f(Lq7/a;[Le8/c;)V

    :goto_2
    return-void
.end method

.method private static final j(Lq7/b;)Lq7/b;
    .locals 0

    return-object p0
.end method

.method private final k()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b()Landroid/app/Application;
    .locals 1

    invoke-static {}, Lmg/c;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/app/Application;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lmg/c$a;->k()Z

    move-result v0

    const-string v1, "log"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u65e5\u5fd7\u5e93\u4f20\u5165Application\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Lcom/tn/lib/logger/xlog/LogType;
    .locals 1

    invoke-static {}, Lmg/c;->b()Lcom/tn/lib/logger/xlog/LogType;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    invoke-static {}, Lmg/c;->c()Z

    move-result v0

    return v0
.end method

.method public final f(Landroid/app/Application;Lcom/tn/lib/logger/xlog/LogType;ZLjava/lang/String;J)V
    .locals 4

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lmg/c;->a:Lmg/c$a;

    invoke-virtual {v0}, Lmg/c$a;->b()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lmg/c;->f(Lcom/tn/lib/logger/xlog/LogType;)V

    const/4 v1, 0x1

    if-nez p3, :cond_2

    const-string v2, "oneroom_logger"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lmg/c;->e(Z)V

    invoke-virtual {v0, p1}, Lmg/c$a;->l(Landroid/app/Application;)V

    sget-object p1, Lmg/c$a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v1, :cond_4

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    invoke-direct {p0, p4, p5, p6, p3}, Lmg/c$a;->i(Ljava/lang/String;JZ)V

    goto :goto_2

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    invoke-direct {p0, p4, p5, p6, p3}, Lmg/c$a;->h(Ljava/lang/String;JZ)V

    :goto_2
    return-void
.end method

.method public final l(Landroid/app/Application;)V
    .locals 0

    invoke-static {p1}, Lmg/c;->d(Landroid/app/Application;)V

    return-void
.end method
