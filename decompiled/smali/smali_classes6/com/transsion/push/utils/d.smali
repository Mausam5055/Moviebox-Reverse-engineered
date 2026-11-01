.class public final Lcom/transsion/push/utils/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/push/utils/d;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/transsion/push/bean/PushNotification;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/push/utils/d;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/transsion/push/bean/PushNotification;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/push/bean/PushNotification;->getStyleId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/push/utils/d;->c(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Z)Landroid/widget/RemoteViews;
    .locals 2

    iget p3, p1, Lcom/transsion/push/bean/PushMessage;->notiType:I

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/transsion/push/R$layout;->tpush_notification_expand_31:I

    invoke-direct {p3, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget p2, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    invoke-virtual {p3, p2, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_1
    sget p2, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    invoke-virtual {p3, p2, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_2

    sget p2, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-static {p3, p2, v0, v1}, Lcom/transsion/mbwidget/e;->a(Landroid/widget/RemoteViews;IFI)V

    :cond_2
    :goto_0
    sget p2, Lcom/transsion/push/R$id;->tpush_titleTv:I

    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p2, Lcom/transsion/push/R$id;->tpush_descriptionTv:I

    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    sget p2, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    iget-object p1, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p1, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    invoke-virtual {p3, p1, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    :cond_3
    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    const/16 p1, 0x8

    invoke-virtual {p3, p0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    return-object p3
.end method

.method public static c(II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(II)Lcom/transsion/push/bean/PushNotification;
    .locals 1

    sget-object v0, Lcom/transsion/push/utils/d;->a:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/transsion/push/utils/d;->c(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/push/bean/PushNotification;

    return-object p0
.end method

.method public static e(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Z)Landroid/widget/RemoteViews;
    .locals 6

    iget p3, p1, Lcom/transsion/push/bean/PushMessage;->notiType:I

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt p3, v0, :cond_2

    new-instance p2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget p3, Lcom/transsion/push/R$layout;->tpush_notification_31:I

    invoke-direct {p2, p0, p3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget p0, Lcom/transsion/push/R$id;->tpush_titleTv:I

    iget-object p3, p1, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    invoke-virtual {p2, p0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p0, Lcom/transsion/push/R$id;->tpush_descriptionTv:I

    iget-object p3, p1, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    invoke-virtual {p2, p0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    iget-object p1, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    invoke-virtual {p2, p0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    invoke-virtual {p2, p0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    return-object p2

    :cond_2
    new-instance p3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/push/R$layout;->tpush_custom_button_style:I

    invoke-direct {p3, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;

    :goto_1
    :try_start_0
    sget v3, Lcom/transsion/push/R$id;->tpush_smallIconImg:I

    invoke-static {p0, v0}, Lcom/transsion/push/utils/PushUtils;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/push/utils/a;->d(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set imageview Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    :goto_2
    invoke-static {p0, p1}, Lcom/transsion/push/utils/PushUtils;->h(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :try_start_1
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v3, "h:mm a"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    sget-object v3, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v3, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_3
    sget p0, Lcom/transsion/push/R$id;->tpush_smallTitleTv:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p0, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz p2, :cond_5

    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/transsion/push/utils/d;->f()Z

    move-result p0

    if-nez p0, :cond_5

    sget p0, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p3, p0, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget p0, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    invoke-virtual {p3, p0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    :cond_5
    sget p0, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    invoke-virtual {p3, p0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_4
    sget p0, Lcom/transsion/push/R$id;->tpush_titleTv:I

    iget-object p2, p1, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    invoke-virtual {p3, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p0, Lcom/transsion/push/R$id;->tpush_descriptionTv:I

    iget-object p2, p1, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    invoke-virtual {p3, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    iget-object p1, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    invoke-virtual {p3, p0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    invoke-virtual {p3, p0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_5

    :cond_6
    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    invoke-virtual {p3, p0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_5
    return-object p3
.end method

.method public static f()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
