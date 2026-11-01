.class final Lcom/google/android/gms/internal/play_billing/zzfy;
.super Ljava/lang/Object;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzfx;

.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzfx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfy;->zzb:Lcom/google/android/gms/internal/play_billing/zzfx;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/play_billing/zzfx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/play_billing/zzfx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfy;->zzb:Lcom/google/android/gms/internal/play_billing/zzfx;

    return-object v0
.end method
