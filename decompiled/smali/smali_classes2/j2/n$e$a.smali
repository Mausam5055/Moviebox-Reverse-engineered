.class public final Lj2/n$e$a;
.super Landroidx/media3/common/h0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/n$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private final U:Landroid/util/SparseArray;

.field private final V:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/common/h0$c;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lj2/n$e$a;->U:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lj2/n$e$a;->V:Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Lj2/n$e$a;->k0()V

    return-void
.end method

.method private constructor <init>(Lj2/n$e;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/media3/common/h0$c;-><init>(Landroidx/media3/common/h0;)V

    iget-boolean v0, p1, Lj2/n$e;->p0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->F:Z

    iget-boolean v0, p1, Lj2/n$e;->q0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->G:Z

    iget-boolean v0, p1, Lj2/n$e;->r0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->H:Z

    iget-boolean v0, p1, Lj2/n$e;->s0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->I:Z

    iget-boolean v0, p1, Lj2/n$e;->t0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->J:Z

    iget-boolean v0, p1, Lj2/n$e;->u0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->K:Z

    iget-boolean v0, p1, Lj2/n$e;->v0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->L:Z

    iget-boolean v0, p1, Lj2/n$e;->w0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->M:Z

    iget-boolean v0, p1, Lj2/n$e;->x0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->N:Z

    iget-boolean v0, p1, Lj2/n$e;->y0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->O:Z

    iget-boolean v0, p1, Lj2/n$e;->z0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->P:Z

    iget-boolean v0, p1, Lj2/n$e;->A0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->Q:Z

    iget-boolean v0, p1, Lj2/n$e;->B0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->R:Z

    iget-boolean v0, p1, Lj2/n$e;->C0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->S:Z

    iget-boolean v0, p1, Lj2/n$e;->D0:Z

    iput-boolean v0, p0, Lj2/n$e$a;->T:Z

    invoke-static {p1}, Lj2/n$e;->b(Lj2/n$e;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lj2/n$e$a;->j0(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lj2/n$e$a;->U:Landroid/util/SparseArray;

    invoke-static {p1}, Lj2/n$e;->c(Lj2/n$e;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lj2/n$e$a;->V:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lj2/n$e;Lj2/n$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lj2/n$e$a;-><init>(Lj2/n$e;)V

    return-void
.end method

.method static synthetic Q(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->F:Z

    return p0
.end method

.method static synthetic R(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->G:Z

    return p0
.end method

.method static synthetic S(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->H:Z

    return p0
.end method

.method static synthetic T(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->I:Z

    return p0
.end method

.method static synthetic U(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->J:Z

    return p0
.end method

.method static synthetic V(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->K:Z

    return p0
.end method

.method static synthetic W(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->L:Z

    return p0
.end method

.method static synthetic X(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->M:Z

    return p0
.end method

.method static synthetic Y(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->N:Z

    return p0
.end method

.method static synthetic Z(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->O:Z

    return p0
.end method

.method static synthetic a0(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->P:Z

    return p0
.end method

.method static synthetic b0(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->Q:Z

    return p0
.end method

.method static synthetic c0(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->R:Z

    return p0
.end method

.method static synthetic d0(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->S:Z

    return p0
.end method

.method static synthetic e0(Lj2/n$e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj2/n$e$a;->T:Z

    return p0
.end method

.method static synthetic f0(Lj2/n$e$a;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lj2/n$e$a;->U:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic g0(Lj2/n$e$a;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lj2/n$e$a;->V:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private static j0(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private k0()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj2/n$e$a;->F:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lj2/n$e$a;->G:Z

    iput-boolean v0, p0, Lj2/n$e$a;->H:Z

    iput-boolean v1, p0, Lj2/n$e$a;->I:Z

    iput-boolean v0, p0, Lj2/n$e$a;->J:Z

    iput-boolean v1, p0, Lj2/n$e$a;->K:Z

    iput-boolean v1, p0, Lj2/n$e$a;->L:Z

    iput-boolean v1, p0, Lj2/n$e$a;->M:Z

    iput-boolean v1, p0, Lj2/n$e$a;->N:Z

    iput-boolean v0, p0, Lj2/n$e$a;->O:Z

    iput-boolean v0, p0, Lj2/n$e$a;->P:Z

    iput-boolean v0, p0, Lj2/n$e$a;->Q:Z

    iput-boolean v1, p0, Lj2/n$e$a;->R:Z

    iput-boolean v0, p0, Lj2/n$e$a;->S:Z

    iput-boolean v1, p0, Lj2/n$e$a;->T:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic F()Landroidx/media3/common/h0;
    .locals 1

    invoke-virtual {p0}, Lj2/n$e$a;->h0()Lj2/n$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic G(I)Landroidx/media3/common/h0$c;
    .locals 0

    invoke-virtual {p0, p1}, Lj2/n$e$a;->i0(I)Lj2/n$e$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic K(I)Landroidx/media3/common/h0$c;
    .locals 0

    invoke-virtual {p0, p1}, Lj2/n$e$a;->m0(I)Lj2/n$e$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic L(Landroidx/media3/common/g0;)Landroidx/media3/common/h0$c;
    .locals 0

    invoke-virtual {p0, p1}, Lj2/n$e$a;->n0(Landroidx/media3/common/g0;)Lj2/n$e$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic M(Ljava/lang/String;)Landroidx/media3/common/h0$c;
    .locals 0

    invoke-virtual {p0, p1}, Lj2/n$e$a;->o0(Ljava/lang/String;)Lj2/n$e$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic N([Ljava/lang/String;)Landroidx/media3/common/h0$c;
    .locals 0

    invoke-virtual {p0, p1}, Lj2/n$e$a;->p0([Ljava/lang/String;)Lj2/n$e$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic O(I)Landroidx/media3/common/h0$c;
    .locals 0

    invoke-virtual {p0, p1}, Lj2/n$e$a;->q0(I)Lj2/n$e$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(IZ)Landroidx/media3/common/h0$c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj2/n$e$a;->r0(IZ)Lj2/n$e$a;

    move-result-object p1

    return-object p1
.end method

.method public h0()Lj2/n$e;
    .locals 2

    new-instance v0, Lj2/n$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj2/n$e;-><init>(Lj2/n$e$a;Lj2/n$a;)V

    return-object v0
.end method

.method public i0(I)Lj2/n$e$a;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/h0$c;->G(I)Landroidx/media3/common/h0$c;

    return-object p0
.end method

.method protected l0(Landroidx/media3/common/h0;)Lj2/n$e$a;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/h0$c;->J(Landroidx/media3/common/h0;)Landroidx/media3/common/h0$c;

    return-object p0
.end method

.method public m0(I)Lj2/n$e$a;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/h0$c;->K(I)Landroidx/media3/common/h0$c;

    return-object p0
.end method

.method public n0(Landroidx/media3/common/g0;)Lj2/n$e$a;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/h0$c;->L(Landroidx/media3/common/g0;)Landroidx/media3/common/h0$c;

    return-object p0
.end method

.method public o0(Ljava/lang/String;)Lj2/n$e$a;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/h0$c;->M(Ljava/lang/String;)Landroidx/media3/common/h0$c;

    return-object p0
.end method

.method public varargs p0([Ljava/lang/String;)Lj2/n$e$a;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/h0$c;->N([Ljava/lang/String;)Landroidx/media3/common/h0$c;

    return-object p0
.end method

.method public q0(I)Lj2/n$e$a;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/h0$c;->O(I)Landroidx/media3/common/h0$c;

    return-object p0
.end method

.method public r0(IZ)Lj2/n$e$a;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/common/h0$c;->P(IZ)Landroidx/media3/common/h0$c;

    return-object p0
.end method
