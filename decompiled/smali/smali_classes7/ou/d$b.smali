.class public final Lou/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lou/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:J

.field private m:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

.field private n:I

.field private o:J

.field private p:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lou/d$b;->k:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lou/d$b;->l:J

    sget-object v3, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->ANY:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    iput-object v3, p0, Lou/d$b;->m:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    iput v0, p0, Lou/d$b;->n:I

    iput-wide v1, p0, Lou/d$b;->o:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lou/d$b;->p:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lou/d$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lou/d$b;->b:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PatchInfo.Builder: patchId must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PatchInfo.Builder: url must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lou/d$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/d$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lou/d$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/d$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lou/d$b;)Z
    .locals 0

    iget-boolean p0, p0, Lou/d$b;->k:Z

    return p0
.end method

.method static synthetic d(Lou/d$b;)J
    .locals 2

    iget-wide v0, p0, Lou/d$b;->l:J

    return-wide v0
.end method

.method static synthetic e(Lou/d$b;)Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;
    .locals 0

    iget-object p0, p0, Lou/d$b;->m:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    return-object p0
.end method

.method static synthetic f(Lou/d$b;)I
    .locals 0

    iget p0, p0, Lou/d$b;->n:I

    return p0
.end method

.method static synthetic g(Lou/d$b;)J
    .locals 2

    iget-wide v0, p0, Lou/d$b;->o:J

    return-wide v0
.end method

.method static synthetic h(Lou/d$b;)Z
    .locals 0

    iget-boolean p0, p0, Lou/d$b;->p:Z

    return p0
.end method

.method static synthetic i(Lou/d$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/d$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lou/d$b;)I
    .locals 0

    iget p0, p0, Lou/d$b;->d:I

    return p0
.end method

.method static synthetic k(Lou/d$b;)I
    .locals 0

    iget p0, p0, Lou/d$b;->e:I

    return p0
.end method

.method static synthetic l(Lou/d$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/d$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lou/d$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/d$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lou/d$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/d$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lou/d$b;)J
    .locals 2

    iget-wide v0, p0, Lou/d$b;->i:J

    return-wide v0
.end method

.method static synthetic p(Lou/d$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lou/d$b;->j:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public q()Lou/d;
    .locals 2

    new-instance v0, Lou/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lou/d;-><init>(Lou/d$b;Lou/d$a;)V

    return-object v0
.end method

.method public r(Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;)Lou/d$b;
    .locals 0

    iput-object p1, p0, Lou/d$b;->m:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    return-object p0
.end method

.method public s(J)Lou/d$b;
    .locals 0

    iput-wide p1, p0, Lou/d$b;->l:J

    return-object p0
.end method

.method public t(Z)Lou/d$b;
    .locals 0

    iput-boolean p1, p0, Lou/d$b;->k:Z

    return-object p0
.end method

.method public u(Ljava/lang/String;)Lou/d$b;
    .locals 0

    iput-object p1, p0, Lou/d$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public v(I)Lou/d$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lou/d$b;->n:I

    return-object p0
.end method

.method public w(J)Lou/d$b;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lou/d$b;->o:J

    return-object p0
.end method

.method public x(J)Lou/d$b;
    .locals 0

    iput-wide p1, p0, Lou/d$b;->i:J

    return-object p0
.end method

.method public y(Ljava/lang/String;)Lou/d$b;
    .locals 0

    iput-object p1, p0, Lou/d$b;->f:Ljava/lang/String;

    return-object p0
.end method
