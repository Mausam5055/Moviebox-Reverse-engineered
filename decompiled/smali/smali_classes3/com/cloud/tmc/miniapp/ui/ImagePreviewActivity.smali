.class public final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;
.super Lcom/cloud/tmc/miniapp/base/BaseActivity;

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;

.field private static final IMAGE_LIST:Ljava/lang/String; = "imageList"

.field private static final IMAGE_MAX_SELECT:Ljava/lang/String; = "imageMaxSelect"

.field private static final IMAGE_PREVIEW_CURRENT:Ljava/lang/String; = "current"

.field private static final IMAGE_PREVIEW_SHOW_MENU:Ljava/lang/String; = "showMenu"

.field private static final IMAGE_SELECT_BACK_PRESSED:Ljava/lang/String; = "imageBackPressed"

.field private static final IMAGE_SELECT_INDEX:Ljava/lang/String; = "imageIndex"

.field private static final IMAGE_SELECT_LIST:Ljava/lang/String; = "imageSelectList"

.field private static final IMAGE_SELECT_POSITION_LIST:Ljava/lang/String; = "imageSelectPositionList"

.field private static final TAG:Ljava/lang/String; = "ImagePreviewActivity"


# instance fields
.field private final adapter$delegate:Lkotlin/Lazy;

.field private final flOperateDownload$delegate:Lkotlin/Lazy;

.field private final flOperateShare$delegate:Lkotlin/Lazy;

.field private final flTitleBack$delegate:Lkotlin/Lazy;

.field private index:I

.field private final linearOperatePanel$delegate:Lkotlin/Lazy;

.field private final mPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private final mTaskQueue$delegate:Lkotlin/Lazy;

.field private maxSelect:I

.field private final selectImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectMode:I

.field private final selectPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final tvImageSelect$delegate:Lkotlin/Lazy;

.field private final tvPreviewTitle$delegate:Lkotlin/Lazy;

.field private final tvTitle$delegate:Lkotlin/Lazy;

