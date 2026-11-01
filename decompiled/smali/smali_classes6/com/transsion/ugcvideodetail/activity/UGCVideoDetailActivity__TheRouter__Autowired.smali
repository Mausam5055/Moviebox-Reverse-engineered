.class public Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity__TheRouter__Autowired;
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
    .locals 14

    const-string v0, "java.lang.String"

    instance-of v1, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    if-eqz v1, :cond_c

    check-cast p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbg/a;

    :try_start_0
    const-string v3, "boolean"

    new-instance v13, Lcom/therouter/router/b;

    const-string v5, "boolean"

    const-string v6, "ugc_without_history"

    const-string v8, ""

    const-string v9, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v10, "withoutHistory"

    const-string v12, "No desc."

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v3, p0, v13}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->s:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_1
    const-string v3, "int"

    new-instance v13, Lcom/therouter/router/b;

    const-string v5, "int"

    const-string v6, "ugc_bottom_fragment_selected"

    const-string v8, ""

    const-string v9, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v10, "bottomFragmentSelected"

    const-string v12, "No desc."

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v3, p0, v13}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->r:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    :try_start_2
    new-instance v3, Lcom/therouter/router/b;

    const-string v6, "java.lang.String"

    const-string v7, "collection_id"

    const-string v9, ""

    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v11, "collectionId"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v0, p0, v3}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->j:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    :try_start_3
    new-instance v3, Lcom/therouter/router/b;

    const-string v6, "java.lang.String"

    const-string v7, "from_opt_id"

    const-string v9, ""

    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v11, "fromOptId"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v0, p0, v3}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->n:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    :try_start_4
    new-instance v3, Lcom/therouter/router/b;

    const-string v6, "java.lang.String"

    const-string v7, "id"

    const-string v9, ""

    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v11, "videoId"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v0, p0, v3}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->i:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    :try_start_5
    new-instance v3, Lcom/therouter/router/b;

    const-string v6, "java.lang.String"

    const-string v7, "ops"

    const-string v9, ""

    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v11, "ops"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v0, p0, v3}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->m:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_6
    :try_start_6
    new-instance v3, Lcom/therouter/router/b;

    const-string v6, "java.lang.String"

    const-string v7, "parent_track_id"

    const-string v9, ""

    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v11, "previousPageTrackId"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v0, p0, v3}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_7

    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->q:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_7
    :try_start_7
    new-instance v3, Lcom/therouter/router/b;

    const-string v6, "java.lang.String"

    const-string v7, "parent_video_id"

    const-string v9, ""

    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v11, "previousPageVideoId"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v0, p0, v3}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->p:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_8
    :try_start_8
    new-instance v3, Lcom/therouter/router/b;

    const-string v6, "java.lang.String"

    const-string v7, "subject_id"

    const-string v9, ""

    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v11, "subjectId"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v0, p0, v3}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_9

    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->k:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_9
    :try_start_9
    new-instance v3, Lcom/therouter/router/b;

    const-string v6, "java.lang.String"

    const-string v7, "tab_id"

    const-string v9, ""

    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v11, "homeTabId"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v0, p0, v3}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_a

    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->t:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_a
    :try_start_a
    new-instance v3, Lcom/therouter/router/b;

    const-string v6, "java.lang.String"

    const-string v7, "ugcCategory"

    const-string v9, ""

    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v11, "type"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v0, p0, v3}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_b

    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->l:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_b

    :catch_a
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_b
    :try_start_b
    new-instance v3, Lcom/therouter/router/b;

    const-string v6, "java.lang.String"

    const-string v7, "videoStyle"

    const-string v9, ""

    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    const-string v11, "pageStyle"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v0, p0, v3}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->o:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v2

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_c
    return-void
.end method
