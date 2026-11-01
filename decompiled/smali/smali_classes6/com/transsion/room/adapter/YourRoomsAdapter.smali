.class public final Lcom/transsion/room/adapter/YourRoomsAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J-\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00022\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/room/adapter/YourRoomsAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;",
        "<init>",
        "()V",
        "holder",
        "",
        "newCount",
        "",
        "E1",
        "(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;J)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "D1",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;",
        "item",
        "B1",
        "(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V",
        "",
        "",
        "payloads",
        "C1",
        "(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V",
        "F",
        "I",
        "coverSize",
        "YourRoomsItemVH",
        "Room_psRelease"
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
.field private final F:I


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/room/R$layout;->item_your_rooms:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v0, 0x429c0000    # 78.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/room/adapter/YourRoomsAdapter;->F:I

    return-void
.end method

.method private final E1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;J)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;->f()Lbq/a0;

    move-result-object v1

    iget-object v1, v1, Lbq/a0;->d:Lcom/noober/background/view/BLTextView;

    const-string v2, "tvNewCount"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v1, 0x63

    cmp-long v1, p2, v1

    if-lez v1, :cond_2

    const-string p2, "99+"

    goto :goto_2

    :cond_2
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1}, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;->f()Lbq/a0;

    move-result-object p1

    iget-object p1, p1, Lbq/a0;->d:Lcom/noober/background/view/BLTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p3

    sget v1, Lcom/transsion/room/R$string;->x_new:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected B1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    iget v1, p0, Lcom/transsion/room/adapter/YourRoomsAdapter;->F:I

    invoke-virtual {v0, v1}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v0

    iget v1, p0, Lcom/transsion/room/adapter/YourRoomsAdapter;->F:I

    invoke-virtual {v0, v1}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;->f()Lbq/a0;

    move-result-object v1

    iget-object v1, v1, Lbq/a0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v2, "ivCover"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;->f()Lbq/a0;

    move-result-object v0

    iget-object v0, v0, Lbq/a0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getNewPostCount()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/room/adapter/YourRoomsAdapter;->E1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;J)V

    return-void
.end method

.method protected C1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Long;

    if-eqz p3, :cond_1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/adapter/YourRoomsAdapter;->E1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;J)V

    :cond_1
    return-void
.end method

.method protected D1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lbq/a0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbq/a0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;

    invoke-direct {p2, p1}, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;-><init>(Lbq/a0;)V

    return-object p2
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;

    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/YourRoomsAdapter;->B1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    return-void
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p1, Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;

    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/room/adapter/YourRoomsAdapter;->C1(Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/YourRoomsAdapter;->D1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/YourRoomsAdapter$YourRoomsItemVH;

    move-result-object p1

    return-object p1
.end method
