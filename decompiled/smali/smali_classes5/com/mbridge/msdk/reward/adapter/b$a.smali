.class Lcom/mbridge/msdk/reward/adapter/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/b;->a(Landroid/content/Context;ZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/reward/adapter/b$h;Lcom/mbridge/msdk/reward/adapter/b$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/mbridge/msdk/reward/adapter/b$n;

.field final synthetic i:Lcom/mbridge/msdk/reward/adapter/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/b;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iput p5, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->d:I

    iput-object p6, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    move-object/from16 v1, p0

    const-string v2, "_"

    const-string v3, "RewardCampaignsResourceManager"

    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    move-result-object v0

    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setCampaignList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v5

    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->d:I

    new-instance v0, Lcom/mbridge/msdk/reward/adapter/b$k;

    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    invoke-static {v4}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    move-result-object v11

    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iget-object v14, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    iget-object v15, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->g:Ljava/lang/String;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/mbridge/msdk/reward/adapter/b$k;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/mbridge/msdk/videocommon/download/b;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/mbridge/msdk/videocommon/listener/a;)Lcom/mbridge/msdk/videocommon/download/l;

    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v0

    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/videocommon/download/b;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v4, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v15, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v5, 0x6a

    iput v5, v0, Landroid/os/Message;->what:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "unit_id"

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "request_id"

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "key"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v16

    const-string v14, ".zip"

    const/4 v13, 0x2

    const/4 v12, 0x1

    const-string v11, ""

    const-string v10, "dyview"

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v5

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v12, v15, v5, v0}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v23, v4

    move-object v2, v10

    move-object/from16 v17, v11

    move-object/from16 v27, v14

    goto/16 :goto_6

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "cmpt=1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    invoke-static {v5, v15, v13}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v9

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v8

    new-instance v7, Lcom/mbridge/msdk/reward/adapter/b$l;

    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v19, v2

    :try_start_3
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v20, v11

    :try_start_4
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    move-object/from16 v21, v11

    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/16 v22, 0x35b

    move-object/from16 v23, v5

    move-object v5, v7

    move-object/from16 v24, v7

    move-object/from16 v7, v23

    move-object/from16 v25, v8

    move-object v8, v12

    move-object v12, v9

    move-object v9, v13

    move-object v13, v10

    move-object v10, v15

    move-object/from16 v23, v4

    move-object/from16 v4, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v11

    move/from16 v11, v22

    move-object/from16 v26, v12

    move-object v12, v2

    move-object v2, v13

    move-object/from16 v13, v20

    move-object/from16 v27, v14

    move-object/from16 v14, v21

    :try_start_5
    invoke-direct/range {v5 .. v14}, Lcom/mbridge/msdk/reward/adapter/b$l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILandroid/os/Handler;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    move-object/from16 v14, v26

    invoke-virtual {v5, v14, v0, v6}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_2
    move-object/from16 v17, v4

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v23, v4

    move-object v2, v10

    move-object/from16 v27, v14

    move-object/from16 v4, v20

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_3
    move-object/from16 v23, v4

    move-object v2, v10

    move-object v4, v11

    move-object/from16 v27, v14

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_3

    :goto_4
    sget-boolean v5, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v23, v4

    move-object v2, v10

    move-object v4, v11

    move-object/from16 v27, v14

    move-object v14, v9

    const-string v5, "\u5f00\u59cb\u4e0b\u8f7d html \u7c7b\u578b\u7684 template"

    invoke-static {v3, v5}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v13

    new-instance v12, Lcom/mbridge/msdk/reward/adapter/b$i;

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    move-result-object v17

    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    const/16 v6, 0x35b

    move-object v5, v12

    move-object/from16 v20, v10

    move-object v10, v15

    move-object/from16 v28, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v4

    move-object v4, v13

    move-object/from16 v13, v20

    :try_start_7
    invoke-direct/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b$i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/reward/adapter/b$n;Landroid/os/Handler;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    move-object/from16 v5, v28

    invoke-virtual {v4, v14, v0, v5}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object/from16 v17, v4

    :goto_5
    sget-boolean v4, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_6
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    invoke-static {v11}, Lcom/mbridge/msdk/foundation/tools/t0;->l(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    if-nez v0, :cond_7

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v10, v15

    invoke-static/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    goto :goto_8

    :cond_7
    if-eqz v4, :cond_8

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v10, v15

    invoke-static/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    goto :goto_8

    :cond_8
    invoke-static {v2, v11}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_8
    const-string v0, "ecid"

    invoke-static {v11, v0}, Lcom/mbridge/msdk/foundation/tools/z0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x194

    :goto_7
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v2, v4, v15, v0, v11}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_8
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    const/4 v2, 0x6

    invoke-static {v0, v15, v2}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v2

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->download(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v15}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    :try_start_9
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v2

    new-instance v4, Lcom/mbridge/msdk/reward/adapter/b$j;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    move-result-object v6

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v5, v4

    move-object v11, v15

    invoke-direct/range {v5 .. v11}, Lcom/mbridge/msdk/reward/adapter/b$j;-><init>(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v2, v0, v4}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_9
    invoke-virtual {v15}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    :try_start_a
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v2

    new-instance v4, Lcom/mbridge/msdk/reward/adapter/b$j;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    move-result-object v6

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v5, v4

    move-object v11, v15

    invoke-direct/range {v5 .. v11}, Lcom/mbridge/msdk/reward/adapter/b$j;-><init>(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v2, v0, v4}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_a
    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAabEntity()Lcom/mbridge/msdk/foundation/entity/AabEntity;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAabEntity()Lcom/mbridge/msdk/foundation/entity/AabEntity;

    move-result-object v2

    iget v2, v2, Lcom/mbridge/msdk/foundation/entity/AabEntity;->h3c:I

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    :goto_b
    new-instance v4, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>(Z)V

    invoke-virtual {v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->f(I)V

    move-object/from16 v2, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d zip \u7c7b\u578b\u7684 pause"

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v2

    new-instance v14, Lcom/mbridge/msdk/reward/adapter/b$l;

    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    move-result-object v12

    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    const/16 v17, 0x139

    move-object v5, v14

    move-object v10, v15

    move-object/from16 v18, v11

    move/from16 v11, v17

    move-object/from16 v17, v15

    move-object v15, v14

    move-object/from16 v14, v18

    :try_start_c
    invoke-direct/range {v5 .. v14}, Lcom/mbridge/msdk/reward/adapter/b$l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILandroid/os/Handler;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-virtual {v2, v4, v0, v15}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    move-object/from16 v17, v15

    :goto_c
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_e
    move-object/from16 v17, v15

    :try_start_d
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v2

    new-instance v14, Lcom/mbridge/msdk/reward/adapter/b$i;

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    move-result-object v12

    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v6, 0x139

    move-object v5, v14

    move-object/from16 v10, v17

    invoke-direct/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b$i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/reward/adapter/b$n;Landroid/os/Handler;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-virtual {v2, v4, v0, v14}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_f
    move-object/from16 v17, v15

    :cond_10
    :goto_d
    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c$a;

    if-eqz v0, :cond_11

    iget-object v4, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->a:Ljava/util/List;

    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_11

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    :try_start_e
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v12

    new-instance v13, Lcom/mbridge/msdk/reward/adapter/b$j;

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    move-result-object v6

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v5, v13

    move-object/from16 v11, v17

    invoke-direct/range {v5 .. v11}, Lcom/mbridge/msdk/reward/adapter/b$j;-><init>(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v12, v0, v13}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    sget-boolean v5, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v5, :cond_12

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_13
    move-object/from16 v2, v19

    move-object/from16 v4, v23

    goto/16 :goto_1

    :cond_14
    return-void
.end method
