.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/n0;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/n0;->a:Lcom/transsion/home/bean/OperateItem;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/n0;->b:Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/n0;->a:Lcom/transsion/home/bean/OperateItem;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/n0;->b:Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->y(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
