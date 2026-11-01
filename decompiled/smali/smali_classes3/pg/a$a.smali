.class public final Lpg/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/a;
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

    invoke-direct {p0}, Lpg/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-static {}, Lpg/a;->a()Z

    move-result v0

    return v0
.end method

.method public final b()Lpg/b;
    .locals 1

    invoke-static {}, Lpg/a;->b()Lpg/b;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 3

    invoke-virtual {p0}, Lpg/a$a;->b()Lpg/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpg/b;->c()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "net_proxy_tag"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final d()Z
    .locals 2

    invoke-virtual {p0}, Lpg/a$a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lpg/a$a;->b()Lpg/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lpg/b;->d()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public final e(Landroid/app/Application;)V
    .locals 0

    invoke-static {p1}, Lpg/a;->c(Landroid/app/Application;)V

    return-void
.end method

.method public final f(Landroid/app/Application;Lpg/b;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lpg/a$a;->e(Landroid/app/Application;)V

    invoke-virtual {p0, p2}, Lpg/a$a;->i(Lpg/b;)V

    return-void
.end method

.method public final g(Z)V
    .locals 0

    invoke-static {p1}, Lpg/a;->d(Z)V

    return-void
.end method

.method public final h(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lpg/a$a;->g(Z)V

    return-void
.end method

.method public final i(Lpg/b;)V
    .locals 0

    invoke-static {p1}, Lpg/a;->e(Lpg/b;)V

    return-void
.end method
