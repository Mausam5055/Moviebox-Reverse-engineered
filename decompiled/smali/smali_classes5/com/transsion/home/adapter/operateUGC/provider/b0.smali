.class public final synthetic Lcom/transsion/home/adapter/operateUGC/provider/b0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field public final synthetic c:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/b0;->a:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/b0;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/b0;->c:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/b0;->a:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;

    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/b0;->b:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/b0;->c:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;->y(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter$PostItemProvider$PostItemVH;Landroid/view/View;)V

    return-void
.end method
