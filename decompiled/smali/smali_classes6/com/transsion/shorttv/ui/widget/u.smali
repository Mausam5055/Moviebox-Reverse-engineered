.class public final synthetic Lcom/transsion/shorttv/ui/widget/u;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

.field public final synthetic b:Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/u;->a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/u;->b:Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;

    iput-boolean p3, p0, Lcom/transsion/shorttv/ui/widget/u;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/u;->a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/u;->b:Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;

    iget-boolean v2, p0, Lcom/transsion/shorttv/ui/widget/u;->c:Z

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;->i(Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;Lcom/transsion/shorttv/ui/adapter/ShortTvOpRankingAdapter;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
