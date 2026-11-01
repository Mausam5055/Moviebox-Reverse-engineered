.class public Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ.\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;",
        "Ljava/io/Serializable;",
        "imageList",
        "",
        "Lcom/transsion/moviedetailapi/bean/Image;",
        "<init>",
        "(Ljava/util/List;)V",
        "getImageList",
        "()Ljava/util/List;",
        "statusHeight",
        "",
        "generateItemView",
        "Lcom/transsion/ninegridview/video/NineGridItemView;",
        "context",
        "Landroid/content/Context;",
        "onItemClick",
        "",
        "nineGridVideoView",
        "Lcom/transsion/ninegridview/video/NineGridVideoView;",
        "index",
        "NineGridView_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private statusHeight:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Image;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imageList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;->imageList:Ljava/util/List;

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result p1

    iput p1, p0, Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;->statusHeight:I

    return-void
.end method


# virtual methods
.method public final generateItemView(Landroid/content/Context;)Lcom/transsion/ninegridview/video/NineGridItemView;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/ninegridview/video/NineGridItemView;

    invoke-direct {v0, p1}, Lcom/transsion/ninegridview/video/NineGridItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public final onItemClick(Landroid/content/Context;Lcom/transsion/ninegridview/video/NineGridVideoView;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/ninegridview/video/NineGridVideoView;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Image;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nineGridVideoView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p4, :cond_0

    move-object v1, p4

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/Image;

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-virtual {v2, v4}, Lcom/transsion/moviedetailapi/bean/Image;->setImageViewX(I)V

    const/4 v4, 0x1

    aget v3, v3, v4

    iget v4, p0, Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;->statusHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/transsion/moviedetailapi/bean/Image;->setImageViewY(I)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/transsion/moviedetailapi/bean/Image;->setImageViewHeight(F)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/transsion/moviedetailapi/bean/Image;->setImageViewWidth(F)V

    goto :goto_0

    :cond_0
    const-string p2, "null cannot be cast to non-null type java.io.Serializable"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/io/Serializable;

    const-string p2, "image_list"

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "CURRENT_ITEM"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
