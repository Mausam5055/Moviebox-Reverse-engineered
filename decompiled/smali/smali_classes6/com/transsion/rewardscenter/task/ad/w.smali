.class public final Lcom/transsion/rewardscenter/task/ad/w;
.super Lcom/transsion/ad/bidding/base/u;


# instance fields
.field private final b:Lvp/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/u;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lvp/k;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lvp/k;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/w;->b:Lvp/k;

    return-void
.end method


# virtual methods
.method public a()Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/cloud/hisavana/sdk/api/view/AdCloseView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/w;->b:Lvp/k;

    iget-object v0, v0, Lvp/k;->b:Landroid/widget/ImageView;

    const-string v1, "adIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public g()Lcom/cloud/hisavana/sdk/api/view/MediaView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/w;->b:Lvp/k;

    invoke-virtual {v0}, Lvp/k;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public j()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/w;->b:Lvp/k;

    iget-object v0, v0, Lvp/k;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "adTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
