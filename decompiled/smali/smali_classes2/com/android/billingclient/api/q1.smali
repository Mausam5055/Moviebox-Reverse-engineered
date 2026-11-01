.class final Lcom/android/billingclient/api/q1;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/billingclient/api/p1;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/t0;Lcom/android/billingclient/api/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/q1;->a:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/p1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p3, p2}, Lcom/android/billingclient/api/p1;-><init>(Lcom/android/billingclient/api/q1;Lcom/android/billingclient/api/t0;Lcom/android/billingclient/api/n0;Lcom/android/billingclient/api/n1;)V

    iput-object p1, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/c;Lcom/android/billingclient/api/n0;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/q1;->a:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/p1;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/p1;-><init>(Lcom/android/billingclient/api/q1;Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/c;Lcom/android/billingclient/api/n0;Lcom/android/billingclient/api/n1;)V

    iput-object p1, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    return-void
.end method

.method static bridge synthetic a(Lcom/android/billingclient/api/q1;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/q1;->a:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/android/billingclient/api/q1;)Lcom/android/billingclient/api/p1;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    return-object p0
.end method


# virtual methods
.method final c()Lcom/android/billingclient/api/t0;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    invoke-static {v0}, Lcom/android/billingclient/api/p1;->a(Lcom/android/billingclient/api/p1;)Lcom/android/billingclient/api/t0;

    const/4 v0, 0x0

    return-object v0
.end method

.method final d()Lcom/android/billingclient/api/v;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    invoke-static {v0}, Lcom/android/billingclient/api/p1;->b(Lcom/android/billingclient/api/p1;)Lcom/android/billingclient/api/v;

    move-result-object v0

    return-object v0
.end method

.method final e(Z)V
    .locals 3

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/q1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    const-string v0, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/q1;->b:Lcom/android/billingclient/api/p1;

    iget-object v1, p0, Lcom/android/billingclient/api/q1;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/billingclient/api/p1;->c(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    return-void
.end method
