.class public final Ly1/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/p;

.field private final b:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroidx/media3/common/p;Landroid/util/SparseArray;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/c$b;->a:Landroidx/media3/common/p;

    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroidx/media3/common/p;->d()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/p;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroidx/media3/common/p;->c(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/c$a;

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/c$a;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Ly1/c$b;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget-object v0, p0, Ly1/c$b;->a:Landroidx/media3/common/p;

    invoke-virtual {v0, p1}, Landroidx/media3/common/p;->a(I)Z

    move-result p1

    return p1
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Ly1/c$b;->a:Landroidx/media3/common/p;

    invoke-virtual {v0, p1}, Landroidx/media3/common/p;->c(I)I

    move-result p1

    return p1
.end method

.method public c(I)Ly1/c$a;
    .locals 1

    iget-object v0, p0, Ly1/c$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly1/c$a;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly1/c$a;

    return-object p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Ly1/c$b;->a:Landroidx/media3/common/p;

    invoke-virtual {v0}, Landroidx/media3/common/p;->d()I

    move-result v0

    return v0
.end method
