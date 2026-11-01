.class public Lou/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lou/d$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:J

.field private final j:Ljava/lang/String;

.field private final k:Z

.field private final l:J

.field private final m:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

.field private final n:I

.field private final o:J

.field private final p:Z


# direct methods
.method private constructor <init>(Lou/d$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lou/d$b;->a(Lou/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lou/d;->a:Ljava/lang/String;

    invoke-static {p1}, Lou/d$b;->b(Lou/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lou/d;->b:Ljava/lang/String;

    invoke-static {p1}, Lou/d$b;->i(Lou/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lou/d;->c:Ljava/lang/String;

    invoke-static {p1}, Lou/d$b;->j(Lou/d$b;)I

    move-result v0

    iput v0, p0, Lou/d;->d:I

    invoke-static {p1}, Lou/d$b;->k(Lou/d$b;)I

    move-result v0

    iput v0, p0, Lou/d;->e:I

    invoke-static {p1}, Lou/d$b;->l(Lou/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lou/d;->f:Ljava/lang/String;

    invoke-static {p1}, Lou/d$b;->m(Lou/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lou/d;->g:Ljava/lang/String;

    invoke-static {p1}, Lou/d$b;->n(Lou/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lou/d;->h:Ljava/lang/String;

    invoke-static {p1}, Lou/d$b;->o(Lou/d$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lou/d;->i:J

    invoke-static {p1}, Lou/d$b;->p(Lou/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lou/d;->j:Ljava/lang/String;

    invoke-static {p1}, Lou/d$b;->c(Lou/d$b;)Z

    move-result v0

    iput-boolean v0, p0, Lou/d;->k:Z

    invoke-static {p1}, Lou/d$b;->d(Lou/d$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lou/d;->l:J

    invoke-static {p1}, Lou/d$b;->e(Lou/d$b;)Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lou/d$b;->e(Lou/d$b;)Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->ANY:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    :goto_0
    iput-object v0, p0, Lou/d;->m:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    invoke-static {p1}, Lou/d$b;->f(Lou/d$b;)I

    move-result v0

    iput v0, p0, Lou/d;->n:I

    invoke-static {p1}, Lou/d$b;->g(Lou/d$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lou/d;->o:J

    invoke-static {p1}, Lou/d$b;->h(Lou/d$b;)Z

    move-result p1

    iput-boolean p1, p0, Lou/d;->p:Z

    return-void
.end method

.method synthetic constructor <init>(Lou/d$b;Lou/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lou/d;-><init>(Lou/d$b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lou/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;
    .locals 1

    iget-object v0, p0, Lou/d;->m:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lou/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lou/d;->l:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lou/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lou/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lou/d;->n:I

    return v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lou/d;->o:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lou/d;->i:J

    return-wide v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lou/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lou/d;->e:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lou/d;->d:I

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lou/d;->p:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lou/d;->k:Z

    return v0
.end method
