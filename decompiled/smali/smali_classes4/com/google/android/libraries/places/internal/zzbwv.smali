.class public Lcom/google/android/libraries/places/internal/zzbwv;
.super Ljava/lang/Object;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final zzb:Lcom/google/android/libraries/places/internal/zzbwu;

.field public static final zzc:Lcom/google/android/libraries/places/internal/zzbwv;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwu;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbwv;->zzb:Lcom/google/android/libraries/places/internal/zzbwu;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwt;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwt;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbwv;->zzc:Lcom/google/android/libraries/places/internal/zzbwv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zzb()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
