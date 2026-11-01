.class public final synthetic Lcom/transsion/member/premium/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/member/premium/PremiumContentController;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/premium/PremiumContentController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/premium/g;->a:Lcom/transsion/member/premium/PremiumContentController;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/premium/g;->a:Lcom/transsion/member/premium/PremiumContentController;

    invoke-static {v0}, Lcom/transsion/member/premium/PremiumContentController;->d(Lcom/transsion/member/premium/PremiumContentController;)Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    return-object v0
.end method
