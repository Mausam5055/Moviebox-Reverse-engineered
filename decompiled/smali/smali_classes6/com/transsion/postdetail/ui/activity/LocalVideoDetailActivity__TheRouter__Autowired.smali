.class public Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity__TheRouter__Autowired;
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
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "java.lang.Boolean"

    const-string v2, "java.lang.Integer"

    const-string v3, "java.lang.String"

    instance-of v4, v0, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;

    if-eqz v4, :cond_e

    move-object v4, v0

    check-cast v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;

    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lbg/a;

    :try_start_0
    new-instance v0, Lcom/therouter/router/b;

    const-string v8, "java.lang.Boolean"

    const-string v9, "extra_completed"

    const-string v11, ""

    const-string v12, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v13, "completed"

    const-string v15, "No desc."

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v1, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->h:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_1
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.Boolean"

    const-string v10, "extra_is_series"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "isSeries"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v1, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->i:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    :try_start_2
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.Integer"

    const-string v10, "extra_height"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "videoHeight"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v2, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->k:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    :try_start_3
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.Integer"

    const-string v10, "extra_parent_position"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "parentPosition"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v2, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->m:Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    :try_start_4
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.Integer"

    const-string v10, "extra_position"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "position"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v2, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->n:Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    :try_start_5
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.Integer"

    const-string v10, "extra_width"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "videoWidth"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v2, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->l:Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_6
    :try_start_6
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.String"

    const-string v10, "extra_local_path"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "path"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v3, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->a:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_7
    :try_start_7
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.String"

    const-string v10, "extra_name"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "name"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v3, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->d:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_8
    :try_start_8
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.String"

    const-string v10, "extra_page_from"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "pageFrom"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v3, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->j:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_9
    :try_start_9
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.String"

    const-string v10, "extra_post_id"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "postId"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v3, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->f:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_a
    :try_start_a
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.String"

    const-string v10, "extra_proxy_url"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "proxyUrl"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v3, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->c:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_b
    :try_start_b
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.String"

    const-string v10, "extra_resource_id"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "resourceId"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v3, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->e:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_c
    :try_start_c
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.String"

    const-string v10, "extra_subject_id"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "subjectId"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v3, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->g:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_d
    :try_start_d
    new-instance v0, Lcom/therouter/router/b;

    const-string v9, "java.lang.String"

    const-string v10, "extra_url"

    const-string v12, ""

    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    const-string v14, "url"

    const-string v16, "No desc."

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v6, v3, v4, v0}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->b:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception v0

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_e
    return-void
.end method
