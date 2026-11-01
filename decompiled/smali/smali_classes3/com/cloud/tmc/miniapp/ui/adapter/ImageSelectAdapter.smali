.class public final Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;
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

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->mSelectImages:Ljava/util/List;

    sget-object p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$imageLoder$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$imageLoder$2;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->imageLoder$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->selectMode:I

    return-void
.end method


# virtual methods
.method public generateDefaultLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$m;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final getImageLoder()Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->imageLoder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-imageLoder>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    return-object v0
.end method

.method public final getSelectMode()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->selectMode:I

    return v0
.end method

.method public final getSelectNum(Ljava/lang/String;)I
    .locals 1

    const-string v0, "imagePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->mSelectImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;

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

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter$ViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;)V

    return-object p1
.end method

.method public final setSelectMode(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->selectMode:I

    return-void
.end method
