.class final Lcom/android/billingclient/api/s0;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lr8/h;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/t;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/t;->c()Lcom/google/android/datatransport/runtime/t;

    move-result-object p1

    sget-object v0, Lcom/google/android/datatransport/cct/a;->g:Lcom/google/android/datatransport/cct/a;

    invoke-virtual {p1, v0}, Lcom/google/android/datatransport/runtime/t;->g(Lcom/google/android/datatransport/runtime/f;)Lr8/i;

    move-result-object p1

    const-string v0, "PLAY_BILLING_LIBRARY"

    const-class v1, Lcom/google/android/gms/internal/play_billing/zziv;

    const-string v2, "proto"

    invoke-static {v2}, Lr8/c;->b(Ljava/lang/String;)Lr8/c;

    move-result-object v2

    sget-object v3, Lcom/android/billingclient/api/r0;->a:Lcom/android/billingclient/api/r0;

    invoke-interface {p1, v0, v1, v2, v3}, Lr8/i;->b(Ljava/lang/String;Ljava/lang/Class;Lr8/c;Lr8/g;)Lr8/h;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/s0;->b:Lr8/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/billingclient/api/s0;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/play_billing/zziv;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/billingclient/api/s0;->a:Z

    const-string v1, "BillingLogger"

    if-eqz v0, :cond_0

    const-string p1, "Skipping logging since initialization failed."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/s0;->b:Lr8/h;

    invoke-static {p1}, Lr8/d;->f(Ljava/lang/Object;)Lr8/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lr8/h;->b(Lr8/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "logging failed."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
