.class public abstract Lcom/transsion/member/premium/r;
.super Ljava/lang/Object;


# direct methods
.method public static final a()Lcom/transsion/memberapi/IPremiumApi;
    .locals 1

    new-instance v0, Lcom/transsion/member/premium/PremiumProvider;

    invoke-direct {v0}, Lcom/transsion/member/premium/PremiumProvider;-><init>()V

    return-object v0
.end method
