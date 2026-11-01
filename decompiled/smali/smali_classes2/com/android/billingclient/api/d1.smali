.class public final synthetic Lcom/android/billingclient/api/d1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/result/a;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/ProxyBillingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ProxyBillingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/d1;->a:Lcom/android/billingclient/api/ProxyBillingActivity;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/d1;->a:Lcom/android/billingclient/api/ProxyBillingActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/ProxyBillingActivity;->H(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
