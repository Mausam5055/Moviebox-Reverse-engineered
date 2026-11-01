.class public final Lcom/transsion/moviedetail/adapter/i$a;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetail/adapter/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/moviedetail/adapter/i$a;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "pageName",
        "<init>",
        "(Ljava/lang/String;)V",
        "item",
        "",
        "position",
        "",
        "G1",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V",
        "holder",
        "D1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "F",
        "Ljava/lang/String;",
        "G",
        "I",
        "coverSize",
        "MovieDetail_psRelease"
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
.field private final F:Ljava/lang/String;

.field private final G:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "pageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/moviedetail/R$layout;->movie_detail_item_for_you_post_item:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/i$a;->F:Ljava/lang/String;

    const/16 p1, 0x70

    invoke-static {p1}, Ldk/a;->b(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/moviedetail/adapter/i$a;->G:I

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/moviedetail/adapter/i$a;->E1(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C1(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/moviedetail/adapter/i$a;->F1(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private static final E1(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Landroid/view/View;)V
    .locals 10

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "/room/detail"

    invoke-static {v3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v3, "need_start_room_home"

    invoke-virtual {v1, v3, v0}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object v1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, p1, v2, p3, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    const-string p1, "source"

    const-string v1, "for_you"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const-string v1, "module_name"

    const-string v2, "group"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v3

    :cond_2
    const-string v4, "user_id"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v3

    :cond_3
    const-string v5, "post_id"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    move-object v5, v3

    :cond_5
    const-string v6, "post_media_type"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    :cond_6
    move-object v6, v3

    :cond_7
    const-string v7, "subject_id"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    :cond_8
    move-object v7, v3

    :cond_9
    const-string v8, "subject_type"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    const-string v9, "is_cache_post"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_a

    goto :goto_1

    :cond_a
    move-object v3, v9

    :cond_b
    :goto_1
    const-string v9, "group_id"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const-string v9, "ops"

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/16 v9, 0xa

    new-array v9, v9, [Lkotlin/Pair;

    aput-object p1, v9, v0

    const/4 p1, 0x1

    aput-object v1, v9, p1

    aput-object v2, v9, p3

    const/4 p1, 0x3

    aput-object v4, v9, p1

    const/4 p1, 0x4

    aput-object v5, v9, p1

    const/4 p1, 0x5

    aput-object v6, v9, p1

    const/4 p1, 0x6

    aput-object v7, v9, p1

    const/4 p1, 0x7

    aput-object v8, v9, p1

    const/16 p1, 0x8

    aput-object v3, v9, p1

    const/16 p1, 0x9

    aput-object p0, v9, p1

    invoke-static {v9}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    sget-object p1, Lhj/i;->a:Lhj/i;

    iget-object p2, p2, Lcom/transsion/moviedetail/adapter/i$a;->F:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static final F1(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/moviedetail/adapter/i$a;->G1(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V

    return-void
.end method

.method private final G1(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_1

    move-object v3, v4

    :cond_1
    const-string v5, "post_id"

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const-string v5, "position"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const-string v6, "source"

    const-string v7, "for_you"

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const-string v7, "module_name"

    const-string v8, "item"

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    const-string v9, "is_cache_post"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    :cond_2
    move-object v9, v4

    :cond_3
    const-string v10, "user_id"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    :cond_4
    move-object v10, v4

    :cond_5
    const-string v11, "group_id"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    :cond_6
    move-object v11, v4

    :cond_7
    const-string v12, "subject_id"

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    goto :goto_0

    :cond_8
    move-object v4, v12

    :cond_9
    :goto_0
    const-string v12, "subject_type"

    invoke-static {v12, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_b

    :cond_a
    sget-object v12, Lcom/transsion/moviedetailapi/bean/MediaType;->TEXT:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v12

    :cond_b
    const-string v13, "post_media_type"

    invoke-static {v13, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const-string v13, "ops"

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/16 v14, 0xb

    new-array v14, v14, [Lkotlin/Pair;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    aput-object v5, v14, v1

    const/4 v3, 0x2

    aput-object v6, v14, v3

    const/4 v3, 0x3

    aput-object v7, v14, v3

    const/4 v3, 0x4

    aput-object v8, v14, v3

    const/4 v3, 0x5

    aput-object v9, v14, v3

    const/4 v3, 0x6

    aput-object v10, v14, v3

    const/4 v3, 0x7

    aput-object v11, v14, v3

    const/16 v3, 0x8

    aput-object v4, v14, v3

    const/16 v3, 0x9

    aput-object v12, v14, v3

    const/16 v3, 0xa

    aput-object v13, v14, v3

    invoke-static {v14}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lhj/i;->a:Lhj/i;

    iget-object v5, v0, Lcom/transsion/moviedetail/adapter/i$a;->F:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    sget-object v3, Laq/h;->a:Laq/h;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/transsion/moviedetail/adapter/i$a;->F:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v5, v1}, Laq/h;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_3

    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/moviedetailapi/bean/Image;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    sget-object v2, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v1

    :cond_6
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    :cond_7
    move-object v4, v3

    :cond_8
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_c

    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_a

    move-object v4, v3

    :cond_a
    invoke-virtual {v2, v4}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    iget v4, p0, Lcom/transsion/moviedetail/adapter/i$a;->G:I

    invoke-virtual {v2, v4}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v2

    iget v4, p0, Lcom/transsion/moviedetail/adapter/i$a;->G:I

    invoke-virtual {v2, v4}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_b

    move-object v0, v3

    :cond_b
    invoke-virtual {v2, v0}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    sget v2, Lcom/transsion/moviedetail/R$id;->ivCover:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_c
    sget v0, Lcom/transsion/moviedetail/R$id;->ivVideoPlay:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_d
    move-object v2, v1

    :goto_5
    sget-object v4, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_6

    :cond_e
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/moviedetail/R$id;->tvRoomTitle:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Group;->getAvatar()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_7

    :cond_10
    move-object v3, v1

    :cond_11
    :goto_7
    invoke-virtual {v0, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v0

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v0

    sget v1, Lcom/transsion/moviedetail/R$id;->ivRoomCover:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v0, Lcom/transsion/moviedetail/R$id;->vRoomInfo:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/moviedetail/adapter/g;

    invoke-direct {v1, p2, p1, p0}, Lcom/transsion/moviedetail/adapter/g;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/moviedetail/adapter/h;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/moviedetail/adapter/h;-><init>(Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/adapter/i$a;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method
