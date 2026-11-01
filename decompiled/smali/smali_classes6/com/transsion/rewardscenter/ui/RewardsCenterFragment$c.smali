.class public final Lcom/transsion/rewardscenter/ui/RewardsCenterFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->E1(Lcom/transsion/rewardscenterapi/Lottery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment$c;->a:Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    const-string p3, "resource"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "model"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dataSource"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment$c;->a:Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lvp/d;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lvp/d;->h:Landroidx/cardview/widget/CardView;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    const/4 p5, -0x2

    iput p5, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    move-object p3, p4

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "banner"

    const/4 p3, 0x2

    invoke-static {p1, p4, p3, p4}, Lcom/transsion/rewardscenter/utils/q;->c(Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return p2
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 6

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment$c;->a:Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lvp/d;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lvp/d;->h:Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "RewardsCenter"

    const-string v2, "--> banner image load failed"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment$c;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
