.class public Lcom/mbridge/msdk/reward/controller/b;
.super Landroid/os/Handler;


# instance fields
.field private final a:Lcom/mbridge/msdk/reward/controller/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/reward/controller/a;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Landroid/os/Message;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v1

    iget-object v4, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v4}, Lcom/mbridge/msdk/reward/controller/a;->i()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    iget-object v5, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v5}, Lcom/mbridge/msdk/reward/controller/a;->h()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/controller/a;->n()Lcom/mbridge/msdk/reward/adapter/c;

    move-result-object v6

    iget-object v7, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v7}, Lcom/mbridge/msdk/reward/controller/a;->s()Z

    move-result v7

    iget-object v8, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v8}, Lcom/mbridge/msdk/reward/controller/a;->l()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v9}, Lcom/mbridge/msdk/reward/controller/a;->p()Ljava/lang/String;

    move-result-object v13

    iget-object v9, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v9}, Lcom/mbridge/msdk/reward/controller/a;->k()Lcom/mbridge/msdk/reward/controller/a$h;

    move-result-object v9

    iget-object v10, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v10}, Lcom/mbridge/msdk/reward/controller/a;->o()Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v10

    iget-object v11, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v11}, Lcom/mbridge/msdk/reward/controller/a;->r()Z

    move-result v11

    iget-object v12, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v12}, Lcom/mbridge/msdk/reward/controller/a;->g()Lcom/mbridge/msdk/out/MBridgeIds;

    move-result-object v12

    iget-object v14, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v14}, Lcom/mbridge/msdk/reward/controller/a;->t()Z

    move-result v14

    const/4 v15, 0x1

    move/from16 p1, v11

    const/4 v11, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v9, :cond_16

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->h()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    :cond_0
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;)V

    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    :cond_1
    invoke-virtual {v9, v8, v13, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->d(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v6, v11}, Lcom/mbridge/msdk/reward/adapter/c;->g(Z)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->l()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v9, :cond_16

    invoke-virtual {v6, v11}, Lcom/mbridge/msdk/reward/adapter/c;->f(Z)V

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->h()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    :cond_3
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;)V

    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    :cond_4
    invoke-virtual {v9, v8, v13, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->d(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v6, v11}, Lcom/mbridge/msdk/reward/adapter/c;->h(Z)V

    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->g(Z)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->l()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v9, :cond_16

    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->f(Z)V

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->h()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    :cond_6
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;)V

    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    :cond_7
    invoke-virtual {v9, v8, v13, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->d(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->h(Z)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->g(Z)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->l()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v9, :cond_16

    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->f(Z)V

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->h()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    :cond_a
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;)V

    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    :cond_b
    invoke-virtual {v9, v8, v13, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->d(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->h(Z)V

    goto/16 :goto_4

    :sswitch_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v10

    if-eqz v14, :cond_d

    const/16 v1, 0x11f

    :goto_0
    move v12, v1

    goto :goto_1

    :cond_d
    const/16 v1, 0x5e

    goto :goto_0

    :goto_1
    const/4 v14, 0x1

    const/4 v15, 0x1

    const/4 v1, 0x0

    move v2, v11

    move v11, v1

    invoke-virtual/range {v10 .. v15}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v1

    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(ZLcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    goto/16 :goto_4

    :sswitch_2
    if-eqz v10, :cond_16

    if-eqz v7, :cond_16

    if-eqz p1, :cond_e

    iget-object v1, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/reward/controller/a;->a()V

    :cond_e
    invoke-interface {v10, v12}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onLoadSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V

    goto/16 :goto_4

    :sswitch_3
    if-eqz v10, :cond_16

    if-eqz v7, :cond_16

    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_f
    const-string v2, ""

    :goto_2
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->p()Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->p()Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/error/b;->g()Ljava/lang/String;

    move-result-object v2

    :cond_10
    invoke-static {v13}, Lcom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/videocommon/a;->a()V

    if-eqz p1, :cond_11

    iget-object v1, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/reward/controller/a;->a()V

    :cond_11
    invoke-interface {v10, v12, v2}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onVideoLoadFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_4
    if-eqz v10, :cond_16

    if-eqz v7, :cond_16

    if-eqz p1, :cond_12

    iget-object v1, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/reward/controller/a;->a()V

    :cond_12
    invoke-interface {v10, v12}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onVideoLoadSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V

    goto :goto_4

    :sswitch_5
    move v2, v11

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    if-eqz v5, :cond_13

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_13

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v11, v3, 0x1

    goto :goto_3

    :cond_13
    move v11, v2

    :goto_3
    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v2

    if-eqz v6, :cond_14

    invoke-virtual {v6, v4, v11, v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;ZI)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v9, :cond_16

    if-eqz v7, :cond_16

    invoke-virtual {v9, v8, v13, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto :goto_4

    :cond_14
    if-eqz v9, :cond_16

    if-eqz v7, :cond_16

    invoke-static {v13}, Lcom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/videocommon/a;->a()V

    const v2, 0xd6d8a

    const-string v3, "load timeout"

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v2

    if-eqz v1, :cond_15

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    :cond_15
    invoke-virtual {v9, v2, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->a(Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    :cond_16
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0x10 -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
        0xf4629 -> :sswitch_1
        0xf462a -> :sswitch_0
    .end sparse-switch
.end method
