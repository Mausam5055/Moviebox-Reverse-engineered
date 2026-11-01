.class public final Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/trending/provider/RoomProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoomAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "item",
        "",
        "F1",
        "(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/RoomItem;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "E1",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;",
        "holder",
        "C1",
        "(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V",
        "F",
        "I",
        "coverSize",
        "RoomItemVH",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final G:I = 0x8


# instance fields
.field private final F:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/home/R$layout;->item_adapter_room_entrance_group:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x34

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;->F:I

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Lcom/transsion/moviedetailapi/bean/RoomItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;->D1(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Lcom/transsion/moviedetailapi/bean/RoomItem;Landroid/view/View;)V

    return-void
.end method

.method private static final D1(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Lcom/transsion/moviedetailapi/bean/RoomItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;->F1(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    return-void
.end method

.method private final F1(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/moviedetailapi/bean/RoomItem;->setNewPostCount(Ljava/lang/Long;)V

    sget-object v0, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/transsion/room/helper/l;->g(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    const-string v0, "/room/detail"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v0, "need_start_room_home"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p2, p1, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected C1(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/home/adapter/trending/provider/z;

    invoke-direct {v1, p0, p2}, Lcom/transsion/home/adapter/trending/provider/z;-><init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;->f()Lgl/h0;

    move-result-object v0

    iget-object v0, v0, Lgl/h0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lak/k;->d(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;->f()Lgl/h0;

    move-result-object v1

    iget-object v1, v1, Lgl/h0;->d:Lcom/noober/background/view/BLTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getAvatar()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p2

    iget v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;->F:I

    invoke-virtual {p2, v0}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object p2

    iget v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;->F:I

    invoke-virtual {p2, v0}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;->f()Lgl/h0;

    move-result-object p1

    iget-object p1, p1, Lgl/h0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v0, "ivCover"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method protected E1(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lgl/h0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/h0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;

    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;-><init>(Lgl/h0;)V

    return-object p2
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;

    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;->C1(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    return-void
.end method

.method public bridge synthetic y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;->E1(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter$RoomItemVH;

    move-result-object p1

    return-object p1
.end method
