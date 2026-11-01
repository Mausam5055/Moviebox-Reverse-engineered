.class public final synthetic Lcom/android/billingclient/api/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/i;

.field public final synthetic zzb:Lcom/android/billingclient/api/n;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzj;->zza:Lcom/android/billingclient/api/i;

    iput-object p2, p0, Lcom/android/billingclient/api/zzj;->zzb:Lcom/android/billingclient/api/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzj;->zza:Lcom/android/billingclient/api/i;

    iget-object v1, p0, Lcom/android/billingclient/api/zzj;->zzb:Lcom/android/billingclient/api/n;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/i;->u(Lcom/android/billingclient/api/n;)V

    return-void
.end method
