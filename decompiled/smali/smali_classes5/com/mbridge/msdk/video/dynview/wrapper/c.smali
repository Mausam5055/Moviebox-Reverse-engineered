.class public Lcom/mbridge/msdk/video/dynview/wrapper/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILjava/lang/String;)Lcom/mbridge/msdk/video/dynview/c;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEcTemplateId()J

    move-result-wide v1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->F(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    const-string v5, "n_logo"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v7, 0x516

    cmp-long v5, v1, v7

    const-string v7, "template_"

    if-nez v5, :cond_2

    if-ne v3, v6, :cond_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mbridge_reward_end_card_layout_portrait_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mbridge_reward_end_card_layout_landscape_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_2
    if-ne v3, v6, :cond_3

    const-string v1, "mbridge_reward_end_card_layout_portrait"

    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_3
    const-string v1, "mbridge_reward_end_card_layout_landscape"

    goto :goto_2

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-static {v6, v2, v3}, Lcom/mbridge/msdk/foundation/tools/x;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/m0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :cond_4
    invoke-static {}, Lcom/mbridge/msdk/video/dynview/c;->a()Lcom/mbridge/msdk/video/dynview/c$b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/video/dynview/c$b;->c(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Lcom/mbridge/msdk/video/dynview/c$c;->b(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Landroid/content/Context;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->F(Landroid/content/Context;)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mbridge/msdk/video/dynview/c$c;->orientation(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/mbridge/msdk/video/dynview/c$c;->fileDirs(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/mbridge/msdk/video/dynview/c$c;->d(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/mbridge/msdk/video/dynview/c$c;->a(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/mbridge/msdk/video/dynview/c$c;->e(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/video/dynview/c$c;->build()Lcom/mbridge/msdk/video/dynview/c;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewOptionWrapper"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Lcom/mbridge/msdk/video/dynview/c;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/t0;->f(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v4, :cond_1

    :try_start_1
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v4}, Lcom/mbridge/msdk/video/dynview/util/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v4

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    move-result v8

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v10

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    move-object v9, v5

    move v4, v6

    move v8, v7

    move v10, v8

    :goto_0
    if-eqz v8, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v9}, Lcom/mbridge/msdk/foundation/tools/x;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "template_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mbridge/msdk/foundation/tools/m0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    const-string v5, "mbridge_same_choice_one_layout_portrait"

    if-eq v4, v6, :cond_5

    const-string v7, "mbridge_same_choice_one_layout_landscape"

    const/4 v9, 0x2

    if-eq v4, v9, :cond_4

    :try_start_2
    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/util/a;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v5, v7

    move v4, v9

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_1

    :cond_4
    move-object v5, v7

    :cond_5
    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/video/dynview/c;->a()Lcom/mbridge/msdk/video/dynview/c$b;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/mbridge/msdk/video/dynview/c$b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/mbridge/msdk/video/dynview/c$c;->c(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/mbridge/msdk/video/dynview/c$c;->b(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/mbridge/msdk/video/dynview/c$c;->b(F)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/mbridge/msdk/video/dynview/c$c;->a(F)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/mbridge/msdk/video/dynview/c$c;->orientation(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/mbridge/msdk/video/dynview/c$c;->fileDirs(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v10}, Lcom/mbridge/msdk/video/dynview/c$c;->d(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v8}, Lcom/mbridge/msdk/video/dynview/c$c;->a(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/video/dynview/c$c;->build()Lcom/mbridge/msdk/video/dynview/c;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewOptionWrapper"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/video/dynview/c;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "mbridge_reward_layer_floor_bottom"

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->D()I

    move-result v5

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/mbridge/msdk/video/dynview/c;->a()Lcom/mbridge/msdk/video/dynview/c$b;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/video/dynview/c$b;->c(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p2

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Lcom/mbridge/msdk/video/dynview/c$c;->b(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Landroid/content/Context;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Landroid/view/View;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p2

    invoke-interface {p2, v5}, Lcom/mbridge/msdk/video/dynview/c$c;->c(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->F(Landroid/content/Context;)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/mbridge/msdk/video/dynview/c$c;->orientation(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/video/dynview/c$c;->build()Lcom/mbridge/msdk/video/dynview/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewOptionWrapper"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Lcom/mbridge/msdk/video/dynview/c;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/t0;->f(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v5

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    move-result v6

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->F(Landroid/content/Context;)I

    move-result v8

    if-eqz v6, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v7}, Lcom/mbridge/msdk/foundation/tools/x;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "template_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/tools/m0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v4, 0x1

    if-ne v8, v4, :cond_2

    const-string v4, "mbridge_order_layout_list_portrait"

    goto :goto_1

    :cond_2
    const-string v4, "mbridge_order_layout_list_landscape"

    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/video/dynview/c;->a()Lcom/mbridge/msdk/video/dynview/c$b;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mbridge/msdk/video/dynview/c$b;->c(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v4

    const/4 v7, 0x5

    invoke-interface {v4, v7}, Lcom/mbridge/msdk/video/dynview/c$c;->b(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Landroid/content/Context;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/mbridge/msdk/video/dynview/c$c;->b(F)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/mbridge/msdk/video/dynview/c$c;->a(F)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v8}, Lcom/mbridge/msdk/video/dynview/c$c;->orientation(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/mbridge/msdk/video/dynview/c$c;->fileDirs(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/mbridge/msdk/video/dynview/c$c;->d(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/mbridge/msdk/video/dynview/c$c;->a(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/video/dynview/c$c;->build()Lcom/mbridge/msdk/video/dynview/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewOptionWrapper"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-object v0
.end method

.method public b(Landroid/view/View;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/video/dynview/c;
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v3

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    move-object v6, v4

    move v3, v5

    :goto_0
    const-string v7, "ia_tp"

    const/4 v8, -0x5

    invoke-static {v6, v7, v8}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-eqz v3, :cond_3

    const/16 v8, 0x66

    if-eq v3, v8, :cond_3

    const/16 v8, 0xca

    if-ne v3, v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mbridge_reward_layer_floor_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    :goto_1
    const-string v8, "mbridge_reward_layer_floor"

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4, v1, v6}, Lcom/mbridge/msdk/foundation/tools/x;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "template_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mbridge/msdk/foundation/tools/m0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_4
    invoke-static {v6}, Lcom/mbridge/msdk/video/dynview/util/a;->a(Ljava/lang/String;)Z

    move-result v4

    const-string v9, "whs_chn"

    invoke-static {v6, v9}, Lcom/mbridge/msdk/video/dynview/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v9

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v2, v5}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/setting/c;->D()I

    move-result v5

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/mbridge/msdk/video/dynview/c;->a()Lcom/mbridge/msdk/video/dynview/c$b;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/mbridge/msdk/video/dynview/c$b;->c(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lcom/mbridge/msdk/video/dynview/c$c;->b(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Landroid/content/Context;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Landroid/view/View;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/mbridge/msdk/video/dynview/c$c;->c(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/mbridge/msdk/video/dynview/c$c;->f(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->F(Landroid/content/Context;)I

    move-result p1

    invoke-interface {v2, p1}, Lcom/mbridge/msdk/video/dynview/c$c;->orientation(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/mbridge/msdk/video/dynview/c$c;->a(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/mbridge/msdk/video/dynview/c$c;->a(Z)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/mbridge/msdk/video/dynview/c$c;->b(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/mbridge/msdk/video/dynview/c$c;->fileDirs(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/mbridge/msdk/video/dynview/c$c;->d(I)Lcom/mbridge/msdk/video/dynview/c$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/video/dynview/c$c;->build()Lcom/mbridge/msdk/video/dynview/c;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewOptionWrapper"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
