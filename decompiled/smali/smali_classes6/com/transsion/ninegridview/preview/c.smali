.class public final Lcom/transsion/ninegridview/preview/c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/c;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 3

    sget-object v0, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;->d:Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/c;->b:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/transsion/ninegridview/preview/c;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/Image;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewFragment$a;->a(Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Image;I)Lcom/transsion/ninegridview/preview/GifImagePreviewFragment;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/c;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/c;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/c;->a:Ljava/util/List;

    return-void
.end method
