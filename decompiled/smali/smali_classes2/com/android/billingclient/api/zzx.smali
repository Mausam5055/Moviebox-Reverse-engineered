.class public final synthetic Lcom/android/billingclient/api/zzx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/i;

.field public final synthetic zzb:Lcom/android/billingclient/api/p;

.field public final synthetic zzc:Lcom/android/billingclient/api/o;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/p;Lcom/android/billingclient/api/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzx;->zza:Lcom/android/billingclient/api/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzx;->zza:Lcom/android/billingclient/api/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/billingclient/api/i;->v(Lcom/android/billingclient/api/p;Lcom/android/billingclient/api/o;)V

    return-void
.end method
