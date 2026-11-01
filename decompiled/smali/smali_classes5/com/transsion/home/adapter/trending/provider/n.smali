.class public final synthetic Lcom/transsion/home/adapter/trending/provider/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/trending/provider/p;

.field public final synthetic b:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/trending/provider/p;Lcom/transsion/home/bean/OperateItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/n;->a:Lcom/transsion/home/adapter/trending/provider/p;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/n;->b:Lcom/transsion/home/bean/OperateItem;

    iput-boolean p3, p0, Lcom/transsion/home/adapter/trending/provider/n;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/n;->a:Lcom/transsion/home/adapter/trending/provider/p;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/n;->b:Lcom/transsion/home/bean/OperateItem;

    iget-boolean v2, p0, Lcom/transsion/home/adapter/trending/provider/n;->c:Z

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/trending/provider/p;->y(Lcom/transsion/home/adapter/trending/provider/p;Lcom/transsion/home/bean/OperateItem;ZLandroid/view/View;)V

    return-void
.end method
