.class final Lcom/google/android/libraries/places/internal/zzbdg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbdh;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbdh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbdg;->zza:Lcom/google/android/libraries/places/internal/zzbdh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdg;->zza:Lcom/google/android/libraries/places/internal/zzbdh;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdh;->zza(Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbdg;->zza:Lcom/google/android/libraries/places/internal/zzbdh;

    invoke-interface {v0, p2}, Lcom/google/android/libraries/places/internal/zzbdh;->zza(Ljava/lang/Object;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
