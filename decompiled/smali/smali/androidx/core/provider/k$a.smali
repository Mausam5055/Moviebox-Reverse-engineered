.class public Landroidx/core/provider/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/provider/k$a;->a:I

    iput-object p2, p0, Landroidx/core/provider/k$a;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I[Landroidx/core/provider/k$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/provider/k$a;->a:I

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/provider/k$a;->b:Ljava/util/List;

    return-void
.end method

.method static a(ILjava/util/List;)Landroidx/core/provider/k$a;
    .locals 1

    new-instance v0, Landroidx/core/provider/k$a;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/k$a;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method static b(I[Landroidx/core/provider/k$b;)Landroidx/core/provider/k$a;
    .locals 1

    new-instance v0, Landroidx/core/provider/k$a;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/k$a;-><init>(I[Landroidx/core/provider/k$b;)V

    return-object v0
.end method


# virtual methods
.method public c()[Landroidx/core/provider/k$b;
    .locals 2

    iget-object v0, p0, Landroidx/core/provider/k$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/provider/k$b;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/core/provider/k$a;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Landroidx/core/provider/k$a;->a:I

    return v0
.end method

.method f()Z
    .locals 2

    iget-object v0, p0, Landroidx/core/provider/k$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
