.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/suboperate/provider/c;

.field public final synthetic b:Lcom/transsion/home/bean/OperateItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/c;Lcom/transsion/home/bean/OperateItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/b;->a:Lcom/transsion/home/adapter/suboperate/provider/c;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/b;->b:Lcom/transsion/home/bean/OperateItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/b;->a:Lcom/transsion/home/adapter/suboperate/provider/c;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/b;->b:Lcom/transsion/home/bean/OperateItem;

    invoke-static {v0, v1}, Lcom/transsion/home/adapter/suboperate/provider/c;->y(Lcom/transsion/home/adapter/suboperate/provider/c;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method
