.class Ls3/k0$a;
.super Ljava/lang/Object;

# interfaces
.implements Ls3/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/util/i0;

.field final synthetic b:Ls3/k0;


# direct methods
.method public constructor <init>(Ls3/k0;)V
    .locals 1

    iput-object p1, p0, Ls3/k0$a;->b:Ls3/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/media3/common/util/i0;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/i0;-><init>([B)V

    iput-object p1, p0, Ls3/k0$a;->a:Landroidx/media3/common/util/i0;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Ls3/k0$a;->a:Landroidx/media3/common/util/i0;

    invoke-virtual {p1, v4, v1}, Landroidx/media3/common/util/j0;->k(Landroidx/media3/common/util/i0;I)V

    iget-object v4, p0, Ls3/k0$a;->a:Landroidx/media3/common/util/i0;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v4

    iget-object v5, p0, Ls3/k0$a;->a:Landroidx/media3/common/util/i0;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/i0;->r(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_2

    iget-object v4, p0, Ls3/k0$a;->a:Landroidx/media3/common/util/i0;

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/i0;->r(I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Ls3/k0$a;->a:Landroidx/media3/common/util/i0;

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v4

    iget-object v5, p0, Ls3/k0$a;->b:Ls3/k0;

    invoke-static {v5}, Ls3/k0;->g(Ls3/k0;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Ls3/k0$a;->b:Ls3/k0;

    invoke-static {v5}, Ls3/k0;->g(Ls3/k0;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Ls3/e0;

    new-instance v7, Ls3/k0$b;

    iget-object v8, p0, Ls3/k0$a;->b:Ls3/k0;

    invoke-direct {v7, v8, v4}, Ls3/k0$b;-><init>(Ls3/k0;I)V

    invoke-direct {v6, v7}, Ls3/e0;-><init>(Ls3/d0;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Ls3/k0$a;->b:Ls3/k0;

    invoke-static {v4}, Ls3/k0;->l(Ls3/k0;)I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Ls3/k0$a;->b:Ls3/k0;

    invoke-static {p1}, Ls3/k0;->m(Ls3/k0;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Ls3/k0$a;->b:Ls3/k0;

    invoke-static {p1}, Ls3/k0;->g(Ls3/k0;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    return-void
.end method

.method public b(Landroidx/media3/common/util/p0;Ll2/t;Ls3/l0$d;)V
    .locals 0

    return-void
.end method
