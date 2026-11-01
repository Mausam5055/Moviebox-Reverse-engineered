.class public final Li3/t;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/t;


# instance fields
.field private final a:Ll2/t;

.field private final b:Li3/s$a;

.field private final c:Landroid/util/SparseArray;

.field private d:Z


# direct methods
.method public constructor <init>(Ll2/t;Li3/s$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/t;->a:Ll2/t;

    iput-object p2, p0, Li3/t;->b:Li3/s$a;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Li3/t;->c:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 3

    iget-object v0, p0, Li3/t;->a:Ll2/t;

    invoke-interface {v0}, Ll2/t;->endTracks()V

    iget-boolean v0, p0, Li3/t;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li3/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Li3/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li3/v;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Li3/v;->l(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Ll2/m0;)V
    .locals 1

    iget-object v0, p0, Li3/t;->a:Ll2/t;

    invoke-interface {v0, p1}, Ll2/t;->f(Ll2/m0;)V

    return-void
.end method

.method public track(II)Ll2/s0;
    .locals 2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Li3/t;->d:Z

    iget-object v0, p0, Li3/t;->a:Ll2/t;

    invoke-interface {v0, p1, p2}, Ll2/t;->track(II)Ll2/s0;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Li3/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li3/v;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Li3/v;

    iget-object v1, p0, Li3/t;->a:Ll2/t;

    invoke-interface {v1, p1, p2}, Ll2/t;->track(II)Ll2/s0;

    move-result-object p2

    iget-object v1, p0, Li3/t;->b:Li3/s$a;

    invoke-direct {v0, p2, v1}, Li3/v;-><init>(Ll2/s0;Li3/s$a;)V

    iget-object p2, p0, Li3/t;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method
