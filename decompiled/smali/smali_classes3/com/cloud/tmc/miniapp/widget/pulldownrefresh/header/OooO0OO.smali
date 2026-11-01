.class public final Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;
.super Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO$OooO00o;
    }
.end annotation


# instance fields
.field public OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

.field public OooO0Oo:Landroid/widget/ImageView;

.field public OooO0o:Ljava/lang/String;

.field public OooO0o0:Landroid/widget/TextView;

.field public OooO0oO:I

.field public OooO0oo:I

.field public OooOO0:Ljava/io/File;

.field public OooOO0O:Ljava/io/File;

.field public OooOO0o:Ljava/io/File;

.field public OooOOO0:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x1f4

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0oo:I

    sget-object p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    sget p2, Lcom/cloud/tmc/miniapp/R$layout;->layout_sharp_news_header:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p2, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_progress:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0Oo:Landroid/widget/ImageView;

    sget p2, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_title:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o0:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->srl_header_pulling:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o:Ljava/lang/String;

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->srl_header_release:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->srl_header_finish:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->srl_header_failed:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->srl_header_refreshing:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I
    .locals 1

    const-string v0, "miniRefreshLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO00o(I)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o0:Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0oo:I

    return p1
.end method

.method public final OooO00o(I)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0Oo:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v5, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    move-object v7, v6

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooOOO0:Ljava/io/File;

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooOO0o:Ljava/io/File;

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooOO0O:Ljava/io/File;

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooOO0:Ljava/io/File;

    :goto_0
    invoke-static {v7}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    move-result v8

    const-string v9, "MiniCustomHeader"

    if-nez v8, :cond_7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u52a0\u8f7d\u76ee\u6807\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    if-eq p1, v5, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_9

    if-eq p1, v0, :cond_8

    move-object v8, v6

    goto :goto_1

    :cond_8
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooOOO0:Ljava/io/File;

    goto :goto_1

    :cond_9
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooOO0o:Ljava/io/File;

    :goto_1
    invoke-static {v8}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_b

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u52a0\u8f7d\u5360\u4f4d\u56fe\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    if-eqz v8, :cond_c

    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_c
    move-object v8, v6

    :goto_2
    invoke-static {v8}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v10, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    if-eq p1, v5, :cond_10

    if-eq p1, v3, :cond_f

    if-eq p1, v2, :cond_d

    if-eq p1, v0, :cond_d

    goto :goto_4

    :cond_d
    if-eqz v7, :cond_e

    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :cond_e
    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_f
    invoke-static {v10}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    new-instance v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO$OooO0O0;

    invoke-direct {v5, v4, v8}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO$OooO0O0;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    move-object v2, v7

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgGifPlayOnce(Landroid/content/Context;Ljava/io/File;ILandroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    goto :goto_4

    :cond_10
    invoke-static {v10}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-interface {p1, v1, v7, v8, v4}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgGifPlay(Landroid/content/Context;Ljava/io/File;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    const-string v0, "Error loading image"

    invoke-static {v9, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;II)V
    .locals 0

    const-string p2, "kernel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V
    .locals 1

    const-string v0, "miniRefreshLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newState"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO$OooO00o;->OooO00o:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const/4 p3, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x64

    :try_start_0
    invoke-static {p1, p2}, Lcom/cloud/tmc/miniutils/util/VibrateUtils;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "MiniCustomHeader"

    const-string p3, "ReleaseToRefresh vibrate failed!"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o0:Landroid/widget/TextView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o0:Landroid/widget/TextView;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO00o(I)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0Oo:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o0:Landroid/widget/TextView;

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public OooO00o(ZFIII)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->h(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->e(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0oO:I

    if-le p3, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO00o(I)V

    :cond_2
    return-void
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V
    .locals 0

    const-string p2, "miniRefreshLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO00o(I)V

    return-void
.end method
