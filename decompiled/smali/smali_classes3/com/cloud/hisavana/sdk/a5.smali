.class public final Lcom/cloud/hisavana/sdk/a5;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lcom/cloud/hisavana/sdk/e5;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measureListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a5;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a5;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a5;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/e5;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/a5;->c(Lcom/cloud/hisavana/sdk/e5;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    return-void
.end method

.method private static final c(Lcom/cloud/hisavana/sdk/e5;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 2

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->d(Landroid/view/View;)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/cloud/hisavana/sdk/e5;->a(D)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a5;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a5;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a5;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/e5;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Lcom/cloud/hisavana/sdk/z4;

    invoke-direct {v2, v1, v0}, Lcom/cloud/hisavana/sdk/z4;-><init>(Lcom/cloud/hisavana/sdk/e5;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/cloud/hisavana/sdk/a5;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    instance-of v1, p1, Lcom/cloud/hisavana/sdk/a5;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a5;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    check-cast p1, Lcom/cloud/hisavana/sdk/a5;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/a5;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a5;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
