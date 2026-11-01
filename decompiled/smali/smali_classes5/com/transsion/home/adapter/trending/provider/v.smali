.class public final synthetic Lcom/transsion/home/adapter/trending/provider/v;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

.field public final synthetic d:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic e:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/v;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/v;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/v;->c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

    iput-object p4, p0, Lcom/transsion/home/adapter/trending/provider/v;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lcom/transsion/home/adapter/trending/provider/v;->e:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/v;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/v;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/v;->c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

    iget-object v3, p0, Lcom/transsion/home/adapter/trending/provider/v;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/transsion/home/adapter/trending/provider/v;->e:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;

    move-object v5, p1

    check-cast v5, Lcom/transsion/home/bean/RoomEntranceResponse;

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;Lcom/transsion/home/bean/RoomEntranceResponse;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
