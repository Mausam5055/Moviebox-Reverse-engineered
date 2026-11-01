.class final Lcom/google/android/libraries/places/internal/zzbwr;
.super Lcom/google/android/libraries/places/internal/zzbvz;


# instance fields
.field private final zzd:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    const-string v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbvz;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwr;->zzd:Ljava/net/Socket;

    return-void
.end method
