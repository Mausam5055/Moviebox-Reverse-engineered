.class public final synthetic Lcom/transsion/shorttv/ui/adapter/provider/n;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/bean/OperateItem;

.field public final synthetic b:Lcom/transsion/shorttv/ui/adapter/provider/p;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/bean/OperateItem;Lcom/transsion/shorttv/ui/adapter/provider/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/n;->a:Lcom/transsion/shorttv/bean/OperateItem;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/adapter/provider/n;->b:Lcom/transsion/shorttv/ui/adapter/provider/p;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/provider/n;->a:Lcom/transsion/shorttv/bean/OperateItem;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/provider/n;->b:Lcom/transsion/shorttv/ui/adapter/provider/p;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/provider/p;->z(Lcom/transsion/shorttv/bean/OperateItem;Lcom/transsion/shorttv/ui/adapter/provider/p;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
