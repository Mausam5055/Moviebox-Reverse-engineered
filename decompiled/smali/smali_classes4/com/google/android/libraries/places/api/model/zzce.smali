.class public final Lcom/google/android/libraries/places/api/model/zzce;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzoa;

.field private static final zzc:Lcom/google/android/libraries/places/api/model/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zznz;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zznz;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SUNDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->MONDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->TUESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->WEDNESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->THURSDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->FRIDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SATURDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zznz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zznz;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zznz;->zzc()Lcom/google/android/libraries/places/internal/zzoa;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/api/model/zzce;->zzb:Lcom/google/android/libraries/places/internal/zzoa;

    const/16 v0, 0x17

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/api/model/LocalTime;->newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/api/model/zzce;->zzc:Lcom/google/android/libraries/places/api/model/LocalTime;

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/api/model/Place;J)Ljava/lang/Boolean;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getUtcOffsetMinutes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;->OPERATIONAL:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getCurrentOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-static {v3}, Lcom/google/android/libraries/places/api/model/zzce;->zze(I)Ljava/util/TimeZone;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/model/OpeningHours;->getPeriods()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    :try_start_0
    new-instance v5, Lcom/google/android/libraries/places/api/model/zzcd;

    invoke-direct {v5}, Lcom/google/android/libraries/places/api/model/zzcd;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/api/model/Period;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDate()Lcom/google/android/libraries/places/api/model/LocalDate;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/api/model/Period;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDate()Lcom/google/android/libraries/places/api/model/LocalDate;

    move-result-object v4

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/libraries/places/api/model/LocalDate;->getYear()I

    move-result v7

    invoke-virtual {v5}, Lcom/google/android/libraries/places/api/model/LocalDate;->getMonth()I

    move-result v6

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v5}, Lcom/google/android/libraries/places/api/model/LocalDate;->getDay()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/LocalDate;->getYear()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/LocalDate;->getMonth()I

    move-result v5

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/LocalDate;->getDay()I

    move-result v9

    const/16 v10, 0x17

    const/16 v11, 0x3b

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/libraries/places/internal/zzok;->zzb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzok;->zzd(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_4
    throw v0

    :cond_5
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_6
    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/model/OpeningHours;->getPeriods()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_8
    invoke-static {v2}, Lcom/google/android/libraries/places/api/model/zzce;->zzf(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/api/model/Period;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/api/model/zzce;->zze(I)Ljava/util/TimeZone;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    move-wide v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v1, Lcom/google/android/libraries/places/api/model/zzce;->zzb:Lcom/google/android/libraries/places/internal/zzoa;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zzoa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v3, v0}, Lcom/google/android/libraries/places/api/model/LocalTime;->newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v0

    invoke-static {v2}, Lcom/google/android/libraries/places/api/model/zzce;->zzd(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzok;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzok;->zzd(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_f
    :goto_3
    return-object v0
.end method

.method static zzb(Lcom/google/android/libraries/places/api/model/Place;J)Ljava/lang/Boolean;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getUtcOffsetMinutes()Ljava/lang/Integer;

    move-result-object p0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;->OPERATIONAL:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    :goto_0
    if-eqz v1, :cond_a

    if-nez p0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/model/OpeningHours;->getPeriods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    invoke-static {v0}, Lcom/google/android/libraries/places/api/model/zzce;->zzf(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/model/Period;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/libraries/places/api/model/zzce;->zze(I)Ljava/util/TimeZone;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object p1, Lcom/google/android/libraries/places/api/model/zzce;->zzb:Lcom/google/android/libraries/places/internal/zzoa;

    const/4 p2, 0x7

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzoa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const/16 p2, 0xb

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p2, p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object p0

    invoke-static {v0}, Lcom/google/android/libraries/places/api/model/zzce;->zzd(Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_7

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/zzok;

    invoke-virtual {p2, p0}, Lcom/google/android/libraries/places/internal/zzok;->zzd(Ljava/lang/Comparable;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_a
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzc(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private static zzd(Ljava/util/List;)Ljava/util/Map;
    .locals 10

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/model/Period;

    move v3, v1

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getTime()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v9

    if-eq v4, v9, :cond_2

    sget-object v4, Lcom/google/android/libraries/places/api/model/zzce;->zzc:Lcom/google/android/libraries/places/api/model/LocalTime;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v7, v5}, Lcom/google/android/libraries/places/api/model/zzce;->zzc(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v8, v4}, Lcom/google/android/libraries/places/internal/zzok;->zzb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/api/model/DayOfWeek;->values()[Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x7

    aget-object v4, v4, v5

    invoke-static {v1, v1}, Lcom/google/android/libraries/places/api/model/LocalTime;->newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->newInstance(Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v2

    invoke-static {}, Lcom/google/android/libraries/places/api/model/Period;->builder()Lcom/google/android/libraries/places/api/model/Period$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/libraries/places/api/model/Period$Builder;->setOpen(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;

    invoke-virtual {v5, v2}, Lcom/google/android/libraries/places/api/model/Period$Builder;->setClose(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/api/model/Period$Builder;->build()Lcom/google/android/libraries/places/api/model/Period;

    move-result-object v2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getTime()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v7, v4}, Lcom/google/android/libraries/places/api/model/zzce;->zzc(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v2}, Lcom/google/android/libraries/places/internal/zzok;->zzc(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_3

    :goto_1
    move-object v2, v6

    goto/16 :goto_0

    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/model/Period;

    goto/16 :goto_0

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/model/Period;

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-object v0
.end method

.method private static zze(I)Ljava/util/TimeZone;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v1, v0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Cannot find timezone that associates with utcOffsetMinutes %d from Place object."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Places"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzf(Ljava/util/List;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/model/Period;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object p0

    sget-object v3, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SUNDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    if-ne p0, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getTime()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->getHours()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getTime()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->getMinutes()I

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v1
.end method
