.class public final synthetic Lcom/transsion/shorttv/ui/widget/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/t;->a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/widget/t;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/t;->a:Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;

    iget-boolean v1, p0, Lcom/transsion/shorttv/ui/widget/t;->b:Z

    invoke-static {v0, v1, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;->h(Lcom/transsion/shorttv/ui/widget/ShortTvOpRankingView;ZLandroid/view/View;)V

    return-void
.end method
