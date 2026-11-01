.class public final synthetic Lcom/transsion/home/adapter/trending/provider/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/w;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/w;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/w;->c:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/w;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/w;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/w;->c:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;->y(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter$a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V

    return-void
.end method
