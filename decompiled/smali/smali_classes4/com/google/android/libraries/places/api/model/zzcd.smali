.class public final synthetic Lcom/google/android/libraries/places/api/model/zzcd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/libraries/places/api/model/Period;

    check-cast p2, Lcom/google/android/libraries/places/api/model/Period;

    sget v0, Lcom/google/android/libraries/places/api/model/zzce;->zza:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDate()Lcom/google/android/libraries/places/api/model/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDate()Lcom/google/android/libraries/places/api/model/LocalDate;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/api/model/LocalDate;->compareTo(Lcom/google/android/libraries/places/api/model/LocalDate;)I

    move-result p1

    return p1
.end method
