.class public final synthetic Lcom/transsion/shorttv/ui/adapter/provider/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/adapter/provider/i;

.field public final synthetic b:Lcom/transsion/shorttv/bean/OperateItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/adapter/provider/i;Lcom/transsion/shorttv/bean/OperateItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/h;->a:Lcom/transsion/shorttv/ui/adapter/provider/i;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/adapter/provider/h;->b:Lcom/transsion/shorttv/bean/OperateItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/provider/h;->a:Lcom/transsion/shorttv/ui/adapter/provider/i;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/provider/h;->b:Lcom/transsion/shorttv/bean/OperateItem;

    invoke-static {v0, v1}, Lcom/transsion/shorttv/ui/adapter/provider/i;->y(Lcom/transsion/shorttv/ui/adapter/provider/i;Lcom/transsion/shorttv/bean/OperateItem;)V

    return-void
.end method
