.class public final Lcom/google/android/exoplayer2/trackselection/e$d$a;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private final N:Landroid/util/SparseArray;

.field private final O:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->N:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->O:Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->a0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->N:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->O:Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->a0()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->a0()V

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/e$d;->S:Lcom/google/android/exoplayer2/trackselection/e$d;

    const/16 v1, 0x3e8

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->D:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->p0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3e9

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->E:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->j0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3ea

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->F:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->k0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3f6

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->G:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->i0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3eb

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->H:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->n0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3ec

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->I:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->f0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3ed

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->J:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->g0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3ee

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->K:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->d0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3f7

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->L:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->e0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3f8

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->M:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->l0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3ef

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->N:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->o0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3f0

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->O:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->t0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    const/16 v1, 0x3f1

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/e$d;->P:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->h0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->N:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->s0(Landroid/os/Bundle;)V

    const/16 v0, 0x3f5

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->b0([I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->O:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/google/android/exoplayer2/trackselection/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/trackselection/e$d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->D:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->A:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->E:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->B:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->F:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->C:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->G:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->D:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->H:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->E:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->I:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->F:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->J:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->G:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->K:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->H:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->L:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->I:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->M:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->J:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->N:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->K:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->O:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->L:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->P:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->M:Z

    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/e$d;->e(Lcom/google/android/exoplayer2/trackselection/e$d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->Z(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->N:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/e$d;->f(Lcom/google/android/exoplayer2/trackselection/e$d;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->O:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/e$d;Lcom/google/android/exoplayer2/trackselection/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;-><init>(Lcom/google/android/exoplayer2/trackselection/e$d;)V

    return-void
.end method

.method static synthetic J(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->H:Z

    return p0
.end method

.method static synthetic K(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->I:Z

    return p0
.end method

.method static synthetic L(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->J:Z

    return p0
.end method

.method static synthetic M(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->K:Z

    return p0
.end method

.method static synthetic N(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->L:Z

    return p0
.end method

.method static synthetic O(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->M:Z

    return p0
.end method

.method static synthetic P(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->N:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic Q(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->O:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic R(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->A:Z

    return p0
.end method

.method static synthetic S(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->B:Z

    return p0
.end method

.method static synthetic T(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->C:Z

    return p0
.end method

.method static synthetic U(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->D:Z

    return p0
.end method

.method static synthetic V(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->E:Z

    return p0
.end method

.method static synthetic W(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->F:Z

    return p0
.end method

.method static synthetic X(Lcom/google/android/exoplayer2/trackselection/e$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->G:Z

    return p0
.end method

.method private static Z(Landroid/util/SparseArray;)Landroid/util/SparseArray;
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

.method private a0()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->A:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->B:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->C:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->D:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->E:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->F:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->G:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->H:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->I:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->J:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->K:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->L:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->M:Z

    return-void
.end method

.method private b0([I)Landroid/util/SparseBooleanArray;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseBooleanArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private s0(Landroid/os/Bundle;)V
    .locals 6

    const/16 v0, 0x3f2

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v2, Lt9/x;->e:Lcom/google/android/exoplayer2/k$a;

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/d;->b(Lcom/google/android/exoplayer2/k$a;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    const/16 v2, 0x3f4

    invoke-static {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/trackselection/e$e;->e:Lcom/google/android/exoplayer2/k$a;

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/d;->c(Lcom/google/android/exoplayer2/k$a;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    :goto_1
    if-eqz v0, :cond_3

    array-length v2, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget v3, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt9/x;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/trackselection/e$e;

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->r0(ILt9/x;Lcom/google/android/exoplayer2/trackselection/e$e;)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public bridge synthetic A()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->Y()Lcom/google/android/exoplayer2/trackselection/e$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic E(Ljava/util/Set;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->m0(Ljava/util/Set;)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic F(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->q0(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic H(IIZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->u0(IIZ)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic I(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->v0(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    move-result-object p1

    return-object p1
.end method

.method public Y()Lcom/google/android/exoplayer2/trackselection/e$d;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/e$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/trackselection/e$d;-><init>(Lcom/google/android/exoplayer2/trackselection/e$d$a;Lcom/google/android/exoplayer2/trackselection/e$a;)V

    return-object v0
.end method

.method protected c0(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->D(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public d0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->H:Z

    return-object p0
.end method

.method public e0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->I:Z

    return-object p0
.end method

.method public f0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->F:Z

    return-object p0
.end method

.method public g0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->G:Z

    return-object p0
.end method

.method public h0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->M:Z

    return-object p0
.end method

.method public i0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->D:Z

    return-object p0
.end method

.method public j0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->B:Z

    return-object p0
.end method

.method public k0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->C:Z

    return-object p0
.end method

.method public l0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->J:Z

    return-object p0
.end method

.method public m0(Ljava/util/Set;)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->E(Ljava/util/Set;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public n0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->E:Z

    return-object p0
.end method

.method public o0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->K:Z

    return-object p0
.end method

.method public p0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->A:Z

    return-object p0
.end method

.method public q0(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->F(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public r0(ILt9/x;Lcom/google/android/exoplayer2/trackselection/e$e;)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->N:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->N:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public t0(Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$d$a;->L:Z

    return-object p0
.end method

.method public u0(IIZ)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->H(IIZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public v0(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/e$d$a;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->I(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method
