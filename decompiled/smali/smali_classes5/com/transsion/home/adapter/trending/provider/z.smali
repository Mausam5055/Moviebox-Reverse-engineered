.class public final synthetic Lcom/transsion/home/adapter/trending/provider/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/RoomItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/z;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/z;->b:Lcom/transsion/moviedetailapi/bean/RoomItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/z;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/z;->b:Lcom/transsion/moviedetailapi/bean/RoomItem;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;->B1(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Lcom/transsion/moviedetailapi/bean/RoomItem;Landroid/view/View;)V

    return-void
.end method
