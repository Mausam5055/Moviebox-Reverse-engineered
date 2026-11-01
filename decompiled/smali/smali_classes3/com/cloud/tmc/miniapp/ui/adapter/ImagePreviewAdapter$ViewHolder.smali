.class public final Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Ljava/lang/String;",
        ">.NormalViewHolder;"
    }
.end annotation


# instance fields
.field private final checkBox$delegate:Lkotlin/Lazy;

.field private final photoView$delegate:Lkotlin/Lazy;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->item_image_preview:I

    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;I)V

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder$photoView$2;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder$photoView$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->photoView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder$checkBox$2;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder$checkBox$2;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->checkBox$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic f(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;Landroid/view/View;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->onBindView$lambda$1(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;Landroid/view/View;FF)V

    return-void
.end method

.method private final getCheckBox()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->checkBox$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getPhotoView()Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->photoView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;

    return-object v0
.end method

.method private static final onBindView$lambda$1(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;Landroid/view/View;FF)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    sget p1, Lcom/cloud/tmc/miniapp/R$anim;->activity_fast_fade_in:I

    sget p2, Lcom/cloud/tmc/miniapp/R$anim;->activity_fast_fade_out:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getSelectNum(Ljava/lang/String;)I
    .locals 1

    const-string v0, "imagePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->access$getMSelectImages$p(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindView(I)V
    .locals 8

    const-string v0, ""

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getPhotoView()Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    new-instance v3, Lcom/cloud/tmc/miniapp/ui/adapter/a;

    invoke-direct {v3, v2}, Lcom/cloud/tmc/miniapp/ui/adapter/a;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;)V

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->setOnViewTapListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO;)V

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    invoke-virtual {v1, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_11

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getPhotoView()Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, ".miniapp.transsion.com"

    const/4 v6, 0x0

    invoke-static {p1, v5, v3, v2, v6}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v6, p1

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/cloud/tmc/integration/utils/FilePathUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/FilePathUtils;

    invoke-virtual {v5, p1}, Lcom/cloud/tmc/integration/utils/FilePathUtils;->getAppIdFormVurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v0

    :cond_2
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->getBaseResourceManager()Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    move-result-object v7

    invoke-interface {v7, p1, v5}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_3
    :goto_0
    if-nez v6, :cond_4

    move-object v6, v0

    goto :goto_1

    :cond_4
    const-string v5, "baseResourceManager.get(\u2026ppId)?.absolutePath ?: \"\""

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->getImageLoder()Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    move-result-object v5

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v5, v7, v6, v4}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v5, "onBindView"

    invoke-static {v5, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->getSelectMode()I

    move-result v1

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eq v1, v5, :cond_f

    if-eq v1, v2, :cond_8

    const/4 p1, 0x3

    if-eq v1, p1, :cond_6

    goto :goto_7

    :cond_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getSelectNum(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_f
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;->getCheckBox()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    :goto_7
    return-void
.end method
