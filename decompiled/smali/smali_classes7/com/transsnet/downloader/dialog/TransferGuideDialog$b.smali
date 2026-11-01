.class public final Lcom/transsnet/downloader/dialog/TransferGuideDialog$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/dialog/TransferGuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/dialog/TransferGuideDialog$b$a;
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>([Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b;->a:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public g(Lcom/transsnet/downloader/dialog/TransferGuideDialog$b$a;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b;->a:[Ljava/lang/Integer;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {p1}, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b$a;->f()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b$a;->f()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b;->a:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)Lcom/transsnet/downloader/dialog/TransferGuideDialog$b$a;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_transfer_tips_dialog_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b$a;

    invoke-direct {p2, p1}, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b;->g(Lcom/transsnet/downloader/dialog/TransferGuideDialog$b$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/dialog/TransferGuideDialog$b;->h(Landroid/view/ViewGroup;I)Lcom/transsnet/downloader/dialog/TransferGuideDialog$b$a;

    move-result-object p1

    return-object p1
.end method
