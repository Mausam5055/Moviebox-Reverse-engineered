.class public final Landroidx/window/layout/t$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/t;
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

    invoke-direct {p0}, Landroidx/window/layout/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/window/layout/t;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/window/layout/t;->c()Landroidx/window/layout/t;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/window/layout/t;->d()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Landroidx/window/layout/t;->c()Landroidx/window/layout/t;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroidx/window/layout/t;->c:Landroidx/window/layout/t$a;

    invoke-virtual {v1, p1}, Landroidx/window/layout/t$a;->b(Landroid/content/Context;)Landroidx/window/layout/n;

    move-result-object p1

    new-instance v1, Landroidx/window/layout/t;

    invoke-direct {v1, p1}, Landroidx/window/layout/t;-><init>(Landroidx/window/layout/n;)V

    invoke-static {v1}, Landroidx/window/layout/t;->e(Landroidx/window/layout/t;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_2
    invoke-static {}, Landroidx/window/layout/t;->c()Landroidx/window/layout/t;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Landroidx/window/layout/n;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/window/layout/SidecarCompat;->f:Landroidx/window/layout/SidecarCompat$a;

    invoke-virtual {v1}, Landroidx/window/layout/SidecarCompat$a;->c()Landroidx/window/core/Version;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/window/layout/t$a;->c(Landroidx/window/core/Version;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/window/layout/SidecarCompat;

    invoke-direct {v1, p1}, Landroidx/window/layout/SidecarCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/window/layout/SidecarCompat;->l()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final c(Landroidx/window/core/Version;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroidx/window/core/Version;->f:Landroidx/window/core/Version$a;

    invoke-virtual {v1}, Landroidx/window/core/Version$a;->a()Landroidx/window/core/Version;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/window/core/Version;->b(Landroidx/window/core/Version;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
