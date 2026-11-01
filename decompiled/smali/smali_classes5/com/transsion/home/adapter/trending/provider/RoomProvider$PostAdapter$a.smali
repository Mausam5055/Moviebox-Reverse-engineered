.class public final Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->b(F)I

    move-result p1

    add-int/lit8 p1, p1, -0x3c

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/4 v0, 0x3

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static final A(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 10

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result v4

    const/16 v8, 0x40

    const/4 v9, 0x0

    const-string v3, ""

    const-string v5, "item"

    const/4 v7, 0x0

    move-object v6, p2

    invoke-static/range {v0 .. v9}, Lcom/transsion/postdetail/helper/a;->z(Lcom/transsion/postdetail/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;ILjava/lang/Object;)V

    const-string p1, "page_from"

    iget-object p0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->e:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const-string p1, "module_name"

    const-string p2, "item_post_more"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Lkotlin/Pair;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    const/4 p0, 0x1

    aput-object p1, p2, p0

    invoke-static {p2}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Laq/h;->a:Laq/h;

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->F()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Laq/h;->i(Laq/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->A(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_adapter_room_entrance_post_more:I

    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->f:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-object p1
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/home/adapter/trending/provider/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/w;-><init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/home/R$id;->root_view:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget-object p2, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->p:Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;

    invoke-virtual {p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xb6

    :goto_0
    invoke-static {p2}, Ldk/a;->b(I)I

    move-result p2

    goto :goto_1

    :cond_0
    const/16 p2, 0xa8

    goto :goto_0

    :goto_1
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
