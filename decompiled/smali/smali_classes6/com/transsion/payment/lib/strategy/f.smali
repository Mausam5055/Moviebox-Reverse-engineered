.class public final synthetic Lcom/transsion/payment/lib/strategy/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/billingclient/api/s;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

.field public final synthetic d:Lcom/transsion/payment/lib/b;

.field public final synthetic e:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/payment/lib/strategy/f;->a:Z

    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/payment/lib/strategy/f;->c:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    iput-object p4, p0, Lcom/transsion/payment/lib/strategy/f;->d:Lcom/transsion/payment/lib/b;

    iput-object p5, p0, Lcom/transsion/payment/lib/strategy/f;->e:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/payment/lib/strategy/f;->a:Z

    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/f;->c:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/f;->d:Lcom/transsion/payment/lib/b;

    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/f;->e:Landroid/app/Activity;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->d(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;Lcom/android/billingclient/api/n;Ljava/util/List;)V

    return-void
.end method
