.class public final Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;
.super Lcom/bumptech/glide/request/target/CustomTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->o(Lcom/transsion/baselib/db/download/DownloadBean;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-boolean p2, p0, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->b:Z

    iput-object p3, p0, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "download_notify"

    const-string v2, "onFailure"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v11, 0x1

    const-string v2, "resource"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "download_notify"

    const-string v5, "onSuccess"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    const/high16 v4, 0x4000000

    goto :goto_0

    :cond_0
    const/high16 v4, 0x8000000

    :goto_0
    sget-object v12, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->a:Lcom/transsnet/downloader/notification/DownloadNotificationUtils;

    iget-object v5, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v12, v5}, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->z(Lcom/transsion/baselib/db/download/DownloadBean;)I

    move-result v13

    add-int/lit8 v14, v13, 0x1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-class v6, Lcom/transsion/push/api/IPushProvider;

    invoke-static {v6, v5}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/push/api/IPushProvider;

    if-eqz v5, :cond_5

    iget-object v6, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v12, v6}, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->g(Lcom/transsnet/downloader/notification/DownloadNotificationUtils;Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v7

    iget-object v8, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v12, v5, v14, v8, v4}, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->f(Lcom/transsnet/downloader/notification/DownloadNotificationUtils;Lcom/transsion/push/api/IPushProvider;ILcom/transsion/baselib/db/download/DownloadBean;I)Landroid/app/PendingIntent;

    move-result-object v15

    iget-object v8, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v8

    if-ne v8, v11, :cond_1

    iget-object v8, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v12, v5, v14, v8, v4}, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->e(Lcom/transsnet/downloader/notification/DownloadNotificationUtils;Lcom/transsion/push/api/IPushProvider;ILcom/transsion/baselib/db/download/DownloadBean;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_1
    move-object v10, v4

    goto :goto_2

    :cond_1
    iget-object v8, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v12, v5, v14, v8, v4}, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->i(Lcom/transsnet/downloader/notification/DownloadNotificationUtils;Lcom/transsion/push/api/IPushProvider;ILcom/transsion/baselib/db/download/DownloadBean;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_1

    :goto_2
    iget-boolean v4, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->b:Z

    if-eqz v4, :cond_2

    invoke-static {v12, v7}, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->j(Lcom/transsnet/downloader/notification/DownloadNotificationUtils;I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v9, v4

    goto :goto_4

    :cond_2
    iget-object v4, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->c:Ljava/lang/String;

    goto :goto_3

    :goto_4
    iget-boolean v4, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->b:Z

    if-eqz v4, :cond_3

    :goto_5
    move-object v8, v6

    goto :goto_6

    :cond_3
    iget-object v6, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->d:Ljava/lang/String;

    goto :goto_5

    :goto_6
    if-lt v2, v3, :cond_4

    new-instance v7, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/transsion/lib/push/R$layout;->push_notification_custom_left_pic_s_small:I

    invoke-direct {v7, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v2, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    invoke-virtual {v7, v2, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/transsion/lib/push/R$id;->notification_content_tv:I

    invoke-virtual {v7, v2, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/transsion/lib/push/R$id;->iv_icon:I

    sget v3, Lcom/tn/lib/widget/R$mipmap;->icon_play_white:I

    invoke-virtual {v7, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget v2, Lcom/transsion/lib/push/R$id;->tv_tips:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/transsion/baseui/R$string;->play:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/transsion/lib/push/R$id;->ll_download:I

    invoke-virtual {v7, v2, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/lib/push/R$dimen;->push_notification_transition_rectangle_img_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v5, v2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/lib/push/R$dimen;->push_notification_transition_rectangle_img_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v6, v2

    sget-object v2, Lcom/transsnet/downloader/notification/a;->a:Lcom/transsnet/downloader/notification/a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    const-string v4, "getApp(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x20

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p1

    move-object v0, v7

    move/from16 v7, v18

    move-object v11, v8

    move/from16 v8, v19

    move-object/from16 v20, v9

    move/from16 v9, v16

    move-object v1, v10

    move-object/from16 v10, v17

    invoke-static/range {v2 .. v10}, Lcom/transsnet/downloader/notification/a;->d(Lcom/transsnet/downloader/notification/a;Landroid/content/Context;Landroid/graphics/Bitmap;IIZIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/transsion/lib/push/R$layout;->push_notification_custom_left_pic_s_big:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v4, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    move-object/from16 v5, v20

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v4, Lcom/transsion/lib/push/R$id;->notification_content_tv:I

    invoke-virtual {v3, v4, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v4, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget v2, Lcom/transsion/lib/push/R$id;->iv_icon:I

    sget v4, Lcom/tn/lib/widget/R$mipmap;->icon_play_white:I

    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget v2, Lcom/transsion/lib/push/R$id;->tv_tips:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    sget v6, Lcom/transsion/baseui/R$string;->play:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/transsion/lib/push/R$id;->ll_download:I

    invoke-virtual {v3, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroidx/core/app/NotificationCompat$m;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    const-string v4, "download_service"

    invoke-direct {v1, v2, v4}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/tn/lib/widget/R$drawable;->push_small_logo:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$m;->J(I)Landroidx/core/app/NotificationCompat$m;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$m;->q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroidx/core/app/NotificationCompat$m;->p(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroidx/core/app/NotificationCompat$m;->o(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$m;->s(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$m;->r(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v0

    goto :goto_7

    :cond_4
    move-object v11, v8

    move-object v5, v9

    move-object v1, v10

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/transsion/lib/push/R$layout;->push_notification_custom_left_pic:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v3, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v3, Lcom/transsion/lib/push/R$id;->notification_content_tv:I

    invoke-virtual {v2, v3, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v3, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget v0, Lcom/transsion/lib/push/R$id;->iv_icon:I

    sget v3, Lcom/tn/lib/widget/R$mipmap;->icon_play_white:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget v0, Lcom/transsion/lib/push/R$id;->tv_tips:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/transsion/baseui/R$string;->play:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v0, Lcom/transsion/lib/push/R$id;->ll_download:I

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v0, Lcom/transsion/lib/push/R$id;->time:I

    const-string v1, "setTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    new-instance v0, Landroidx/core/app/NotificationCompat$m;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v3, "download_service_high"

    invoke-direct {v0, v1, v3}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/tn/lib/widget/R$drawable;->push_small_logo:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->J(I)Landroidx/core/app/NotificationCompat$m;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/core/app/NotificationCompat$m;->o(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$m;->q(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroidx/core/app/NotificationCompat$m;->p(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$m;->s(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v12}, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->h(Lcom/transsnet/downloader/notification/DownloadNotificationUtils;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/NotificationManager;->cancel(I)V

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/t;->d(Landroid/content/Context;)Landroidx/core/app/t;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$m;->c()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v14, v0}, Landroidx/core/app/t;->f(ILandroid/app/Notification;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_8
    move-object/from16 v1, p0

    goto :goto_9

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :goto_9
    iget-boolean v0, v1, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->b:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/transsion/push/utils/t;->a:Lcom/transsion/push/utils/t;

    invoke-virtual {v0}, Lcom/transsion/push/utils/t;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v2, "download_play_notification_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_5
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/notification/DownloadNotificationUtils$a;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
