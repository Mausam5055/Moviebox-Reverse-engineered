.class public final Lcom/transsion/home/fragment/home/t;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

.field private b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->onAdViewDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->onAdViewDestroy()V

    :cond_1
    return-void
.end method

.method public final b(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Lkotlinx/coroutines/n0;)V
    .locals 4

    const-string p4, "flGameCenter"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "flPhoneCenter"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "leftLogo"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    const/4 v0, 0x2

    const-string v1, "getContext(...)"

    const/4 v2, 0x0

    if-nez p4, :cond_2

    new-instance p4, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p4, v3, v2, v0, v2}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p4, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    const-string v3, "HomeRIGHTTopGameNonstandardScene"

    invoke-virtual {p4, v3}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->setSceneId(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    if-eqz p4, :cond_0

    new-instance v3, Lcom/transsion/home/fragment/home/t$a;

    invoke-direct {v3, p1}, Lcom/transsion/home/fragment/home/t$a;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {p4, v3}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->setIrregularAdListener(Ldi/a;)V

    :cond_0
    iget-object p4, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->loadAd()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p4, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    if-nez p1, :cond_5

    new-instance p1, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p4, v2, v0, v2}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    const-string p4, "HomeLeftTopBrandNonstandardScene"

    invoke-virtual {p1, p4}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->setSceneId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    if-eqz p1, :cond_3

    new-instance p4, Lcom/transsion/home/fragment/home/t$b;

    invoke-direct {p4, p3, p2}, Lcom/transsion/home/fragment/home/t$b;-><init>(Landroid/view/View;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, p4}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->setIrregularAdListener(Ldi/a;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->loadAd()V

    :cond_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->loadAd()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->loadAd()V

    :cond_1
    return-void
.end method
