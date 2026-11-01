.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/y;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/provider/b0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/y;->a:Lcom/transsion/home/bean/OperateItem;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/y;->b:Lcom/transsion/home/adapter/suboperate/provider/b0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/y;->a:Lcom/transsion/home/bean/OperateItem;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/y;->b:Lcom/transsion/home/adapter/suboperate/provider/b0;

    invoke-static {v0, v1}, Lcom/transsion/home/adapter/suboperate/provider/b0;->z(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/b0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
