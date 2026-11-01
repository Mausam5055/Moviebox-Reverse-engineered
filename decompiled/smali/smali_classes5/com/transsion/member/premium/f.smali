.class public final synthetic Lcom/transsion/member/premium/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/member/premium/PremiumContentController;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/premium/PremiumContentController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/premium/f;->a:Lcom/transsion/member/premium/PremiumContentController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/premium/f;->a:Lcom/transsion/member/premium/PremiumContentController;

    check-cast p1, Lcom/transsion/memberapi/AllMemberRightsData;

    invoke-static {v0, p1}, Lcom/transsion/member/premium/PremiumContentController;->g(Lcom/transsion/member/premium/PremiumContentController;Lcom/transsion/memberapi/AllMemberRightsData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
