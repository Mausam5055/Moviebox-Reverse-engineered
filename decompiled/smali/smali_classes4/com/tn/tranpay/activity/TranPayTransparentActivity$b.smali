.class public final Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tn/tranpay/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/activity/TranPayTransparentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/tranpay/activity/TranPayTransparentActivity;

.field final synthetic b:Lcom/tn/tranpay/d;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/activity/TranPayTransparentActivity;Lcom/tn/tranpay/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;->a:Lcom/tn/tranpay/activity/TranPayTransparentActivity;

    iput-object p2, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;->b:Lcom/tn/tranpay/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V
    .locals 4

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Lcom/tn/tranpay/b;->b()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranPayTransparentActivity: callback received, code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v0, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayClient;->e()V

    invoke-static {}, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->T()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;->a:Lcom/tn/tranpay/activity/TranPayTransparentActivity;

    invoke-static {v1}, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->R(Lcom/tn/tranpay/activity/TranPayTransparentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;->b:Lcom/tn/tranpay/d;

    invoke-interface {v0, p1, p2}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    iget-object p1, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;->a:Lcom/tn/tranpay/activity/TranPayTransparentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
