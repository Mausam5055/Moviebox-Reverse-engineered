.class public Lcom/transsion/postdetail/ui/activity/PostDetailActivity__TheRouter__Autowired;
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

    instance-of v2, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;

    if-eqz v2, :cond_b

    check-cast p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;

    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbg/a;

    :try_start_0
    new-instance v13, Lcom/therouter/router/b;

    const-string v5, "boolean"

    const-string v6, "from_comment"

    const-string v8, ""

    const-string v9, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    const-string v10, "fromComment"

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

    iput-boolean v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->l:Z
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

    const-string v8, "need_back_to_room"

    const-string v10, ""

    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    const-string v12, "needBackToRoom"

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

    iput-boolean v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->s:Z
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
    new-instance v4, Lcom/therouter/router/b;

    const-string v7, "boolean"

    const-string v8, "video_load_more"

    const-string v10, ""

    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    const-string v12, "videoLoadMore"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v0, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->o:Z
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
    const-string v4, "com.transsion.moviedetailapi.bean.PostSubjectItem"

    new-instance v14, Lcom/therouter/router/b;

    const-string v6, "com.transsion.moviedetailapi.bean.PostSubjectItem"

    const-string v7, "item_object"

    const-string v9, ""

    const-string v10, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    const-string v11, "itemObject"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v4, p0, v14}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v4, :cond_4

    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->q:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
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
    const-string v4, "int"

    new-instance v14, Lcom/therouter/router/b;

    const-string v6, "int"

    const-string v7, "tab_id"

    const-string v9, ""

    const-string v10, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    const-string v11, "tabId"

    const-string v13, "No desc."

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v4, p0, v14}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->n:I
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

    const-string v8, "comment_id"

    const-string v10, ""

    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    const-string v12, "commentId"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->r:Ljava/lang/String;
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

    const-string v8, "id"

    const-string v10, ""

    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    const-string v12, "postId"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->j:Ljava/lang/String;
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

    const-string v8, "item_type"

    const-string v10, ""

    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    const-string v12, "itemType"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_8

    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->k:Ljava/lang/String;
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
    new-instance v4, Lcom/therouter/router/b;

    const-string v7, "java.lang.String"

    const-string v8, "media_type"

    const-string v10, ""

    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    const-string v12, "mediaType"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->i:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    move-exception v4

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_9
    :try_start_9
    new-instance v4, Lcom/therouter/router/b;

    const-string v7, "java.lang.String"

    const-string v8, "page_from"

    const-string v10, ""

    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    const-string v12, "pageFrom"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_a

    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->p:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception v4

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_a
    :try_start_a
    new-instance v4, Lcom/therouter/router/b;

    const-string v7, "java.lang.String"

    const-string v8, "rec_ops"

    const-string v10, ""

    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    const-string v12, "ops"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->m:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    return-void
.end method
