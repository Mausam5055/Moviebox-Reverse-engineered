.class public Lcom/mbridge/msdk/tracker/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Lorg/json/JSONObject;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:J

.field private i:Lcom/mbridge/msdk/tracker/h;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/tracker/e;->b:I

    iput v0, p0, Lcom/mbridge/msdk/tracker/e;->c:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mbridge/msdk/tracker/e;->g:J

    const-wide/32 v1, 0x240c8400

    iput-wide v1, p0, Lcom/mbridge/msdk/tracker/e;->h:J

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/e;->j:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/e;->k:Z

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/e;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/tracker/e;->f:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/tracker/e;->g:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/tracker/e;->c:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/tracker/e;->g:J

    return-void
.end method

.method public a(Lcom/mbridge/msdk/tracker/h;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/e;->i:Lcom/mbridge/msdk/tracker/h;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/e;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/e;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/tracker/e;->k:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/tracker/e;->b:I

    return-void
.end method

.method b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/tracker/e;->h:J

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/tracker/e;->c:I

    return v0
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/tracker/e;->f:J

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/e;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/e;->d:Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method public e()Lcom/mbridge/msdk/tracker/h;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/e;->i:Lcom/mbridge/msdk/tracker/h;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/tracker/e;->h:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/tracker/e;->f:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/tracker/e;->b:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/e;->k:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/e;->j:Z

    return v0
.end method
