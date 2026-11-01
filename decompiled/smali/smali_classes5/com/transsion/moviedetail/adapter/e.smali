.class public final synthetic Lcom/transsion/moviedetail/adapter/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Lcom/transsion/moviedetail/adapter/i$a;

.field public final synthetic c:Lcom/transsion/moviedetail/adapter/i;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetail/adapter/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/e;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lcom/transsion/moviedetail/adapter/e;->b:Lcom/transsion/moviedetail/adapter/i$a;

    iput-object p3, p0, Lcom/transsion/moviedetail/adapter/e;->c:Lcom/transsion/moviedetail/adapter/i;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/e;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p0, Lcom/transsion/moviedetail/adapter/e;->b:Lcom/transsion/moviedetail/adapter/i$a;

    iget-object v2, p0, Lcom/transsion/moviedetail/adapter/e;->c:Lcom/transsion/moviedetail/adapter/i;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/moviedetail/adapter/i;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetail/adapter/i$a;Lcom/transsion/moviedetail/adapter/i;Lcom/transsion/moviedetailapi/bean/RoomEntranceResponse;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
