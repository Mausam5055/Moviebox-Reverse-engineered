.class public final Landroidx/room/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lz3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "b"
.end annotation


# instance fields
.field private final a:Lz3/c;

.field final synthetic b:Landroidx/room/a;


# direct methods
.method public constructor <init>(Landroidx/room/a;Lz3/c;)V
    .locals 1

    const-string v0, "actual"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/a$b;->b:Landroidx/room/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/room/a$b;->a:Lz3/c;

    return-void
.end method

.method public static synthetic a(Landroidx/room/a;Landroidx/room/a$b;Ljava/lang/String;)Lz3/b;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/room/a$b;->c(Landroidx/room/a;Landroidx/room/a$b;Ljava/lang/String;)Lz3/b;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/lang/String;)Lz3/b;
    .locals 3

    new-instance v0, Lx3/b;

    iget-object v1, p0, Landroidx/room/a$b;->b:Landroidx/room/a;

    invoke-static {v1}, Landroidx/room/a;->c(Landroidx/room/a;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/room/a$b;->b:Landroidx/room/a;

    invoke-static {v1}, Landroidx/room/a;->d(Landroidx/room/a;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":memory:"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p1, v1}, Lx3/b;-><init>(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroidx/room/a$b;->b:Landroidx/room/a;

    new-instance v2, Landroidx/room/b;

    invoke-direct {v2, v1, p0, p1}, Landroidx/room/b;-><init>(Landroidx/room/a;Landroidx/room/a$b;Ljava/lang/String;)V

    new-instance v1, Landroidx/room/a$b$a;

    invoke-direct {v1, p1}, Landroidx/room/a$b$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lx3/b;->b(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz3/b;

    return-object p1
.end method

.method private static final c(Landroidx/room/a;Landroidx/room/a$b;Ljava/lang/String;)Lz3/b;
    .locals 1

    invoke-static {p0}, Landroidx/room/a;->d(Landroidx/room/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Landroidx/room/a$b;->a:Lz3/c;

    invoke-interface {p1, p2}, Lz3/c;->open(Ljava/lang/String;)Lz3/b;

    move-result-object p1

    invoke-static {p0}, Landroidx/room/a;->c(Landroidx/room/a;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p2}, Landroidx/room/a;->e(Landroidx/room/a;Z)V

    invoke-static {p0, p1}, Landroidx/room/a;->b(Landroidx/room/a;Lz3/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v0}, Landroidx/room/a;->e(Landroidx/room/a;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v0}, Landroidx/room/a;->e(Landroidx/room/a;Z)V

    throw p1

    :cond_0
    invoke-static {p0, p1}, Landroidx/room/a;->a(Landroidx/room/a;Lz3/b;)V

    :goto_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public open(Ljava/lang/String;)Lz3/b;
    .locals 1

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/a$b;->b:Landroidx/room/a;

    invoke-virtual {v0, p1}, Landroidx/room/a;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/room/a$b;->b(Ljava/lang/String;)Lz3/b;

    move-result-object p1

    return-object p1
.end method
