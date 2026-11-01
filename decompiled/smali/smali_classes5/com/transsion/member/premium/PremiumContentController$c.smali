.class public final Lcom/transsion/member/premium/PremiumContentController$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/premium/PremiumContentController;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/premium/PremiumContentController;

.field final synthetic b:Lcom/transsion/memberapi/MemberDetail;


# direct methods
.method constructor <init>(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/MemberDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumContentController$c;->a:Lcom/transsion/member/premium/PremiumContentController;

    iput-object p2, p0, Lcom/transsion/member/premium/PremiumContentController$c;->b:Lcom/transsion/memberapi/MemberDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController$c;->a:Lcom/transsion/member/premium/PremiumContentController;

    invoke-static {v0}, Lcom/transsion/member/premium/PremiumContentController;->k(Lcom/transsion/member/premium/PremiumContentController;)Lcom/transsion/member/view/PremiumContentView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumContentController$c;->a:Lcom/transsion/member/premium/PremiumContentController;

    iget-object v1, p0, Lcom/transsion/member/premium/PremiumContentController$c;->b:Lcom/transsion/memberapi/MemberDetail;

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberInfo;->getVipLevel()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/member/premium/PremiumContentController$c;->b:Lcom/transsion/memberapi/MemberDetail;

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberInfo;->getDaysLeft()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    invoke-static {v0, v1, v2}, Lcom/transsion/member/premium/PremiumContentController;->j(Lcom/transsion/member/premium/PremiumContentController;II)V

    return-void
.end method
