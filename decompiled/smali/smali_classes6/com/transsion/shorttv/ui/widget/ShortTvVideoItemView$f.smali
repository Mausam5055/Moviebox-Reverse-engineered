.class public final Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/shorttv/ui/widget/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$f;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lqs/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$f;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getMShortTvViewModel$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lqs/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$f;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getData$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljs/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Media;->getVideo()Lcom/transsion/shorttv/bean/Video;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$f;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$isLoading$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$f;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$showRightMenu(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    return-void
.end method
