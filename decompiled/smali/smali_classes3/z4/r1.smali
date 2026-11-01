.class public abstract synthetic Lz4/r1;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Ljava/time/chrono/ChronoZonedDateTime;)Ljava/time/Instant;
    .locals 0

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method
