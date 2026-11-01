.class public Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity__TheRouter__Autowired;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autowiredInject(Ljava/lang/Object;)V
    .locals 15

    const-string v0, "boolean"

    const-string v1, "java.lang.String"

    instance-of v2, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;

    if-eqz v2, :cond_9

    check-cast p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;

    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbg/a;

    :try_start_0
    new-instance v13, Lcom/therouter/router/b;

    const-string v5, "boolean"

    const-string v6, "historyFist"

    const-string v8, ""

    const-string v9, "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity"

    const-string v10, "isHistoryFirst"

    const-string v12, "No desc."

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v0, p0, v13}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_1
    new-instance v4, Lcom/therouter/router/b;

    const-string v7, "boolean"

    const-string v8, "ugc_without_history"

    const-string v10, ""

    const-string v11, "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity"

    const-string v12, "ugcWithoutHistory"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v0, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;->i:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    :try_start_2
    const-string v4, "int"

    new-instance v14, Lcom/therouter/router/b;

    const-string v6, "int"

    const-string v7, "ep"

    const-string v9, ""

    const-string v10, "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity"

    const-string v11, "ep"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v4, p0, v14}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;->f:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    :try_start_3
    new-instance v4, Lcom/therouter/router/b;

    const-string v7, "java.lang.String"

    const-string v8, "collectionId"

    const-string v10, ""

    const-string v11, "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity"

    const-string v12, "collectId"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    iput-object v4, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;->l:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    :try_start_4
    new-instance v4, Lcom/therouter/router/b;

    const-string v7, "java.lang.String"

    const-string v8, "fromOptId"

    const-string v10, ""

    const-string v11, "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity"

    const-string v12, "fromOptId"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    iput-object v4, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;->n:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v4

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    :try_start_5
    new-instance v4, Lcom/therouter/router/b;

    const-string v7, "java.lang.String"

    const-string v8, "id"

    const-string v10, ""

    const-string v11, "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity"

    const-string v12, "ugcVideoId"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    iput-object v4, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;->j:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v4

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_6
    :try_start_6
    new-instance v4, Lcom/therouter/router/b;

    const-string v7, "java.lang.String"

    const-string v8, "ops"

    const-string v10, ""

    const-string v11, "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity"

    const-string v12, "ops"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    iput-object v4, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;->m:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception v4

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_7
    :try_start_7
    new-instance v4, Lcom/therouter/router/b;

    const-string v7, "java.lang.String"

    const-string v8, "subjectId"

    const-string v10, ""

    const-string v11, "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity"

    const-string v12, "subjectId"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_8

    iput-object v4, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;->k:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception v4

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_8
    :try_start_8
    const-string v4, "long"

    new-instance v14, Lcom/therouter/router/b;

    const-string v6, "long"

    const-string v7, "ms"

    const-string v9, ""

    const-string v10, "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity"

    const-string v11, "ms"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v4, p0, v14}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTvListActivity;->g:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method
