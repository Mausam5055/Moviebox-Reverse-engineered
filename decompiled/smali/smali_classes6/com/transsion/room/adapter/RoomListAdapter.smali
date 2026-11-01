.class public final Lcom/transsion/room/adapter/RoomListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;

# interfaces
.implements Lr6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;,
        Lcom/transsion/room/adapter/RoomListAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lr6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u000c\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u00010B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010!\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0014\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010#\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008#\u0010\u000fJ-\u0010\'\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00022\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0$H\u0014\u00a2\u0006\u0004\u0008\'\u0010(R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u0010/\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/room/adapter/RoomListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;",
        "Lr6/i;",
        "Lcom/transsion/room/adapter/RoomListFrom;",
        "roomListFrom",
        "",
        "isSelectRoom",
        "<init>",
        "(Lcom/transsion/room/adapter/RoomListFrom;Z)V",
        "holder",
        "item",
        "",
        "J1",
        "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V",
        "F1",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "latestPosts",
        "H1",
        "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "I1",
        "hasJoin",
        "E1",
        "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Z)V",
        "",
        "newCount",
        "G1",
        "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;J)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "D1",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;",
        "B1",
        "",
        "",
        "payloads",
        "C1",
        "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V",
        "F",
        "Lcom/transsion/room/adapter/RoomListFrom;",
        "G",
        "Z",
        "H",
        "I",
        "coverSize",
        "RoomListItemVH",
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
.field private final F:Lcom/transsion/room/adapter/RoomListFrom;

.field private final G:Z

.field private final H:I


# direct methods
.method public constructor <init>(Lcom/transsion/room/adapter/RoomListFrom;Z)V
    .locals 3

    const-string v0, "roomListFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/room/R$layout;->item_room_list:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/room/adapter/RoomListAdapter;->F:Lcom/transsion/room/adapter/RoomListFrom;

    iput-boolean p2, p0, Lcom/transsion/room/adapter/RoomListAdapter;->G:Z

    const/high16 p1, 0x42500000    # 52.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    return-void
.end method

.method private final E1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p1

    iget-object p1, p1, Lbq/y;->l:Lcom/tn/lib/view/RoomJoinAnimationView;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/tn/lib/view/RoomJoinStatus;->JOINED:Lcom/tn/lib/view/RoomJoinStatus;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/tn/lib/view/RoomJoinStatus;->JOIN:Lcom/tn/lib/view/RoomJoinStatus;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/tn/lib/view/RoomJoinAnimationView;->setStatus(Lcom/tn/lib/view/RoomJoinStatus;)V

    return-void
.end method

.method private final F1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getLatestPosts()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const-string v1, "groupNewPost"

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p1

    iget-object p1, p1, Lbq/y;->c:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v2

    iget-object v2, v2, Lbq/y;->c:Landroidx/constraintlayout/widget/Group;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v2

    iget-object v2, v2, Lbq/y;->i:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/transsion/room/R$string;->New_post:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v0

    :cond_6
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->I1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->H1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p2

    iget-object p2, p2, Lbq/y;->f:Lbq/c0;

    invoke-virtual {p2}, Lbq/c0;->b()Landroid/widget/FrameLayout;

    move-result-object p2

    const-string v0, "getRoot(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljg/c;->g(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p1

    iget-object p1, p1, Lbq/y;->e:Lbq/b0;

    invoke-virtual {p1}, Lbq/b0;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :goto_3
    return-void
.end method

.method private final G1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;J)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v1

    iget-object v1, v1, Lbq/y;->h:Lcom/noober/background/view/BLTextView;

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
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p1

    iget-object p1, p1, Lbq/y;->h:Lcom/noober/background/view/BLTextView;

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

.method private final H1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 5

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v2

    :cond_2
    :goto_1
    move-object p2, v2

    check-cast p2, Ljava/util/Collection;

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move p2, v1

    goto :goto_3

    :cond_4
    :goto_2
    move p2, v0

    :goto_3
    const-string v3, "getRoot(...)"

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p1

    iget-object p1, p1, Lbq/y;->e:Lbq/b0;

    invoke-virtual {p1}, Lbq/b0;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p2

    iget-object p2, p2, Lbq/y;->e:Lbq/b0;

    invoke-virtual {p2}, Lbq/b0;->b()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p2

    iget-object p2, p2, Lbq/y;->e:Lbq/b0;

    iget-object p2, p2, Lbq/b0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v3, "ivPostCover2"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_6

    move v3, v0

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    const/16 v4, 0x8

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p2

    iget-object p2, p2, Lbq/y;->e:Lbq/b0;

    iget-object p2, p2, Lbq/b0;->d:Lcom/noober/background/view/BLView;

    const-string v3, "vPostBg"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_8

    goto :goto_6

    :cond_8
    move v0, v1

    :goto_6
    if-eqz v0, :cond_9

    move v4, v1

    :cond_9
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    if-gez v1, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_a
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    if-nez v1, :cond_b

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v1

    iget-object v1, v1, Lbq/y;->e:Lbq/b0;

    iget-object v1, v1, Lbq/b0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    goto :goto_8

    :cond_b
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v1

    iget-object v1, v1, Lbq/y;->e:Lbq/b0;

    iget-object v1, v1, Lbq/b0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    :goto_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v3, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    iget v3, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    invoke-virtual {v0, v3}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v0

    iget v3, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    invoke-virtual {v0, v3}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_c
    move v1, v2

    goto :goto_7

    :cond_d
    :goto_9
    return-void
