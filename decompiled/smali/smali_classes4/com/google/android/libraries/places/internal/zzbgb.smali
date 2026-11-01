.class final Lcom/google/android/libraries/places/internal/zzbgb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbgd;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbnv;ILjava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p3, Ljava/io/OutputStream;

    invoke-interface {p1, p3, p2}, Lcom/google/android/libraries/places/internal/zzbnv;->zzj(Ljava/io/OutputStream;I)V

    const/4 p1, 0x0

    return p1
.end method
