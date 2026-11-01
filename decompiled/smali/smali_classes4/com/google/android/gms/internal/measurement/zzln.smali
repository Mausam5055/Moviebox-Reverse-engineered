.class public final enum Lcom/google/android/gms/internal/measurement/zzln;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzln;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzln;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzln;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzln;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/measurement/zzln;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zza:Lcom/google/android/gms/internal/measurement/zzln;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzln;

    const-string v3, "PROTO3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzln;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzln;

    const-string v5, "EDITIONS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzln;->zzc:Lcom/google/android/gms/internal/measurement/zzln;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzln;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/measurement/zzln;->zzd:[Lcom/google/android/gms/internal/measurement/zzln;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzln;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:[Lcom/google/android/gms/internal/measurement/zzln;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzln;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzln;

    return-object v0
.end method
