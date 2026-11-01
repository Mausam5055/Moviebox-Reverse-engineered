.class public final Lcom/cloud/hisavana/sdk/q3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/q3$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:I

.field private final e:Z

.field private final f:I

.field private final g:Z

.field private final h:I

.field private final i:Lb7/b;

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:D

.field private final o:Z

.field private final p:I

.field private final q:Ljava/lang/String;

.field private r:Z

.field private s:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/q3$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->r:Z

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->h(Lcom/cloud/hisavana/sdk/q3$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/q3;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->k(Lcom/cloud/hisavana/sdk/q3$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->c:Z

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->B(Lcom/cloud/hisavana/sdk/q3$b;)I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/q3;->d:I

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->C(Lcom/cloud/hisavana/sdk/q3$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->e:Z

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->D(Lcom/cloud/hisavana/sdk/q3$b;)I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/q3;->f:I

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->E(Lcom/cloud/hisavana/sdk/q3$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->g:Z

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->F(Lcom/cloud/hisavana/sdk/q3$b;)I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/q3;->h:I

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->G(Lcom/cloud/hisavana/sdk/q3$b;)Lb7/b;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/q3;->i:Lb7/b;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->H(Lcom/cloud/hisavana/sdk/q3$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->j:Z

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->I(Lcom/cloud/hisavana/sdk/q3$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->k:Z

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->n(Lcom/cloud/hisavana/sdk/q3$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->l:Z

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->p(Lcom/cloud/hisavana/sdk/q3$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->m:Z

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->q(Lcom/cloud/hisavana/sdk/q3$b;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/q3;->n:D

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->t(Lcom/cloud/hisavana/sdk/q3$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->o:Z

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->u(Lcom/cloud/hisavana/sdk/q3$b;)I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/q3;->p:I

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->w(Lcom/cloud/hisavana/sdk/q3$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/q3;->v:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->x(Lcom/cloud/hisavana/sdk/q3$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/q3;->q:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->y(Lcom/cloud/hisavana/sdk/q3$b;)I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/q3;->u:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/q3;->a:J

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->z(Lcom/cloud/hisavana/sdk/q3$b;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/q3;->w:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q3$b;->A(Lcom/cloud/hisavana/sdk/q3$b;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/q3;->r:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/q3$b;Lcom/cloud/hisavana/sdk/q3$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/q3;-><init>(Lcom/cloud/hisavana/sdk/q3$b;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/q3;->f:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/q3;->t:I

    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q3;->s:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q3;->v:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/q3;->h:I

    return v0
.end method

.method public f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q3;->s:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;-><init>()V

    :cond_0
    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/q3;->a:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/q3;->d:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q3;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q3;->v:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/q3;->p:I

    return v0
.end method

.method public l()Lb7/b;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q3;->i:Lb7/b;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/q3;->u:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q3;->q:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/q3;->t:I

    return v0
.end method

.method public p()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q3;->w:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->j:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->r:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->e:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->m:Z

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->g:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->c:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->l:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->k:Z

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/q3;->o:Z

    return v0
.end method
