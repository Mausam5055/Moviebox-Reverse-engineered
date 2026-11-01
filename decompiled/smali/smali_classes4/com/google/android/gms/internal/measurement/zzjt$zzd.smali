.class public abstract Lcom/google/android/gms/internal/measurement/zzjt$zzd;
.super Lcom/google/android/gms/internal/measurement/zzjt;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzjt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzjt$zzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/measurement/zzjm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjm<",
            "Lcom/google/android/gms/internal/measurement/zzjt$zzc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjm;->zzb()Lcom/google/android/gms/internal/measurement/zzjm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzjm;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/measurement/zzjm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzjm<",
            "Lcom/google/android/gms/internal/measurement/zzjt$zzc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjm;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjm;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzjm;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzjm;

    return-object v0
.end method
