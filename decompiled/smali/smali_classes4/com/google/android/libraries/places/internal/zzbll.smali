.class final Lcom/google/android/libraries/places/internal/zzbll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbls;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbls;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbll;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbll;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzV()V

    return-void
.end method
