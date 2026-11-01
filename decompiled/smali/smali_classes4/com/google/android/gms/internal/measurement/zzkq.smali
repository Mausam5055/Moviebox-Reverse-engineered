.class final Lcom/google/android/gms/internal/measurement/zzkq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzkz;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzkz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkq;->zza:Lcom/google/android/gms/internal/measurement/zzkz;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzju;->zza()Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzkz;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkq;->zza:Lcom/google/android/gms/internal/measurement/zzkz;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>([Lcom/google/android/gms/internal/measurement/zzkz;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkq;-><init>(Lcom/google/android/gms/internal/measurement/zzkz;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzkz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzjv;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkz;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkq;->zzb:Lcom/google/android/gms/internal/measurement/zzkz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlu;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzlu<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkq;->zzb:Lcom/google/android/gms/internal/measurement/zzkz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzla;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzla;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlw;->zza()Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjj;->zza()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzla;->zza()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzli;->zza(Lcom/google/android/gms/internal/measurement/zzmk;Lcom/google/android/gms/internal/measurement/zzji;Lcom/google/android/gms/internal/measurement/zzlc;)Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlm;->zza()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzko;->zza()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlw;->zza()Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object v5

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzks;->zza:[I

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzla;->zzb()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjj;->zza()Lcom/google/android/gms/internal/measurement/zzji;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkx;->zza()Lcom/google/android/gms/internal/measurement/zzkv;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzla;Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzkm;Lcom/google/android/gms/internal/measurement/zzmk;Lcom/google/android/gms/internal/measurement/zzji;Lcom/google/android/gms/internal/measurement/zzkv;)Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object p1

    return-object p1
.end method
