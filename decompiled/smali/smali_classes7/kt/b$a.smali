.class public final Lkt/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkt/b;
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

    invoke-direct {p0}, Lkt/b$a;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 1

    invoke-static {}, Lkt/b;->a()Lkt/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkt/b$a;->b()Lkt/a;

    move-result-object v0

    invoke-static {v0}, Lkt/b;->b(Lkt/a;)V

    :cond_0
    return-void
.end method

.method private final b()Lkt/a;
    .locals 1

    sget-object v0, Lnt/b;->a:Lnt/b$a;

    invoke-virtual {v0}, Lnt/b$a;->a()Lnt/b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lkt/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V
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

    invoke-virtual/range {v1 .. v6}, Lkt/b$a;->f(ILjava/lang/CharSequence;III)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lnt/b;->a:Lnt/b$a;

    invoke-virtual {v0, p1}, Lnt/b$a;->b(Landroid/app/Application;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    invoke-direct {p0}, Lkt/b$a;->a()V

    invoke-static {}, Lkt/b;->a()Lkt/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkt/a;->a(I)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Lkt/b$a;->a()V

    invoke-static {}, Lkt/b;->a()Lkt/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkt/a;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final f(ILjava/lang/CharSequence;III)V
    .locals 7

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkt/b$a;->a()V

    invoke-static {}, Lkt/b;->a()Lkt/a;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lkt/a;->c(ILjava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method
