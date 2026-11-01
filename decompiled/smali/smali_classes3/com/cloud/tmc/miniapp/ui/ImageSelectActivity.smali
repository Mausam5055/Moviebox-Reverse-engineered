.class public final Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;
.super Lcom/cloud/tmc/miniapp/base/BaseActivity;

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/StatusAction;
.implements Ljava/lang/Runnable;
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;

.field private static final IMAGE_MAX_SELECT:Ljava/lang/String; = "maxSelect"

.field private static final IMAGE_SELECT_LIST:Ljava/lang/String; = "imageList"

.field public static final SELECT_MODE_MULTIPLE:I = 0x2

.field public static final SELECT_MODE_PREVIEW:I = 0x3

.field public static final SELECT_MODE_SINGLE:I = 0x1

.field private static selectMode:I


# instance fields
.field private final adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

.field private albumDialog:Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

.field private final allAlbum:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final allImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final flTitleBack$delegate:Lkotlin/Lazy;

.field private final ivImageSelect$delegate:Lkotlin/Lazy;

.field private final llAlbumSelect$delegate:Lkotlin/Lazy;

.field private maxSelect:I

.field private final rvImageSelectList$delegate:Lkotlin/Lazy;

.field private final selectImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final slImageSelectStatus$delegate:Lkotlin/Lazy;

.field private final tempData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tvImageSelect$delegate:Lkotlin/Lazy;