.end method

.method private final I1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    const-string p2, "getRoot(...)"

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v1

    iget-object v1, v1, Lbq/y;->f:Lbq/c0;

    invoke-virtual {v1}, Lbq/c0;->b()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    sget-object p2, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p2

    invoke-virtual {p2, v0}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p2

    iget v0, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    invoke-virtual {p2, v0}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object p2

    iget v0, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    invoke-virtual {p2, v0}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p1

    iget-object p1, p1, Lbq/y;->f:Lbq/c0;

    iget-object p1, p1, Lbq/c0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v0, "ivPostCover"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p1

    iget-object p1, p1, Lbq/y;->f:Lbq/c0;

    invoke-virtual {p1}, Lbq/c0;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method

.method private final J1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getHasJoin()Ljava/lang/Boolean;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->E1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Z)V

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p1

    iget-object p1, p1, Lbq/y;->l:Lcom/tn/lib/view/RoomJoinAnimationView;

    const-string p2, "vJoin"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected B1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "holder"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "item"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getAvatar()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    iget v3, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    invoke-virtual {v2, v3}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v2

    iget v3, p0, Lcom/transsion/room/adapter/RoomListAdapter;->H:I

    invoke-virtual {v2, v3}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v3

    iget-object v3, v3, Lbq/y;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v4, "ivCover"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_0
    iget-boolean v2, p0, Lcom/transsion/room/adapter/RoomListAdapter;->G:Z

    const-string v3, "groupNewPost"

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v0

    iget-object v0, v0, Lbq/y;->k:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v0

    iget-object v0, v0, Lbq/y;->g:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvMember"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v0

    iget-object v0, v0, Lbq/y;->j:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvTag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v0

    iget-object v0, v0, Lbq/y;->c:Landroidx/constraintlayout/widget/Group;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object p1

    iget-object p1, p1, Lbq/y;->k:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getNewPostCount()Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0

    :cond_2
    move-wide v7, v5

    :goto_0
    invoke-direct {p0, p1, v7, v8}, Lcom/transsion/room/adapter/RoomListAdapter;->G1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;J)V

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v2

    iget-object v2, v2, Lbq/y;->k:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lak/k;->d(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v2, "0"

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v7

    iget-object v7, v7, Lbq/y;->g:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getUserCount()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_4
    const-wide/16 v8, 0x1

    cmp-long v5, v5, v8

    if-nez v5, :cond_5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v5, Lcom/transsion/room/R$string;->one_members:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v5

    sget v6, Lcom/transsion/room/R$string;->x_members:I

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v2, v8, v0

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lph/c;->e()Lph/c$a;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getTags()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_3

    :cond_6
    move v5, v0

    :goto_3
    const/4 v6, 0x3

    if-le v5, v6, :cond_8

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getTags()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getTags()Ljava/util/List;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_a

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v6, :cond_9

    const-string v6, "\u4e28"

    invoke-virtual {v2, v6}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v8

    sget v9, Lcom/tn/lib/widget/R$color;->white_20:I

    invoke-static {v8, v9}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v8}, Lph/c$a;->c(I)Lph/c$a;

    :cond_9
    invoke-virtual {v2, v7}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v7

    sget v8, Lcom/tn/lib/widget/R$color;->white_60:I

    invoke-static {v7, v8}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lph/c$a;->c(I)Lph/c$a;

    move v6, v0

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v0

    iget-object v0, v0, Lbq/y;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Lph/c$a;->b()Lph/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/room/adapter/RoomListAdapter;->F:Lcom/transsion/room/adapter/RoomListFrom;

    sget-object v2, Lcom/transsion/room/adapter/RoomListAdapter$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_c

    if-ne v0, v4, :cond_b

    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v0

    iget-object v0, v0, Lbq/y;->c:Landroidx/constraintlayout/widget/Group;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->J1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    goto :goto_6

    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_c
    invoke-virtual {p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;->f()Lbq/y;

    move-result-object v0

    iget-object v0, v0, Lbq/y;->l:Lcom/tn/lib/view/RoomJoinAnimationView;

    const-string v1, "vJoin"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->F1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    :goto_6
    return-void
.end method

.method protected C1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;",
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

    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->E1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Z)V

    goto :goto_0

    :cond_1
    instance-of p3, p2, Ljava/lang/Long;

    if-eqz p3, :cond_2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/adapter/RoomListAdapter;->G1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected D1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lbq/y;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbq/y;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;

    invoke-direct {p2, p1}, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;-><init>(Lbq/y;)V

    return-object p2
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;

    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->B1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    return-void
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p1, Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;

    check-cast p2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/room/adapter/RoomListAdapter;->C1(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;
    .locals 0

    invoke-static {p0, p1}, Lr6/h;->a(Lr6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lr6/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/adapter/RoomListAdapter;->D1(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;

    move-result-object p1

    return-object p1
.end method