.field private final vpPreviewImage$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flTitleBack$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flTitleBack$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flTitleBack$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvTitle$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvTitle$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvTitle$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvPreviewTitle$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvPreviewTitle$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvPreviewTitle$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvImageSelect$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvImageSelect$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvImageSelect$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$vpPreviewImage$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$vpPreviewImage$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->vpPreviewImage$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$linearOperatePanel$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$linearOperatePanel$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->linearOperatePanel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flOperateShare$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flOperateShare$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flOperateShare$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flOperateDownload$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flOperateDownload$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flOperateDownload$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$adapter$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->adapter$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    sget-object v1, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mTaskQueue$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mTaskQueue$2;

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->mTaskQueue$delegate:Lkotlin/Lazy;

    iput v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->mPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMTaskQueue(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/task/OooO0O0;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getMTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelectImage$p(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getTvPreviewTitle(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvPreviewTitle()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTvTitle(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvTitle()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$systemShare(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->systemShare(Ljava/io/File;)V

    return-void
.end method

.method private final changeSelectTv()V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_done:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_505358:I

    invoke-static {p0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    if-ne v3, v1, :cond_3

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_done:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_mutiple_done:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.mini_image_select_mutiple_done)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    aput-object v5, v6, v1

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_white:I

    invoke-static {p0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method private final doDownloadFile()V
    .locals 9

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getCurrentImageUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ImagePreviewActivity"

    const-string v1, "doDownloadFile imagePath is null"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_save_failed:I

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v1, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1;

    invoke-direct {p0, v0, v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->loadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final doShareFile()V
    .locals 9

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getCurrentImageUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ImagePreviewActivity"

    const-string v1, "doShareFile imagePath is null"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_shared_failed:I

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->loadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    return-object v0
.end method

.method private final getCurrentImageUrl()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, ".miniapp.transsion.com"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/cloud/tmc/integration/utils/FilePathUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/FilePathUtils;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/integration/utils/FilePathUtils;->getAppIdFormVurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->getBaseResourceManager()Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    return-object v0

    :goto_2
    const-string v2, "ImagePreviewActivity"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v0
.end method

.method private final getFlOperateDownload()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flOperateDownload$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getFlOperateShare()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flOperateShare$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getFlTitleBack()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flTitleBack$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getLinearOperatePanel()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->linearOperatePanel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getMTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->mTaskQueue$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/task/OooO0O0;

    return-object v0
.end method

.method private final getTvImageSelect()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvImageSelect$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvPreviewTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvPreviewTitle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvTitle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->vpPreviewImage$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    return-object v0
.end method

.method private final loadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final systemShare(Ljava/io/File;)V
    .locals 9

    new-instance v6, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;

    invoke-direct {v6, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->shareFile$default(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/integration/utils/share/OnShareListener;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->activity_image_preview:I

    return v0
.end method

.method public final getMaxSelect()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    return v0
.end method

.method public hideStatusLoading()V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 8

    const-string v0, "imageList"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "imageSelectList"

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "imageSelectPositionList"

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "showMenu"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v1, "imageMaxSelect"

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->setFullScreen(Landroid/app/Activity;)V

    iget v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    const/4 v2, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->setStatusBarNightMode(Landroid/app/Activity;)V

    const/4 v1, 0x2

    goto :goto_3

    :cond_2
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->setStatusBarNightMode(Landroid/app/Activity;)V

    move v1, v6

    goto :goto_3

    :cond_3
    invoke-static {p0, v4}, Lcom/cloud/tmc/miniutils/util/BarUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    invoke-static {p0, v4}, Lcom/cloud/tmc/miniutils/util/BarUtils;->setStatusBarVisibility(Landroid/app/Activity;Z)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvPreviewTitle()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    move v1, v2

    :goto_3
    iput v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v1

    iget v7, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    invoke-virtual {v1, v7}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->setSelectMode(I)V

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_9

    :cond_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnItemClickListener(Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v1

    sget v7, Lcom/cloud/tmc/miniapp/R$id;->fl_image_select_check:I

    invoke-virtual {v1, v7, p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnChildClickListener(ILcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v6, :cond_f

    iget v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    if-ne v1, v2, :cond_b

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvPreviewTitle()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_b
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvPreviewTitle()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->mPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_e
    const-string v1, "imageIndex"

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    invoke-virtual {v0, v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_f
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    if-ne v0, v6, :cond_10

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_11

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_white:I

    invoke-static {p0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_10
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->changeSelectTv()V

    :cond_11
    :goto_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getLinearOperatePanel()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0, v3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    :cond_12
    return-void

    :cond_13
    :goto_9
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    return-void
.end method

.method public initView()V
    .locals 7

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlOperateShare()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlOperateDownload()Landroid/widget/FrameLayout;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/view/View;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    aput-object v4, v5, v0

    invoke-virtual {p0, v5}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->setOnClickListener([Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    const-string v2, "imageSelectList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    const-string v2, "imageSelectPositionList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v1, "imageBackPressed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    return-void
.end method

.method public onChildClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 4

    const/4 p1, 0x0

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->fl_image_select_check:I

    if-ne p2, v0, :cond_9

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->removeItem(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->image_select_error:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getString(R.string.image_select_error)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/OooO;->OooO0O0(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_6

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->changeSelectTv()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v2, p1, 0x1

    if-gez p1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_3
    check-cast p3, Ljava/lang/Integer;

    if-lt p1, v0, :cond_4

    if-eqz p3, :cond_4

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    move p1, v2

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    if-lt v0, v2, :cond_7

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/cloud/tmc/miniapp/R$string;->image_select_max_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resources.getString(R.st\u2026ng.image_select_max_hint)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p3, v0, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/OooO;->OooO00o(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    if-ge p1, v0, :cond_8

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->changeSelectTv()V

    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->onBackPressed()V

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    const-string v2, "imageSelectList"

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlOperateShare()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->doShareFile()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlOperateDownload()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->doDownloadFile()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getMTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object v0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->mPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getMTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o()V

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    return-void
.end method

.method public final setMaxSelect(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    return-void
.end method

.method public showStatusLoading()V
    .locals 0

    return-void
.end method
