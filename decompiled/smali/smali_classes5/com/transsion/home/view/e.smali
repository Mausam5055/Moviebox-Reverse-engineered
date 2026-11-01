.class public final synthetic Lcom/transsion/home/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/transsion/home/view/OpRankingView;

.field public final synthetic c:Lcom/transsion/home/bean/OperateItem;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/home/view/OpRankingView;Lcom/transsion/home/bean/OperateItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/view/e;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/home/view/e;->b:Lcom/transsion/home/view/OpRankingView;

    iput-object p3, p0, Lcom/transsion/home/view/e;->c:Lcom/transsion/home/bean/OperateItem;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/home/view/e;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/home/view/e;->b:Lcom/transsion/home/view/OpRankingView;

    iget-object v2, p0, Lcom/transsion/home/view/e;->c:Lcom/transsion/home/bean/OperateItem;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/view/OpRankingView;->d(Ljava/util/List;Lcom/transsion/home/view/OpRankingView;Lcom/transsion/home/bean/OperateItem;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
