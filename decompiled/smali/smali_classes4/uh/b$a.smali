.class public final Luh/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luh/b;
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

    invoke-direct {p0}, Luh/b$a;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 1

    invoke-static {}, Luh/b;->a()Luh/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Luh/b$a;->b()Luh/a;

    move-result-object v0

    invoke-static {v0}, Luh/b;->b(Luh/a;)V

    :cond_0
    return-void
.end method

.method private final b()Luh/a;
    .locals 1

    sget-object v0, Lxh/b;->a:Lxh/b$a;

    invoke-virtual {v0}, Lxh/b$a;->a()Lxh/b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Luh/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, p5

    :goto_2
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Luh/b$a;->g(ILjava/lang/CharSequence;III)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lxh/b;->a:Lxh/b$a;

    invoke-virtual {v0, p1}, Lxh/b$a;->b(Landroid/app/Application;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    invoke-direct {p0}, Luh/b$a;->a()V

    invoke-static {}, Luh/b;->a()Luh/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Luh/a;->a(I)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Luh/b$a;->a()V

    invoke-static {}, Luh/b;->a()Luh/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Luh/a;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0}, Luh/b$a;->a()V

    invoke-static {}, Luh/b;->a()Luh/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Luh/a;->d(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method public final g(ILjava/lang/CharSequence;III)V
    .locals 7

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Luh/b$a;->a()V

    invoke-static {}, Luh/b;->a()Luh/a;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Luh/a;->c(ILjava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method
