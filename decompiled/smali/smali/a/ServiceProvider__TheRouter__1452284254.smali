.class public La/ServiceProvider__TheRouter__1452284254;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/therouter/inject/b;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final FLOW_TASK_JSON:Ljava/lang/String; = "{}"

.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFlowTask(Landroid/content/Context;Lyf/b;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public initFlowTask(Landroid/content/Context;Lyf/b;)V
    .locals 0

    invoke-static {p1, p2}, La/ServiceProvider__TheRouter__1452284254;->addFlowTask(Landroid/content/Context;Lyf/b;)V

    return-void
.end method

.method public varargs interception(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-class v0, Lcom/transsion/commercializationapi/ICommonDialogApi;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p2

    if-nez v0, :cond_0

    invoke-static {}, Llk/d;->a()Lcom/transsion/commercializationapi/ICommonDialogApi;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-class v0, Lcom/transsion/commercializationapi/IGameResApi;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/commercialization/gameres/c;->a()Lcom/transsion/commercializationapi/IGameResApi;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-class v0, Lcom/transsion/commercializationapi/IInterceptReportApi;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_2

    invoke-static {}, Ljk/c;->a()Lcom/transsion/commercializationapi/IInterceptReportApi;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-class v0, Lcom/transsion/commercializationapi/IPsLinkApi;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, p2

    if-nez v0, :cond_3

    invoke-static {}, Lcom/transsion/commercialization/pslink/e;->a()Lcom/transsion/commercializationapi/IPsLinkApi;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-class v0, Lcom/transsion/commercializationapi/ITaskCenterApi;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    array-length p1, p2

    if-nez p1, :cond_4

    invoke-static {}, Lcom/transsion/commercialization/task/q;->a()Lcom/transsion/commercializationapi/ITaskCenterApi;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
