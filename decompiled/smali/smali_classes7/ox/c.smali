.class public final Lox/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lox/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lox/c;

    invoke-direct {v0}, Lox/c;-><init>()V

    sput-object v0, Lox/c;->a:Lox/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lox/b;->a:Lox/b$a;

    invoke-virtual {v0}, Lox/b$a;->c()Lox/b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lox/b$b;->a(Lox/b;ZILjava/lang/Object;)V

    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-static {v0, v1, v2, v3}, Lox/e$b;->a(Lox/e;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lox/b;->a:Lox/b$a;

    invoke-virtual {v0}, Lox/b$a;->c()Lox/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lox/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lox/e;->b(Ljava/lang/String;)Z

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

.method public final c(Lcom/transsion/player/orplayer/g;)Z
    .locals 1

    sget-object v0, Lox/b;->a:Lox/b$a;

    invoke-virtual {v0}, Lox/b$a;->c()Lox/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lox/b;->c(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lox/e;->f(Lcom/transsion/player/orplayer/g;)Z

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

.method public final d()Z
    .locals 1

    sget-object v0, Lox/b;->a:Lox/b$a;

    invoke-virtual {v0}, Lox/b$a;->c()Lox/b;

    move-result-object v0

    invoke-interface {v0}, Lox/b;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-interface {v0}, Lox/e;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
