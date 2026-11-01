.class public final synthetic Lcom/transsion/shorttv_pugc/ui/adapter/provider/k;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/bean/OperateItem;

.field public final synthetic b:Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/bean/OperateItem;Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/k;->a:Lcom/transsion/shorttv_pugc/bean/OperateItem;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/k;->b:Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/k;->a:Lcom/transsion/shorttv_pugc/bean/OperateItem;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/k;->b:Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;->z(Lcom/transsion/shorttv_pugc/bean/OperateItem;Lcom/transsion/shorttv_pugc/ui/adapter/provider/m;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
