.class public Ly5/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:D

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:D

.field private l:I

.field private m:I

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Ly5/b;->n:F

    const/4 v0, 0x0

    iput v0, p0, Ly5/b;->o:I

    iput v0, p0, Ly5/b;->p:I

    iput v0, p0, Ly5/b;->q:I

    iput v0, p0, Ly5/b;->r:I

    const v0, 0x4b000

    iput v0, p0, Ly5/b;->s:I

    const/4 v0, 0x1

    iput v0, p0, Ly5/b;->t:I

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Ly5/b;->r:I

    return v0
.end method

.method public B()Z
    .locals 1

    iget v0, p0, Ly5/b;->q:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Ly5/b;->a:I

    return v0
.end method

.method public D(I)V
    .locals 0

    iput p1, p0, Ly5/b;->a:I

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly5/b;->f:Ljava/lang/String;

    return-void
.end method

.method public F()I
    .locals 1

    iget v0, p0, Ly5/b;->p:I

    return v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly5/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly5/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lw5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly5/b;->j:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ly5/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly5/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public I(I)V
    .locals 0

    iput p1, p0, Ly5/b;->p:I

    return-void
.end method

.method public J()I
    .locals 1

    iget v0, p0, Ly5/b;->q:I

    return v0
.end method

.method public K()D
    .locals 2

    iget-wide v0, p0, Ly5/b;->d:D

    return-wide v0
.end method

.method public L(I)V
    .locals 0

    iput p1, p0, Ly5/b;->q:I

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly5/b;->j:Ljava/lang/String;

    return-void
.end method

.method public N()I
    .locals 1

    iget v0, p0, Ly5/b;->t:I

    return v0
.end method

.method public a()F
    .locals 1

    iget v0, p0, Ly5/b;->n:F

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Ly5/b;->o:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ly5/b;->m:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Ly5/b;->m:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly5/b;->h:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly5/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Ly5/b;->c:J

    return-wide v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Ly5/b;->s:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly5/b;->i:Ljava/lang/String;

    return-void
.end method

.method public j()D
    .locals 2

    iget-wide v0, p0, Ly5/b;->k:D

    return-wide v0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Ly5/b;->r:I

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Ly5/b;->o:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Ly5/b;->l:I

    return v0
.end method

.method public n(D)V
    .locals 0

    iput-wide p1, p0, Ly5/b;->d:D

    return-void
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Ly5/b;->l:I

    return-void
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Ly5/b;->c:J

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly5/b;->e:Ljava/lang/String;

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly5/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public s(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ly5/b;->t:I

    return-void
.end method

.method public t()I
    .locals 1

    iget v0, p0, Ly5/b;->b:I

    return v0
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Ly5/b;->b:I

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly5/b;->g:Ljava/lang/String;

    return-void
.end method

.method public w()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cover_height"

    invoke-virtual {p0}, Ly5/b;->C()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cover_url"

    invoke-virtual {p0}, Ly5/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cover_width"

    invoke-virtual {p0}, Ly5/b;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "endcard"

    invoke-virtual {p0}, Ly5/b;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "file_hash"

    invoke-virtual {p0}, Ly5/b;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "resolution"

    invoke-virtual {p0}, Ly5/b;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    invoke-virtual {p0}, Ly5/b;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "video_duration"

    invoke-virtual {p0}, Ly5/b;->K()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "video_url"

    invoke-virtual {p0}, Ly5/b;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playable_download_url"

    invoke-virtual {p0}, Ly5/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "if_playable_loading_show"

    invoke-virtual {p0}, Ly5/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "remove_loading_page_type"

    invoke-virtual {p0}, Ly5/b;->F()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fallback_endcard_judge"

    invoke-virtual {p0}, Ly5/b;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "video_preload_size"

    invoke-virtual {p0}, Ly5/b;->y()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "reward_video_cached_type"

    invoke-virtual {p0}, Ly5/b;->J()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "execute_cached_type"

    invoke-virtual {p0}, Ly5/b;->A()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "endcard_render"

    invoke-virtual {p0}, Ly5/b;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "replay_time"

    invoke-virtual {p0}, Ly5/b;->N()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "play_speed_ratio"

    invoke-virtual {p0}, Ly5/b;->a()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p0}, Ly5/b;->j()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const-string v1, "start"

    invoke-virtual {p0}, Ly5/b;->j()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly5/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public y()I
    .locals 4

    iget v0, p0, Ly5/b;->s:I

    if-gez v0, :cond_0

    const v0, 0x4b000

    iput v0, p0, Ly5/b;->s:I

    :cond_0
    iget v0, p0, Ly5/b;->s:I

    int-to-long v0, v0

    iget-wide v2, p0, Ly5/b;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    long-to-int v0, v2

    iput v0, p0, Ly5/b;->s:I

    :cond_1
    iget v0, p0, Ly5/b;->s:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly5/b;->h:Ljava/lang/String;

    return-object v0
.end method
