.class public final synthetic Lcom/transsion/home/tv/adapter/m;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic b:Lcom/transsion/home/tv/adapter/n;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/tv/adapter/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/adapter/m;->a:Lcom/transsion/home/bean/OperateItem;

    iput-object p2, p0, Lcom/transsion/home/tv/adapter/m;->b:Lcom/transsion/home/tv/adapter/n;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/tv/adapter/m;->a:Lcom/transsion/home/bean/OperateItem;

    iget-object v1, p0, Lcom/transsion/home/tv/adapter/m;->b:Lcom/transsion/home/tv/adapter/n;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/home/tv/adapter/n;->y(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/tv/adapter/n;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
