.class public Lcom/transsion/search/activity/SearchManagerActivity__TheRouter__Autowired;
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
    .locals 13

    instance-of v0, p0, Lcom/transsion/search/activity/SearchManagerActivity;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/transsion/search/activity/SearchManagerActivity;

    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbg/a;

    :try_start_0
    const-string v2, "boolean"

    new-instance v12, Lcom/therouter/router/b;

    const-string v4, "boolean"

    const-string v5, "back_exit"

    const-string v7, ""

    const-string v8, "com.transsion.search.activity.SearchManagerActivity"

    const-string v9, "backExitSearch"

    const-string v11, "No desc."

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v2, p0, v12}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/search/activity/SearchManagerActivity;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_1
    const-string v2, "int"

    new-instance v12, Lcom/therouter/router/b;

    const-string v4, "int"

    const-string v5, "type"

    const-string v7, ""

    const-string v8, "com.transsion.search.activity.SearchManagerActivity"

    const-string v9, "searchType"

    const-string v11, "No desc."

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v2, p0, v12}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/transsion/search/activity/SearchManagerActivity;->k:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    :try_start_2
    const-string v2, "java.lang.String"

    new-instance v12, Lcom/therouter/router/b;

    const-string v4, "java.lang.String"

    const-string v5, "keyword"

    const-string v7, ""

    const-string v8, "com.transsion.search.activity.SearchManagerActivity"

    const-string v9, "keyWord"

    const-string v11, "No desc."

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v2, p0, v12}, Lbg/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/transsion/search/activity/SearchManagerActivity;->j:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    return-void
.end method
