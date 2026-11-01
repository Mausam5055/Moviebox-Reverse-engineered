.class public final Lcom/tn/lib/view/MemberGuideBannerView$benefitMessageCarouselRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/lib/view/MemberGuideBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/tn/lib/view/MemberGuideBannerView$benefitMessageCarouselRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "UI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tn/lib/view/MemberGuideBannerView;


# direct methods
.method constructor <init>(Lcom/tn/lib/view/MemberGuideBannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/MemberGuideBannerView$benefitMessageCarouselRunnable$1;->this$0:Lcom/tn/lib/view/MemberGuideBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tn/lib/view/MemberGuideBannerView$benefitMessageCarouselRunnable$1;->this$0:Lcom/tn/lib/view/MemberGuideBannerView;

    invoke-static {v0}, Lcom/tn/lib/view/MemberGuideBannerView;->access$getShouldRotateBenefitMessages$p(Lcom/tn/lib/view/MemberGuideBannerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tn/lib/view/MemberGuideBannerView$benefitMessageCarouselRunnable$1;->this$0:Lcom/tn/lib/view/MemberGuideBannerView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/MemberGuideBannerView$benefitMessageCarouselRunnable$1;->this$0:Lcom/tn/lib/view/MemberGuideBannerView;

    invoke-static {v0}, Lcom/tn/lib/view/MemberGuideBannerView;->access$getBenefitMessageIndex$p(Lcom/tn/lib/view/MemberGuideBannerView;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/tn/lib/view/MemberGuideBannerView$benefitMessageCarouselRunnable$1;->this$0:Lcom/tn/lib/view/MemberGuideBannerView;

    invoke-static {v3}, Lcom/tn/lib/view/MemberGuideBannerView;->access$getBenefitMessageResIds$p(Lcom/tn/lib/view/MemberGuideBannerView;)[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/tn/lib/view/MemberGuideBannerView;->access$setBenefitMessageIndex$p(Lcom/tn/lib/view/MemberGuideBannerView;I)V

    iget-object v0, p0, Lcom/tn/lib/view/MemberGuideBannerView$benefitMessageCarouselRunnable$1;->this$0:Lcom/tn/lib/view/MemberGuideBannerView;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tn/lib/view/MemberGuideBannerView;->j(Lcom/tn/lib/view/MemberGuideBannerView;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tn/lib/view/MemberGuideBannerView$benefitMessageCarouselRunnable$1;->this$0:Lcom/tn/lib/view/MemberGuideBannerView;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