.field private final tvTitle$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;

    const/4 v0, 0x1

    sput v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$flTitleBack$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$flTitleBack$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->flTitleBack$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$tvTitle$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$tvTitle$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tvTitle$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$ivImageSelect$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$ivImageSelect$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->ivImageSelect$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$slImageSelectStatus$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$slImageSelectStatus$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->slImageSelectStatus$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$rvImageSelectList$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$rvImageSelectList$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->rvImageSelectList$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$llAlbumSelect$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$llAlbumSelect$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->llAlbumSelect$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$tvImageSelect$2;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$tvImageSelect$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tvImageSelect$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic V(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->notifyImageListView$lambda$4(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    return-void
.end method

.method public static synthetic W(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->initData$lambda$1(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    return-void
.end method

.method public static synthetic X(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->run$lambda$2(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    return-void
.end method

.method public static synthetic Y(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->run$lambda$3(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static final synthetic access$changeSelectTv(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->changeSelectTv()V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    return-object p0
.end method

.method public static final synthetic access$getAllAlbum$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getAllImage$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getRvImageSelectList(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getRvImageSelectList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelectImage$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getSelectMode$cp()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectMode:I

    return v0
.end method

.method public static final synthetic access$getSelectPosition$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getTvTitle(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroid/widget/TextView;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvTitle()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setSelectMode$cp(I)V
    .locals 0

    sput p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectMode:I

    return-void
.end method

.method private final changeSelectTv()V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_done:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_505358:I

    invoke-static {p0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    if-ne v3, v1, :cond_3

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_done:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :try_start_0
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_mutiple_done:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.mini_image_select_mutiple_done)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

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

.method private final getFlTitleBack()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->flTitleBack$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getIvImageSelect()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->ivImageSelect$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getLlAlbumSelect()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->llAlbumSelect$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    return-object v0
.end method

.method private final getLocalLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "pictures"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->image_select_album_pictures:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "screenshot"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->image_select_album_screenshot:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "camera"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->image_select_album_camera:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    const-string v1, "{\n            when {\n   \u2026}\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    :catchall_0
    return-object p1
.end method

.method private final getRvImageSelectList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->rvImageSelectList$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final getSlImageSelectStatus()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->slImageSelectStatus$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    return-object v0
.end method

.method private final getTvImageSelect()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tvImageSelect$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tvTitle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private static final initData$lambda$1(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private final jumpPreviewActivity(I)V
    .locals 8

    sget-object v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;

    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

    new-instance v7, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;

    invoke-direct {v7, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;->launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILjava/util/List;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    return-void
.end method

.method private final notifyImageListView()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/e;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/e;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static final notifyImageListView$lambda$4(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->changeSelectTv()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getRvImageSelectList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/cloud/tmc/miniapp/R$anim;->layout_fall_down:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getRvImageSelectList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_photo_empty:I

    sget v1, Lcom/cloud/tmc/miniapp/R$string;->status_empty_photo:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->showPhotoEmpty(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->showComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method private static final run$lambda$2(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->addData(Ljava/util/List;)V

    return-void
.end method

.method private static final run$lambda$3(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$finishLoad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->notifyImageListView()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->addData(Ljava/util/List;)V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->activity_image_select:I

    return v0
.end method

.method public getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getSlImageSelectStatus()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getTempData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewThemeMode()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hideStatusLoading()V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 2

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    const-string v1, "maxSelect"

    invoke-virtual {p0, v1, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    sget v1, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectMode:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->setSelectMode(I)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/f;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/f;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "ImageSelectActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public initView()V
    .locals 5

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->setStatusBarNightMode(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setRotationY(F)V

    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getIvImageSelect()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getLlAlbumSelect()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->setOnClickListener([Landroid/view/View;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnItemClickListener(Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->fl_image_select_check:I

    invoke-virtual {v0, v1, p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnChildClickListener(ILcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getRvImageSelectList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/widget/OooO00o;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/cloud/tmc/miniapp/widget/OooO00o;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_4
    return-void
.end method

.method public isLoadStatusLoadingOrError()Z
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->isLoadStatusLoadingOrError(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    return-void
.end method

.method public onChildClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectMode:I

    if-ne v1, v0, :cond_1

    invoke-direct {p0, p3}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->jumpPreviewActivity(I)V

    return-void

    :cond_1
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->fl_image_select_check:I

    if-ne p2, v1, :cond_9

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-virtual {p2, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_6

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->changeSelectTv()V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

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
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-lt p1, v1, :cond_4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    move p1, v2

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    if-lt v1, v2, :cond_7

    :try_start_0
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/cloud/tmc/miniapp/R$string;->image_select_max_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resources.getString(R.st\u2026ng.image_select_max_hint)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p3, v1, p1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/OooO;->OooO00o(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    if-ge p1, v0, :cond_8

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->changeSelectTv()V

    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "view"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onClick(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    const-string v3, "imageList"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    goto/16 :goto_5

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    goto/16 :goto_5

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getLlAlbumSelect()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, "allAlbum.keys"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "format(format, *args)"

    const-string v8, "getString(R.string.image_select_total)"

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    iget-object v6, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v5, v9

    new-instance v15, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    invoke-direct {v0, v12}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getLocalLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    sget v9, Lcom/cloud/tmc/miniapp/R$string;->image_select_total:I

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    new-array v13, v3, [Ljava/lang/Object;

    aput-object v8, v13, v2

    invoke-static {v13, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object v7

    if-ne v7, v6, :cond_5

    move v14, v3

    goto :goto_1

    :cond_5
    move v14, v2

    :goto_1
    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-instance v4, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    iget-object v6, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v9, "allImage[0]"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v6

    check-cast v17, Ljava/lang/String;

    sget v6, Lcom/cloud/tmc/miniapp/R$string;->image_select_all:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "getString(R.string.image_select_all)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v10, Lcom/cloud/tmc/miniapp/R$string;->image_select_all:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    sget v9, Lcom/cloud/tmc/miniapp/R$string;->image_select_total:I

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v5, v8, v2

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object v7

    iget-object v8, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    if-ne v7, v8, :cond_7

    move/from16 v21, v3

    goto :goto_2

    :cond_7
    move/from16 v21, v2

    :goto_2
    move-object/from16 v16, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v10

    move-object/from16 v20, v5

    invoke-direct/range {v16 .. v21}, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->albumDialog:Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

    if-nez v4, :cond_8

    new-instance v4, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

    invoke-direct {v4, v0}, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;

    invoke-direct {v5, v0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    iput-object v5, v4, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo000o;

    iput-object v4, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->albumDialog:Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

    :cond_8
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->albumDialog:Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

    if-eqz v4, :cond_b

    const-string v5, "data"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    invoke-virtual {v5, v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_3
    if-ge v2, v5, :cond_a

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    iget-boolean v6, v6, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0o0:Z

    if-eqz v6, :cond_9

    iget-object v1, v4, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_4

    :cond_9
    add-int/2addr v2, v3

    goto :goto_3

    :cond_a
    :goto_4
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    :cond_b
    :goto_5
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->jumpPreviewActivity(I)V

    return-void
.end method

.method public onRestart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "selectImage.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->changeSelectTv()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public run()V
    .locals 15

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "getContentUri(\"external\")"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "date_modified DESC"

    const-string v4, "(media_type=?) AND _size>0"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "contentResolver"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "_id"

    const-string v8, "_data"

    const-string v9, "_display_name"

    const-string v10, "date_modified"

    const-string v11, "mime_type"

    const-string v12, "width"

    const-string v13, "height"

    const-string v14, "_size"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "mime_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "_size"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "cursor.getString(mimeTypeIndex)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cursor.getString(pathIndex)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "parentFile.name"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x32

    if-ne v5, v6, :cond_6

    const/4 v6, 0x1

    iput-boolean v6, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->notifyImageListView()V

    goto :goto_0

    :cond_6
    rem-int/lit8 v6, v5, 0x64

    if-nez v6, :cond_7

    new-instance v6, Lcom/cloud/tmc/miniapp/ui/c;

    invoke-direct {v6, p0}, Lcom/cloud/tmc/miniapp/ui/c;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    invoke-virtual {p0, v6}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->post(Ljava/lang/Runnable;)Z

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_7
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/d;

    invoke-direct {v0, p0, v1}, Lcom/cloud/tmc/miniapp/ui/d;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->post(Ljava/lang/Runnable;)Z

    :cond_9
    iget-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->notifyImageListView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_a
    return-void
.end method

.method public setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V

    return-void
.end method

.method public showComplete()Z
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showComplete(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    move-result v0

    return v0
.end method

.method public showCustomErrorLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showCustomErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showError(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showLoading()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoading(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    return-void
.end method

.method public showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoadingLogo(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showMainLayoutAlpha(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showMainLayoutAlpha(Lcom/cloud/tmc/miniapp/action/StatusAction;F)V

    return-void
.end method

.method public showNoNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showPhotoEmpty(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showPhotoEmpty(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    return-void
.end method

.method public showStatusLoading()V
    .locals 0

    return-void
.end method

.method public showUnstableNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showUnstableNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public statusLayoutCreateShortCutsSuccess(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutCreateShortCutsSuccess(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public statusLayoutOnResume()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutOnResume(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    return-void
.end method

.method public updateStepAnimation(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->updateStepAnimation(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    return-void
.end method
