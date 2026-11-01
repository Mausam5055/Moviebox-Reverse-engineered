.class public abstract Landroidx/core/app/NotificationCompat$p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$p$a;
    }
.end annotation


# instance fields
.field protected a:Landroidx/core/app/NotificationCompat$m;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$p;->d:Z

    return-void
.end method

.method private e()I
    .locals 5

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/core/R$dimen;->notification_top_pad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v3, 0x3fa66666    # 1.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v3}, Landroidx/core/app/NotificationCompat$p;->f(FFF)F

    move-result v0

    sub-float/2addr v0, v4

    const v3, 0x3e999998    # 0.29999995f

    div-float/2addr v0, v3

    sub-float/2addr v4, v0

    int-to-float v1, v1

    mul-float/2addr v4, v1

    int-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static f(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private g(III)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/app/NotificationCompat$p;->i(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private i(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->s(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private j(IIII)Landroid/graphics/Bitmap;
    .locals 2

    sget v0, Landroidx/core/R$drawable;->notification_icon_background:I

    if-nez p4, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, v0, p4, p2}, Landroidx/core/app/NotificationCompat$p;->g(III)Landroid/graphics/Bitmap;

    move-result-object p4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const/4 p3, -0x1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p4
.end method

.method private l(Landroid/widget/RemoteViews;)V
    .locals 2

    sget v0, Landroidx/core/R$id;->title:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroidx/core/R$id;->text2:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroidx/core/R$id;->text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$p;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "android.summaryText"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const-string v1, "android.title.big"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$p;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public b(Landroidx/core/app/o;)V
    .locals 0

    return-void
.end method

.method public c(ZIZ)Landroid/widget/RemoteViews;
    .locals 12

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$m;->i()I

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v2, v1, Landroidx/core/app/NotificationCompat$m;->j:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    sget v1, Landroidx/core/R$id;->icon:I

    invoke-virtual {v7, v1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Landroidx/core/R$id;->icon:I

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$m;->j:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p0, v2, v8}, Landroidx/core/app/NotificationCompat$p;->h(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_1

    sget p1, Landroidx/core/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget v1, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v3, v2, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$m;->e()I

    move-result v2

    invoke-direct {p0, v3, p1, v1, v2}, Landroidx/core/app/NotificationCompat$p;->j(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    sget v1, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget p1, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, v1, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_1

    sget p1, Landroidx/core/R$id;->icon:I

    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p1, Landroidx/core/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget v1, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p1, v1

    sget v1, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v3, v2, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$m;->e()I

    move-result v2

    invoke-direct {p0, v3, p1, v1, v2}, Landroidx/core/app/NotificationCompat$p;->j(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    sget v1, Landroidx/core/R$id;->icon:I

    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$m;->e:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    sget v1, Landroidx/core/R$id;->title:I

    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$m;->f:Ljava/lang/CharSequence;

    const/4 v9, 0x1

    if-eqz p1, :cond_3

    sget v1, Landroidx/core/R$id;->text:I

    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move p1, v9

    goto :goto_1

    :cond_3
    move p1, v8

    :goto_1
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v2, v1, Landroidx/core/app/NotificationCompat$m;->k:Ljava/lang/CharSequence;

    const/16 v10, 0x8

    if-eqz v2, :cond_4

    sget p1, Landroidx/core/R$id;->info:I

    invoke-virtual {v7, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget p1, Landroidx/core/R$id;->info:I

    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    move p1, v9

    move v11, p1

    goto :goto_4

    :cond_4
    iget v1, v1, Landroidx/core/app/NotificationCompat$m;->l:I

    if-lez v1, :cond_6

    sget p1, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget v1, v1, Landroidx/core/app/NotificationCompat$m;->l:I

    if-le v1, p1, :cond_5

    sget p1, Landroidx/core/R$id;->info:I

    sget v1, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object p1

    sget v1, Landroidx/core/R$id;->info:I

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget v2, v2, Landroidx/core/app/NotificationCompat$m;->l:I

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_3
    sget p1, Landroidx/core/R$id;->info:I

    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    :cond_6
    sget v1, Landroidx/core/R$id;->info:I

    invoke-virtual {v7, v1, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v11, v8

    :goto_4
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->r:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    sget v2, Landroidx/core/R$id;->text:I

    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    sget v2, Landroidx/core/R$id;->text2:I

    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v1, Landroidx/core/R$id;->text2:I

    invoke-virtual {v7, v1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz p3, :cond_7

    sget p3, Landroidx/core/R$dimen;->notification_subtext_size:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    sget v0, Landroidx/core/R$id;->text:I

    invoke-virtual {v7, v0, v8, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_7
    sget v2, Landroidx/core/R$id;->line1:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    goto :goto_5

    :cond_8
    sget p3, Landroidx/core/R$id;->text2:I

    invoke-virtual {v7, p3, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_9
    :goto_5
    iget-object p3, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$m;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_b

    iget-object p3, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-boolean p3, p3, Landroidx/core/app/NotificationCompat$m;->o:Z

    if-eqz p3, :cond_a

    sget p3, Landroidx/core/R$id;->chronometer:I

    invoke-virtual {v7, p3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p3, Landroidx/core/R$id;->chronometer:I

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$m;->j()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-string v2, "setBase"

    invoke-virtual {v7, p3, v2, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    sget p3, Landroidx/core/R$id;->chronometer:I

    const-string v0, "setStarted"

    invoke-virtual {v7, p3, v0, v9}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    iget-object p3, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-boolean p3, p3, Landroidx/core/app/NotificationCompat$m;->p:Z

    if-eqz p3, :cond_c

    const/16 v0, 0x18

    if-lt p2, v0, :cond_c

    sget p2, Landroidx/core/R$id;->chronometer:I

    invoke-static {v7, p2, p3}, Landroidx/core/app/NotificationCompat$p$a;->a(Landroid/widget/RemoteViews;IZ)V

    goto :goto_6

    :cond_a
    sget p2, Landroidx/core/R$id;->time:I

    invoke-virtual {v7, p2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p2, Landroidx/core/R$id;->time:I

    iget-object p3, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$m;->j()J

    move-result-wide v0

    const-string p3, "setTime"

    invoke-virtual {v7, p2, p3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_6

    :cond_b
    move v9, v11

    :cond_c
    :goto_6
    sget p2, Landroidx/core/R$id;->right_side:I

    if-eqz v9, :cond_d

    move p3, v8

    goto :goto_7

    :cond_d
    move p3, v10

    :goto_7
    invoke-virtual {v7, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p2, Landroidx/core/R$id;->line3:I

    if-eqz p1, :cond_e

    goto :goto_8

    :cond_e
    move v8, v10

    :goto_8
    invoke-virtual {v7, p2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v7
.end method

.method public d(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 7

    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$p;->l(Landroid/widget/RemoteViews;)V

    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    sget p2, Landroidx/core/R$id;->notification_main_column:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$p;->e()I

    move-result v4

    sget v2, Landroidx/core/R$id;->notification_main_column_container:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    return-void
.end method

.method h(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$p;->i(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public o(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public p(Landroidx/core/app/NotificationCompat$m;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$m;->L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;

    :cond_0
    return-void
.end method
