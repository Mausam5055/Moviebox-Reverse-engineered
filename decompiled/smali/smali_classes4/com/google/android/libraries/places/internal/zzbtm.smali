.class public final enum Lcom/google/android/libraries/places/internal/zzbtm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzbtm;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzbtm;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzbtm;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzbtm;

.field private static final synthetic zze:[Lcom/google/android/libraries/places/internal/zzbtm;


# instance fields
.field private final zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtm;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbtm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbtm;

    const-string v3, "HTTP_1_1"

    const/4 v4, 0x1

    const-string v5, "http/1.1"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/libraries/places/internal/zzbtm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbtm;->zzb:Lcom/google/android/libraries/places/internal/zzbtm;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbtm;

    const-string v5, "SPDY_3"

    const/4 v6, 0x2

    const-string v7, "spdy/3.1"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/libraries/places/internal/zzbtm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzbtm;->zzc:Lcom/google/android/libraries/places/internal/zzbtm;

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbtm;

    const-string v7, "HTTP_2"

    const/4 v8, 0x3

    const-string v9, "h2"

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/libraries/places/internal/zzbtm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzbtm;->zzd:Lcom/google/android/libraries/places/internal/zzbtm;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/libraries/places/internal/zzbtm;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/libraries/places/internal/zzbtm;->zze:[Lcom/google/android/libraries/places/internal/zzbtm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbtm;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzbtm;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtm;->zze:[Lcom/google/android/libraries/places/internal/zzbtm;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzbtm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzbtm;

    return-object v0
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbtm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbtm;->zzf:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtm;->zzb:Lcom/google/android/libraries/places/internal/zzbtm;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbtm;->zzf:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtm;->zzd:Lcom/google/android/libraries/places/internal/zzbtm;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbtm;->zzf:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtm;->zzc:Lcom/google/android/libraries/places/internal/zzbtm;

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbtm;->zzf:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "Unexpected protocol: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtm;->zzf:Ljava/lang/String;

    return-object v0
.end method
