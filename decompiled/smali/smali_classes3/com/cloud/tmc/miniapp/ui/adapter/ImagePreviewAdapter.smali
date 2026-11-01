.class public final Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseResourceManager$delegate:Lkotlin/Lazy;

.field private final imageLoder$delegate:Lkotlin/Lazy;

.field private final mSelectImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mSelectImages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->mSelectImages:Ljava/util/List;

    sget-object p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$imageLoder$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$imageLoder$2;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->imageLoder$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$baseResourceManager$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$baseResourceManager$2;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->baseResourceManager$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->selectMode:I

    return-void
.end method

.method public static final synthetic access$getMSelectImages$p(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->mSelectImages:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getBaseResourceManager()Lcom/cloud/tmc/kernel/resource/IResourceProcessor;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->baseResourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-baseResourceManager>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    return-object v0
.end method

.method public final getImageLoder()Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->imageLoder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-imageLoder>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    return-object v0
.end method

.method public final getSelectMode()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->selectMode:I

    return v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
            "Ljava/lang/String;",
            ">.NormalViewHolder;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter$ViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;)V

    return-object p1
.end method

.method public final setSelectMode(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->selectMode:I

    return-void
.end method
