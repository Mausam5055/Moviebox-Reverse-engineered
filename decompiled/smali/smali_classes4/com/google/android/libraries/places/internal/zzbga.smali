.class final Lcom/google/android/libraries/places/internal/zzbga;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbgc;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbnv;ILjava/lang/Object;I)I
    .locals 1

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result p4

    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-interface {p1, p3}, Lcom/google/android/libraries/places/internal/zzbnv;->zzi(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p3, p4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    return p1
.end method
