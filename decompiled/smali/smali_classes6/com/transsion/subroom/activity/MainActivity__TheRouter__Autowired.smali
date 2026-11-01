.class public Lcom/transsion/subroom/activity/MainActivity__TheRouter__Autowired;
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

    const-string v0, "java.lang.String"

    const-string v1, "int"

    instance-of v2, p0, Lcom/transsion/subroom/activity/MainActivity;

    if-eqz v2, :cond_4

    check-cast p0, Lcom/transsion/subroom/activity/MainActivity;

    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbg/a;

    :try_start_0
    new-instance v13, Lcom/therouter/router/b;

    const-string v5, "int"

    const-string v6, "secondTabIndex"

    const-string v8, ""

    const-string v9, "com.transsion.subroom.activity.MainActivity"

    const-string v10, "mSecondTabIndex"

    const-string v12, "No desc."

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v13}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/transsion/subroom/activity/MainActivity;->n:I
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

    const-string v7, "int"

    const-string v8, "tabIndex"

    const-string v10, ""

    const-string v11, "com.transsion.subroom.activity.MainActivity"

    const-string v12, "mInitTabId"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v1, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/transsion/subroom/activity/MainActivity;->m:I
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

    const-string v7, "java.lang.String"

    const-string v8, "bottomTab"

    const-string v10, ""

    const-string v11, "com.transsion.subroom.activity.MainActivity"

    const-string v12, "mBottomTabCode"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v0, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    iput-object v4, p0, Lcom/transsion/subroom/activity/MainActivity;->l:Ljava/lang/String;
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

    const-string v8, "topTab"

    const-string v10, ""

    const-string v11, "com.transsion.subroom.activity.MainActivity"

    const-string v12, "mTopTabCode"

    const-string v14, "No desc."

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v3, v0, p0, v4}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/transsion/subroom/activity/MainActivity;->k:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v3

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
