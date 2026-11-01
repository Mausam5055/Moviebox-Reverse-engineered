.class public Lcom/mbridge/msdk/click/e;
.super Lcom/mbridge/msdk/click/f;


# instance fields
.field b:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/mbridge/msdk/click/g;

.field private g:Z

.field private h:Lcom/mbridge/msdk/foundation/same/task/b;

.field private i:Lcom/mbridge/msdk/click/p;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/mbridge/msdk/click/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/click/e;->b:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mbridge/msdk/click/e;->c:I

    iput-object v0, p0, Lcom/mbridge/msdk/click/e;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/click/e;->f:Lcom/mbridge/msdk/click/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/e;->g:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/e;->j:Landroid/os/Handler;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/task/b;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/foundation/same/task/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/e;->h:Lcom/mbridge/msdk/foundation/same/task/b;

    new-instance v0, Lcom/mbridge/msdk/click/p;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/click/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/e;->i:Lcom/mbridge/msdk/click/p;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/e;->g:Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/click/g;)V
    .locals 11

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/e;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/click/e;->f:Lcom/mbridge/msdk/click/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/click/e;->b:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    iget-object v1, p0, Lcom/mbridge/msdk/click/e;->i:Lcom/mbridge/msdk/click/p;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v5

    sget v10, Lcom/mbridge/msdk/click/retry/a;->p:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v10}, Lcom/mbridge/msdk/click/p;->a(Ljava/lang/String;Lcom/mbridge/msdk/click/g;ZLjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZZI)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/click/g;Ljava/lang/String;ZZI)V
    .locals 11

    move-object v0, p0

    move-object v2, p4

    iput-object v2, v0, Lcom/mbridge/msdk/click/e;->d:Ljava/lang/String;

    move-object v3, p3

    iput-object v3, v0, Lcom/mbridge/msdk/click/e;->f:Lcom/mbridge/msdk/click/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mbridge/msdk/click/e;->b:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move/from16 v10, p7

    iput v10, v0, Lcom/mbridge/msdk/click/e;->e:I

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "5"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "6"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v5, v4

    move v4, v1

    goto :goto_1

    :cond_2
    const-string v4, ""

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/mbridge/msdk/click/e;->i:Lcom/mbridge/msdk/click/p;

    move-object v2, p4

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/mbridge/msdk/click/p;->a(Ljava/lang/String;Lcom/mbridge/msdk/click/g;ZLjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZZI)V

    return-void
.end method
