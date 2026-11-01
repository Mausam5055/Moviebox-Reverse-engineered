.class final Lcom/google/common/collect/TreeMultiset$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:Lcom/google/common/collect/TreeMultiset$e;

.field private g:Lcom/google/common/collect/TreeMultiset$e;

.field private h:Lcom/google/common/collect/TreeMultiset$e;

.field private i:Lcom/google/common/collect/TreeMultiset$e;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-void
.end method

.method private A()Lcom/google/common/collect/TreeMultiset$e;
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->r()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->r()I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->H()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->I()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->r()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->I()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    :cond_3
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->H()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0
.end method

.method private B()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->D()V

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-void
.end method

.method private C()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    return-void
.end method

.method private D()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$e;->M(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$e;->M(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-void
.end method

.method private F(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1

    :cond_0
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$e;->F(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1
.end method

.method private G(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1

    :cond_0
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$e;->G(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1
.end method

.method private H()Lcom/google/common/collect/TreeMultiset$e;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget v1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->B()V

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-object v0
.end method

.method private I()Lcom/google/common/collect/TreeMultiset$e;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget v1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->B()V

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-object v0
.end method

.method private L()Lcom/google/common/collect/TreeMultiset$e;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->i:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static M(Lcom/google/common/collect/TreeMultiset$e;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :goto_0
    return-wide v0
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset$e;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/TreeMultiset$e;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/google/common/collect/TreeMultiset$e;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return p0
.end method

.method static synthetic e(Lcom/google/common/collect/TreeMultiset$e;I)I
    .locals 0

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return p1
.end method

.method static synthetic f(Lcom/google/common/collect/TreeMultiset$e;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/common/collect/TreeMultiset$e;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    return p0
.end method

.method static synthetic h(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    return-object p0
.end method

.method static synthetic i(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method static synthetic j(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object p0
.end method

.method static synthetic k(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method static synthetic l(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->h:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method static synthetic n(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->i:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method private p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;
    .locals 2

    new-instance v0, Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {p1, v0, p0}, Lcom/google/common/collect/TreeMultiset;->access$1800(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    const/4 p1, 0x2

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method private q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;
    .locals 2

    new-instance v0, Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/google/common/collect/TreeMultiset;->access$1800(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    const/4 p1, 0x2

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method private r()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$e;

    :goto_0
    return-object p1

    :cond_1
    if-nez v0, :cond_2

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private u()Lcom/google/common/collect/TreeMultiset$e;
    .locals 6

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/TreeMultiset;->access$1900(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget v1, v1, Lcom/google/common/collect/TreeMultiset$e;->e:I

    iget v2, v2, Lcom/google/common/collect/TreeMultiset$e;->e:I

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v2, v1}, Lcom/google/common/collect/TreeMultiset$e;->F(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget v2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {v1}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v2, v1}, Lcom/google/common/collect/TreeMultiset$e;->G(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget v2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {v1}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0
.end method

.method private v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$e;

    :goto_0
    return-object p1

    :cond_1
    if-nez v0, :cond_2

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private static y(Lcom/google/common/collect/TreeMultiset$e;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    :goto_0
    return p0
.end method

.method private z()Lcom/google/common/collect/TreeMultiset$e;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->h:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_0

    aput v1, p4, v1

    return-object p0

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p4, v1

    if-lez p1, :cond_2

    if-lt p3, p1, :cond_1

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p2, p3

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    move-object p1, p0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_5

    aput v1, p4, v1

    return-object p0

    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p4, v1

    if-lez p1, :cond_7

    if-lt p3, p1, :cond_6

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    goto :goto_2

    :cond_6
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_8
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p4, v1

    if-lt p3, p1, :cond_9

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->u()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_9
    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$e;
    .locals 8

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_5

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v2, :cond_1

    aput v1, p5, v1

    if-nez p3, :cond_0

    if-lez p4, :cond_0

    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$e;->p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0

    :cond_1
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$e;->J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p5, v1

    if-ne p1, p3, :cond_4

    if-nez p4, :cond_2

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_0

    :cond_2
    if-lez p4, :cond_3

    if-nez p1, :cond_3

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_3
    :goto_0
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    sub-int/2addr p4, p1

    int-to-long p4, p4

    add-long/2addr p2, p4

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_4
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_5
    if-lez v0, :cond_b

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v2, :cond_7

    aput v1, p5, v1

    if-nez p3, :cond_6

    if-lez p4, :cond_6

    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$e;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p0

    :cond_7
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$e;->J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p5, v1

    if-ne p1, p3, :cond_a

    if-nez p4, :cond_8

    if-eqz p1, :cond_8

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_1

    :cond_8
    if-lez p4, :cond_9

    if-nez p1, :cond_9

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_9
    :goto_1
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    sub-int/2addr p4, p1

    int-to-long p4, p4

    add-long/2addr p2, p4

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_a
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_b
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p5, v1

    if-ne p3, p1, :cond_d

    if-nez p4, :cond_c

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->u()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_c
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    sub-int p1, p4, p1

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput p4, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    :cond_d
    return-object p0
.end method

.method K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_1

    aput v1, p4, v1

    if-lez p3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez p3, :cond_2

    aget p1, p4, v1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_1

    :cond_2
    if-lez p3, :cond_3

    aget p1, p4, v1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_3
    :goto_1
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_4
    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_6

    aput v1, p4, v1

    if-lez p3, :cond_5

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, p0

    :goto_2
    return-object p1

    :cond_6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez p3, :cond_7

    aget p1, p4, v1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_3

    :cond_7
    if-lez p3, :cond_8

    aget p1, p4, v1

    if-nez p1, :cond_8

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_8
    :goto_3
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_9
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p4, v1

    if-nez p3, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->u()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_a
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    sub-int p1, p3, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput p3, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return-object p0
.end method

.method o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;
    .locals 7

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_0

    aput v2, p4, v2

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_0
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    aget p2, p4, v2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_1
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->e:I

    if-ne p1, v3, :cond_2

    move-object p1, p0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_4

    aput v2, p4, v2

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_4
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    aget p2, p4, v2

    if-nez p2, :cond_5

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->e:I

    if-ne p1, v3, :cond_6

    move-object p1, p0

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_7
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p4, v2

    int-to-long p1, p1

    int-to-long v3, p3

    add-long/2addr p1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long p1, p1, v5

    if-gtz p1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method t(Ljava/util/Comparator;Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->t(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->t(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_1
    return v1

    :cond_3
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->w()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->g(Ljava/lang/Object;I)Lcom/google/common/collect/l3$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l3$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method w()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return v0
.end method

.method x()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/m3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
