.class public final synthetic Lcom/transsion/shorttv/ui/widget/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

.field public final synthetic b:Lcom/transsion/shorttv/bean/OperateItem;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;Lcom/transsion/shorttv/bean/OperateItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/w;->a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/w;->b:Lcom/transsion/shorttv/bean/OperateItem;

    iput-boolean p3, p0, Lcom/transsion/shorttv/ui/widget/w;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/w;->a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/w;->b:Lcom/transsion/shorttv/bean/OperateItem;

    iget-boolean v2, p0, Lcom/transsion/shorttv/ui/widget/w;->c:Z

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;->m(Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;Lcom/transsion/shorttv/bean/OperateItem;ZLandroid/view/View;)V

    return-void
.end method
