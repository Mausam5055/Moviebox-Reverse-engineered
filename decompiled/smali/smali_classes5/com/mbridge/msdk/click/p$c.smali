.class Lcom/mbridge/msdk/click/p$c;
.super Lcom/mbridge/msdk/foundation/same/task/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/click/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Semaphore;

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Lcom/mbridge/msdk/click/o$f;

.field final synthetic k:Lcom/mbridge/msdk/click/p;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/click/p;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZZI)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/task/a;-><init>()V

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/mbridge/msdk/click/p$c;->a:Ljava/util/concurrent/Semaphore;

    new-instance p1, Lcom/mbridge/msdk/click/p$c$a;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/click/p$c$a;-><init>(Lcom/mbridge/msdk/click/p$c;)V

    iput-object p1, p0, Lcom/mbridge/msdk/click/p$c;->j:Lcom/mbridge/msdk/click/o$f;

    iput-object p2, p0, Lcom/mbridge/msdk/click/p$c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/mbridge/msdk/click/p$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/click/p$c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/click/p$c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/mbridge/msdk/click/p$c;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-boolean p7, p0, Lcom/mbridge/msdk/click/p$c;->g:Z

    iput-boolean p8, p0, Lcom/mbridge/msdk/click/p$c;->h:Z

    iput p9, p0, Lcom/mbridge/msdk/click/p$c;->i:I

    return-void
.end method

.method private a(Ljava/lang/String;ZZLcom/mbridge/msdk/foundation/entity/CampaignEx;I)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    const-string v2, ""

    iget-object v3, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v3}, Lcom/mbridge/msdk/click/p;->e(Lcom/mbridge/msdk/click/p;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/mbridge/msdk/click/p$c;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/mbridge/msdk/setting/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/mbridge/msdk/click/p$c;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v3, v0}, Lcom/mbridge/msdk/click/q;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v3, v0

    new-instance v4, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-direct {v4}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;-><init>()V

    new-instance v5, Lcom/mbridge/msdk/click/i;

    invoke-direct {v5}, Lcom/mbridge/msdk/click/i;-><init>()V

    :try_start_0
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/click/p$c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v0, v2

    move-object v2, v6

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v2

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :goto_2
    const/4 v6, 0x0

    move-object v8, v3

    move v7, v6

    move-object v3, v2

    move-object v2, v0

    :goto_3
    const/16 v0, 0xa

    if-ge v7, v0, :cond_f

    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->c(Lcom/mbridge/msdk/click/p;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_3

    return-object v9

    :cond_3
    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v10, p4

    invoke-virtual {v5, v8, v12, v13, v10}, Lcom/mbridge/msdk/click/i;->a(Ljava/lang/String;ZZLcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;Lcom/mbridge/msdk/click/entity/a;)Lcom/mbridge/msdk/click/entity/a;

    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    const-string v0, "request url is invalided"

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setMsg(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_5

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setType(I)V

    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setHeader(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    if-nez v7, :cond_f

    invoke-static {}, Lcom/mbridge/msdk/click/retry/a;->b()Lcom/mbridge/msdk/click/retry/a;

    move-result-object v7

    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v9, v0, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    iget-object v11, v1, Lcom/mbridge/msdk/click/p$c;->e:Ljava/lang/String;

    move-object/from16 v10, p4

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p5

    invoke-virtual/range {v7 .. v14}, Lcom/mbridge/msdk/click/retry/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;ZZI)V

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget v0, v0, Lcom/mbridge/msdk/click/entity/a;->f:I

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/click/p$c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setIs302Jump(Z)V

    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/click/entity/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v8, v0, Lcom/mbridge/msdk/click/entity/a;->a:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/mbridge/msdk/click/p$c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v8}, Lcom/mbridge/msdk/click/p$c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    move-object v3, v2

    goto :goto_4

    :cond_7
    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    invoke-direct {p0, v8}, Lcom/mbridge/msdk/click/p$c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :try_start_2
    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    invoke-direct {p0, v8}, Lcom/mbridge/msdk/click/p$c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->e(Lcom/mbridge/msdk/click/p;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->b:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/mbridge/msdk/setting/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_b
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v8}, Lcom/mbridge/msdk/click/q;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_d
    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget v0, v0, Lcom/mbridge/msdk/click/entity/a;->f:I

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/click/p$c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/click/entity/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setContent(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    invoke-virtual {v4, v6}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    if-nez v7, :cond_f

    invoke-static {}, Lcom/mbridge/msdk/click/retry/a;->b()Lcom/mbridge/msdk/click/retry/a;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v2}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v2

    iget v2, v2, Lcom/mbridge/msdk/click/entity/a;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v1, Lcom/mbridge/msdk/click/p$c;->e:Ljava/lang/String;

    move-object/from16 v10, p4

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p5

    invoke-virtual/range {v7 .. v14}, Lcom/mbridge/msdk/click/retry/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;ZZI)V

    :cond_f
    :goto_5
    return-object v4
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/p$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/click/p$c;->a()V

    return-void
.end method

.method private a(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/p$c;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/click/p$c;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/s0$a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private b(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x133

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v1}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/click/q;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public cancelTask()V
    .locals 0

    return-void
.end method

.method public pauseTask(Z)V
    .locals 0

    return-void
.end method

.method public runTask()V
    .locals 10

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->b(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->b(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/click/g;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    new-instance v1, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-direct {v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;-><init>()V

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/p$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    iget-object v2, p0, Lcom/mbridge/msdk/click/p$c;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mbridge/msdk/click/p$c;->g:Z

    iget-boolean v4, p0, Lcom/mbridge/msdk/click/p$c;->h:Z

    iget-object v5, p0, Lcom/mbridge/msdk/click/p$c;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v6, p0, Lcom/mbridge/msdk/click/p$c;->i:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/click/p$c;->a(Ljava/lang/String;ZZLcom/mbridge/msdk/foundation/entity/CampaignEx;I)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getExceptionMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->c(Lcom/mbridge/msdk/click/p;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v1}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v1

    iget v1, v1, Lcom/mbridge/msdk/click/entity/a;->f:I

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setStatusCode(I)V

    :cond_4
    iget-object v2, p0, Lcom/mbridge/msdk/click/p$c;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->a(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v3

    iget-object v0, p0, Lcom/mbridge/msdk/click/p$c;->k:Lcom/mbridge/msdk/click/p;

    invoke-static {v0}, Lcom/mbridge/msdk/click/p;->d(Lcom/mbridge/msdk/click/p;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/click/p$c;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/mbridge/msdk/click/p$c;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/mbridge/msdk/click/p$c;->b:Landroid/content/Context;

    iget-object v8, p0, Lcom/mbridge/msdk/click/p$c;->j:Lcom/mbridge/msdk/click/o$f;

    iget-object v9, p0, Lcom/mbridge/msdk/click/p$c;->a:Ljava/util/concurrent/Semaphore;

    invoke-static/range {v2 .. v9}, Lcom/mbridge/msdk/click/q;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;Lcom/mbridge/msdk/click/entity/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/click/o$f;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method
