.class public final synthetic Lcom/transsion/home/adapter/operateUGC/provider/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;

.field public final synthetic d:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->a:Lcom/transsion/home/bean/OperateItem;

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->c:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;

    iput-object p4, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->d:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->a:Lcom/transsion/home/bean/OperateItem;

    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->c:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;

    iget-object v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/a0;->d:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;

    check-cast p1, Lcom/transsion/home/bean/RoomEntranceResponse;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->y(Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider$PostAdapter;Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;Lcom/transsion/home/bean/RoomEntranceResponse;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
