.class public Lcom/mbridge/msdk/click/q;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public static a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;Lcom/mbridge/msdk/click/entity/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/click/o$f;Ljava/util/concurrent/Semaphore;)V
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p2

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/click/q;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v1, Lcom/mbridge/msdk/click/entity/a;->f:I

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXCEPTION_CAMPAIGN_NOT_ACTIVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setType(I)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Lcom/mbridge/msdk/click/o;

    invoke-direct {v2}, Lcom/mbridge/msdk/click/o;-><init>()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/mbridge/msdk/click/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/click/o$f;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v8, Lcom/mbridge/msdk/click/o;

    invoke-direct {v8}, Lcom/mbridge/msdk/click/o;-><init>()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lcom/mbridge/msdk/click/o;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/click/o$f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewSpiderLoaderDiff"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setType(I)V

    iget-object v2, v1, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    iget v2, v1, Lcom/mbridge/msdk/click/entity/a;->f:I

    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setStatusCode(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/click/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setHeader(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/mbridge/msdk/click/entity/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setContent(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    invoke-static {v1, p0, p1}, Lcom/mbridge/msdk/click/q;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)Z

    :goto_1
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/s0$a;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    :cond_0
    invoke-static {p0}, Lcom/mbridge/msdk/click/q;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    invoke-virtual {p2, p0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    return p1

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    invoke-virtual {p2, p0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
