.class public final Lcom/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "MBPush_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;


# direct methods
.method constructor <init>(Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1;->this$0:Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/ref/SoftReference;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1;->run$lambda$0(Ljava/lang/ref/SoftReference;)Z

    move-result p0

    return p0
.end method

.method private static final run$lambda$0(Ljava/lang/ref/SoftReference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1;->this$0:Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;

    invoke-static {v0}, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;->c(Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/transsion/mpush/core/service/a;

    invoke-direct {v2}, Lcom/transsion/mpush/core/service/a;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1;->this$0:Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;

    invoke-static {v0}, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;->b(Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    move-object v0, v2

    :goto_0
    sget-object v3, Llg/a;->a:Llg/a$a;

    if-eqz v0, :cond_1

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    iget-object v5, v1, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1;->this$0:Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;

    invoke-static {v5}, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;->c(Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SdkNotificationRefreshService] onRepeat -> Active: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Cached: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "SdkNoticeRefresh"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    array-length v4, v0

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-ge v3, v4, :cond_8

    if-eqz v0, :cond_7

    aget-object v5, v0, v3

    if-nez v5, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    iget-object v6, v1, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1;->this$0:Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;

    invoke-static {v6}, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;->c(Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v2

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Lcom/transsion/mpush/api/LocalPushMessage;

    if-eqz v10, :cond_5

    iget-object v10, v1, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1;->this$0:Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;

    move-object v11, v8

    check-cast v11, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {v11}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;->d(Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;Ljava/lang/String;)I

    move-result v10

    if-ne v10, v5, :cond_4

    sget-object v12, Llg/a;->a:Llg/a$a;

    invoke-virtual {v11}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[SdkNotificationRefreshService] onRepeat -> Refreshing Local: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "SdkNoticeRefresh"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v11, v9}, Lcom/transsion/mpush/api/LocalPushMessage;->setRefresh(Z)V

    sget-object v9, Lln/a;->a:Lln/a;

    invoke-virtual {v9, v8}, Lln/a;->n(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    instance-of v9, v8, Lcom/transsion/mpush/api/PermanentPushMessage;

    if-eqz v9, :cond_4

    const/16 v9, 0x271a

    if-ne v5, v9, :cond_4

    move-object v7, v8

    check-cast v7, Lcom/transsion/mpush/api/PermanentPushMessage;

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    sget-object v10, Llg/a;->a:Llg/a$a;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "SdkNoticeRefresh"

    const-string v12, "[SdkNotificationRefreshService] onRepeat -> Refreshing Permanent"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v7, v9}, Lcom/transsion/mpush/api/PermanentPushMessage;->setRefresh(Z)V

    sget-object v5, Lln/a;->a:Lln/a;

    invoke-virtual {v5, v7}, Lln/a;->n(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_8
    iget-object v0, v1, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1;->this$0:Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;

    invoke-static {v0}, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;->a(Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, v1, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1;->this$0:Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;

    invoke-static {v2}, Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;->e(Lcom/transsion/mpush/core/service/SdkNotificationRefreshService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method
