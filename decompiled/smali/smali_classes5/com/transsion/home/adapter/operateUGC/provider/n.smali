.class public final synthetic Lcom/transsion/home/adapter/operateUGC/provider/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/operateUGC/provider/p;

.field public final synthetic b:Lcom/transsion/home/bean/OperateItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/operateUGC/provider/p;Lcom/transsion/home/bean/OperateItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/n;->a:Lcom/transsion/home/adapter/operateUGC/provider/p;

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/n;->b:Lcom/transsion/home/bean/OperateItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/n;->a:Lcom/transsion/home/adapter/operateUGC/provider/p;

    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/n;->b:Lcom/transsion/home/bean/OperateItem;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/operateUGC/provider/p;->y(Lcom/transsion/home/adapter/operateUGC/provider/p;Lcom/transsion/home/bean/OperateItem;Landroid/view/View;)V

    return-void
.end method
