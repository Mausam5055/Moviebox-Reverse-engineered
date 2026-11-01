.class public final synthetic Lcom/transsion/payment/lib/strategy/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/billingclient/api/v;


# instance fields
.field public final synthetic a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/a;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/a;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-static {v0, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->f(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V

    return-void
.end method
