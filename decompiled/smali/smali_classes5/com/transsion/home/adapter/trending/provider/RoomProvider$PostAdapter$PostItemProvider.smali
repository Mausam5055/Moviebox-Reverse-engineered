.class public final Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostItemProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;
    }
.end annotation


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Laq/i;

.field private final g:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Laq/i;)V
    .locals 1

    const-string v0, "trendingRoomsViewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->f:Laq/i;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->b(F)I

    move-result p1

    add-int/lit8 p1, p1, -0x3c

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    const/4 p2, 0x3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->g:I

    const/16 p1, 0x70

    invoke-static {p1}, Ldk/a;->b(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->h:I

    return-void
.end method

.method private static final B(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->E(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V

    return-void
.end method

.method private static final C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "/room/detail"

    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v2, "need_start_room_home"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/room/helper/l;->c(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method private final E(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V
    .locals 18

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    move-object/from16 v10, p0

    iget-object v1, v10, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->e:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x40

    const/4 v9, 0x0

    const-string v3, ""

    const-string v5, "item"

    const/4 v7, 0x0

    move/from16 v4, p2

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v9}, Lcom/transsion/postdetail/helper/a;->z(Lcom/transsion/postdetail/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v11, Laq/h;->a:Laq/h;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p1

    invoke-static/range {v11 .. v17}, Laq/h;->k(Laq/h;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->B(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 8

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/home/adapter/trending/provider/x;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/home/adapter/trending/provider/x;-><init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lgl/i0;

    move-result-object v0

    iget-object v0, v0, Lgl/i0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivVideoPlay"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    sget-object v1, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v6, ""

    if-eqz v1, :cond_5

    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v2

    :goto_4
    invoke-direct {v0, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    move-object v1, v2

    :cond_8
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    :cond_9
    move-object v3, v6

    :cond_a
    invoke-direct {v0, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    move-object v0, v2

    :goto_6
    const-string v1, "ivCover"

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lgl/i0;

    move-result-object v3

    iget-object v3, v3, Lgl/i0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljg/c;->k(Landroid/view/View;)V

    sget-object v3, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v7}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_d

    move-object v0, v6

    :cond_d
    invoke-virtual {v3, v0}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lgl/i0;

    move-result-object v3

    iget-object v3, v3, Lgl/i0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto :goto_8

    :cond_e
    :goto_7
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lgl/i0;

    move-result-object v0

    iget-object v0, v0, Lgl/i0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :goto_8
    sget-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->p:Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;

    invoke-virtual {v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;->a()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lgl/i0;

    move-result-object v1

    iget-object v1, v1, Lgl/i0;->f:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_f
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Group;->getAvatar()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_9

    :cond_10
    move-object v6, v2

    :cond_11
    :goto_9
    invoke-virtual {v1, v6}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ldk/a;->b(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v1

    invoke-static {v2}, Ldk/a;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lgl/i0;

    move-result-object v2

    iget-object v2, v2, Lgl/i0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v3, "ivRoomCover"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lgl/i0;

    move-result-object v1

    iget-object v1, v1, Lgl/i0;->g:Landroid/view/View;

    new-instance v2, Lcom/transsion/home/adapter/trending/provider/y;

    invoke-direct {v2, p2}, Lcom/transsion/home/adapter/trending/provider/y;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lgl/i0;

    move-result-object p2

    iget-object p2, p2, Lgl/i0;->b:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_a

    :cond_13
    move v4, v5

    :goto_a
    invoke-virtual {p2, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;->f()Lgl/i0;

    move-result-object p1

    invoke-virtual {p1}, Lgl/i0;->b()Lcom/noober/background/view/BLConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;->a()Z

    move-result p2

    if-eqz p2, :cond_14

    const/16 p2, 0xb6

    :goto_b
    invoke-static {p2}, Ldk/a;->b(I)I

    move-result p2

    goto :goto_c

    :cond_14
    const/16 p2, 0xa8

    goto :goto_b

    :goto_c
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public D(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lgl/i0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/i0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lgl/i0;->b()Lcom/noober/background/view/BLConstraintLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->g:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance p2, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;

    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;-><init>(Lgl/i0;)V

    return-object p2
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_adapter_room_entrance_post:I

    return v0
.end method

.method public bridge synthetic r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->D(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;

    move-result-object p1

    return-object p1
.end method
