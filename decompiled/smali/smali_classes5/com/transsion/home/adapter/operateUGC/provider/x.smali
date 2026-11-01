.class public final synthetic Lcom/transsion/home/adapter/operateUGC/provider/x;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;

.field public final synthetic b:Lcom/transsion/home/bean/OperateItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;Lcom/transsion/home/bean/OperateItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/x;->a:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/x;->b:Lcom/transsion/home/bean/OperateItem;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/x;->a:Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;

    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/x;->b:Lcom/transsion/home/bean/OperateItem;

    invoke-static {v0, v1}, Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;->B(Lcom/transsion/home/adapter/operateUGC/provider/RoomUGCProvider;Lcom/transsion/home/bean/OperateItem;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
