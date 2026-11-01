.class public final synthetic Lcom/android/billingclient/api/s1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/i;

.field public final synthetic b:Lcom/android/billingclient/api/w;

.field public final synthetic c:Lcom/android/billingclient/api/s;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/w;Lcom/android/billingclient/api/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/s1;->a:Lcom/android/billingclient/api/i;

    iput-object p2, p0, Lcom/android/billingclient/api/s1;->b:Lcom/android/billingclient/api/w;

    iput-object p3, p0, Lcom/android/billingclient/api/s1;->c:Lcom/android/billingclient/api/s;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/s1;->a:Lcom/android/billingclient/api/i;

    iget-object v1, p0, Lcom/android/billingclient/api/s1;->b:Lcom/android/billingclient/api/w;

    iget-object v2, p0, Lcom/android/billingclient/api/s1;->c:Lcom/android/billingclient/api/s;

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/i;->U(Lcom/android/billingclient/api/w;Lcom/android/billingclient/api/s;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
