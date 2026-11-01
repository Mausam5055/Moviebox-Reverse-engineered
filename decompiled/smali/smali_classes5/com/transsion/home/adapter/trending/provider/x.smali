.class public final synthetic Lcom/transsion/home/adapter/trending/provider/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field public final synthetic c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/x;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/x;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/x;->c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/x;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/x;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/x;->c:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;->y(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V

    return-void
.end method
