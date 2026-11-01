.class public Lz4/y1;
.super Lz4/e;

# interfaces
.implements La5/z0;
.implements La5/a0;
.implements Lz4/b2;


# static fields
.field public static final a:Lz4/y1;

.field private static final b:Ljava/time/format/DateTimeFormatter;

.field private static final c:Ljava/time/format/DateTimeFormatter;

.field private static final d:Ljava/time/format/DateTimeFormatter;

.field private static final e:Ljava/time/format/DateTimeFormatter;

.field private static final f:Ljava/time/format/DateTimeFormatter;

.field private static final g:Ljava/time/format/DateTimeFormatter;

.field private static final h:Ljava/time/format/DateTimeFormatter;

.field private static final i:Ljava/time/format/DateTimeFormatter;

.field private static final j:Ljava/time/format/DateTimeFormatter;

.field private static final k:Ljava/time/format/DateTimeFormatter;

.field private static final l:Ljava/time/format/DateTimeFormatter;

.field private static final m:Ljava/time/format/DateTimeFormatter;

.field private static final n:Ljava/time/format/DateTimeFormatter;

.field private static final o:Ljava/time/format/DateTimeFormatter;

.field private static final p:Ljava/time/format/DateTimeFormatter;

.field private static final q:Ljava/time/format/DateTimeFormatter;

.field private static final r:Ljava/time/format/DateTimeFormatter;

.field private static final s:Ljava/time/format/DateTimeFormatter;

.field private static final t:Ljava/time/format/DateTimeFormatter;

.field private static final u:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz4/y1;

    invoke-direct {v0}, Lz4/y1;-><init>()V

    sput-object v0, Lz4/y1;->a:Lz4/y1;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->b:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->c:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->d:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->e:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->f:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->g:Ljava/time/format/DateTimeFormatter;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->h:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->i:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd.MM.yyyy HH:mm:ss"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->j:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->k:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyyMMdd"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->l:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy/MM/dd"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->m:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->n:Ljava/time/format/DateTimeFormatter;

    const-string v1, "yyyy\ub144M\uc6d4d\uc77c"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->o:Ljava/time/format/DateTimeFormatter;

    const-string v1, "MM/dd/yyyy"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->p:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd/MM/yyyy"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->q:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd.MM.yyyy"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->r:Ljava/time/format/DateTimeFormatter;

    const-string v1, "dd-MM-yyyy"

    invoke-static {v1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lz4/y1;->s:Ljava/time/format/DateTimeFormatter;

    invoke-static {v0}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Lz4/b0;->a()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lz4/m0;->a(Ljava/time/format/DateTimeFormatter;Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lz4/y1;->t:Ljava/time/format/DateTimeFormatter;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lz4/y1;->u:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz4/e;-><init>()V

    return-void
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    :cond_1
    invoke-static {p1}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lz4/r;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method private j(La5/j1;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .locals 2

    const-string v0, "unixtime"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lz4/m1;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lz4/p1;->a(Ljava/lang/Object;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object p2

    invoke-static {p2}, Lz4/q1;->a(Ljava/time/chrono/ChronoZonedDateTime;)J

    move-result-wide p2

    long-to-int p2, p2

    invoke-virtual {p1, p2}, La5/j1;->h0(I)V

    return-void

    :cond_0
    invoke-static {p2}, Lz4/n1;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lz4/i1;->a(Ljava/lang/Object;)Ljava/time/LocalDateTime;

    move-result-object p2

    sget-object p3, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {p3}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p3

    invoke-static {p2, p3}, Lz4/v1;->a(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-virtual {p1, p2}, La5/j1;->h0(I)V

    return-void

    :cond_1
    const-string v0, "millis"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lz4/m1;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lz4/p1;->a(Ljava/lang/Object;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Lz4/r1;->a(Ljava/time/chrono/ChronoZonedDateTime;)Ljava/time/Instant;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lz4/n1;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lz4/i1;->a(Ljava/lang/Object;)Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v1}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lz4/v1;->a(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {v0}, Lz4/w1;->a(Ljava/time/Instant;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, La5/j1;->l0(J)V

    return-void

    :cond_4
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    if-ne p3, v0, :cond_5

    sget-object p3, Lz4/y1;->u:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    :goto_1
    invoke-static {p3, p2}, Lz4/o1;->a(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, La5/j1;->q0(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(La5/o0;Ljava/lang/Object;La5/p;)V
    .locals 0

    iget-object p1, p1, La5/o0;->k:La5/j1;

    invoke-virtual {p3}, La5/p;->b()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Lz4/x1;->a(Ljava/lang/Object;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lz4/y1;->j(La5/j1;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2

    iget-object p3, p1, La5/o0;->k:La5/j1;

    if-nez p2, :cond_0

    invoke-virtual {p3}, La5/j1;->m0()V

    goto/16 :goto_1

    :cond_0
    if-nez p4, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    :cond_1
    invoke-static {}, Lz4/x0;->a()Ljava/lang/Class;

    move-result-object v0

    if-ne p4, v0, :cond_9

    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    invoke-static {p2}, Lz4/i1;->a(Ljava/lang/Object;)Ljava/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p1}, La5/o0;->o()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    and-int/2addr p5, v0

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    if-nez p5, :cond_7

    invoke-virtual {p1, p4}, La5/o0;->t(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p4}, La5/o0;->t(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p1}, La5/o0;->p()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p1}, La5/o0;->p()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_3

    invoke-virtual {p1}, La5/o0;->p()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lz4/t1;->a(Ljava/time/LocalDateTime;)I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const p4, 0xf4240

    rem-int/2addr p1, p4

    if-nez p1, :cond_6

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    goto :goto_0

    :cond_6
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

    :cond_7
    :goto_0
    if-eqz v1, :cond_8

    invoke-direct {p0, p3, p2, v1}, Lz4/y1;->j(La5/j1;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    sget-object p1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {p1}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p2, p1}, Lz4/v1;->a(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-static {p1}, Lz4/w1;->a(Ljava/time/Instant;)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, La5/j1;->l0(J)V

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, La5/j1;->q0(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public e(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8

    iget-object p3, p1, Ly4/a;->f:Ly4/b;

    invoke-interface {p3}, Ly4/b;->q0()I

    move-result p5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p5, v1, :cond_0

    invoke-interface {p3}, Ly4/b;->Z()V

    return-object v0

    :cond_0
    invoke-interface {p3}, Ly4/b;->q0()I

    move-result p5

    const/4 v2, 0x4

    if-ne p5, v2, :cond_19

    invoke-interface {p3}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3}, Ly4/b;->Z()V

    if-eqz p4, :cond_2

    const-string p3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lz4/y1;->b:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_1
    invoke-static {p4}, Lz4/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v0

    :goto_0
    const-string v2, ""

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    invoke-static {}, Lz4/x0;->a()Ljava/lang/Class;

    move-result-object v2

    if-ne p2, v2, :cond_6

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p5, p3}, Lz4/y1;->g(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0, p5, p4, p3}, Lz4/y1;->h(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {}, Lz4/k0;->a()Ljava/time/LocalTime;

    move-result-object p2

    invoke-static {p1, p2}, Lz4/u0;->a(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_6
    invoke-static {}, Lz4/w0;->a()Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x17

    if-ne p2, v2, :cond_8

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v3, :cond_7

    invoke-static {p5}, Lz4/t;->a(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lz4/c1;->a(Ljava/time/LocalDateTime;)I

    move-result p2

    invoke-static {p1}, Lz4/d1;->a(Ljava/time/LocalDateTime;)I

    move-result p3

    invoke-static {p1}, Lz4/e1;->a(Ljava/time/LocalDateTime;)I

    move-result p1

    invoke-static {p2, p3, p1}, Lz4/f1;->a(III)Ljava/time/LocalDate;

    move-result-object p1

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p5, p4, p3}, Lz4/y1;->h(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_8
    invoke-static {}, Lz4/s;->a()Ljava/lang/Class;

    move-result-object p4

    const/16 v2, 0x39

    const/16 v4, 0x30

    const/16 v5, 0x13

    const/4 v6, 0x0

    if-ne p2, p4, :cond_d

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v3, :cond_9

    invoke-static {p5}, Lz4/t;->a(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lz4/u;->a(Ljava/time/LocalDateTime;)I

    move-result p2

    invoke-static {p1}, Lz4/v;->a(Ljava/time/LocalDateTime;)I

    move-result p3

    invoke-static {p1}, Lz4/w;->a(Ljava/time/LocalDateTime;)I

    move-result p4

    invoke-static {p1}, Lz4/t1;->a(Ljava/time/LocalDateTime;)I

    move-result p1

    invoke-static {p2, p3, p4, p1}, Lz4/x;->a(IIII)Ljava/time/LocalTime;

    move-result-object p1

    goto :goto_6

    :cond_9
    :goto_4
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v6, p1, :cond_b

    invoke-virtual {p5, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-lt p1, v4, :cond_c

    if-le p1, v2, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_c

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v5, :cond_c

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lz4/y;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {p2}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lz4/z;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lz4/a0;->a(Ljava/time/LocalDateTime;)Ljava/time/LocalTime;

    move-result-object p1

    goto :goto_6

    :cond_c
    :goto_5
    invoke-static {p5}, Lz4/c0;->a(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object p1

    :goto_6
    return-object p1

    :cond_d
    invoke-static {}, Lz4/d0;->a()Ljava/lang/Class;

    move-result-object p4

    if-ne p2, p4, :cond_10

    sget-object p2, Lz4/y1;->b:Ljava/time/format/DateTimeFormatter;

    if-ne p3, p2, :cond_e

    sget-object p3, Lz4/y1;->t:Ljava/time/format/DateTimeFormatter;

    :cond_e
    if-nez p3, :cond_f

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, v5, :cond_f

    new-instance p2, Ly4/e;

    invoke-direct {p2, p5}, Ly4/e;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Ly4/a;->f:Ly4/b;

    invoke-interface {p1}, Ly4/b;->l0()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p2, p1}, Ly4/c;->o1(Ljava/util/TimeZone;)V

    invoke-virtual {p2, v6}, Ly4/e;->x1(Z)Z

    move-result p4

    if-eqz p4, :cond_f

    invoke-virtual {p2}, Ly4/c;->J0()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Lz4/e0;->a(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p2

    invoke-static {p1}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p2, p1}, Lz4/f0;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p0, p5, p3}, Lz4/y1;->i(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-static {}, Lz4/g0;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_11

    invoke-static {p5}, Lz4/h0;->a(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-static {}, Lz4/i0;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_12

    invoke-static {p5}, Lz4/j0;->a(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1

    :cond_12
    invoke-static {}, Lz4/l0;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_13

    invoke-static {p5}, Lz4/n0;->a(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    return-object p1

    :cond_13
    invoke-static {}, Lz4/o0;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_14

    invoke-static {p5}, Lz4/p0;->a(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object p1

    return-object p1

    :cond_14
    invoke-static {}, Lz4/q0;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_15

    invoke-static {p5}, Lz4/r0;->a(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-static {}, Lz4/s0;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_24

    :goto_7
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v6, p1, :cond_17

    invoke-virtual {p5, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-lt p1, v4, :cond_18

    if-le p1, v2, :cond_16

    goto :goto_8

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_17
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_18

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v5, :cond_18

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lz4/y;->a(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_18
    :goto_8
    invoke-static {p5}, Lz4/t0;->a(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_19
    invoke-interface {p3}, Ly4/b;->q0()I

    move-result p5

    const/4 v1, 0x2

    if-ne p5, v1, :cond_21

    invoke-interface {p3}, Ly4/b;->l()J

    move-result-wide v0

    invoke-interface {p3}, Ly4/b;->Z()V

    const-string p1, "unixtime"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-wide/16 p3, 0x3e8

    mul-long/2addr v0, p3

    goto :goto_9

    :cond_1a
    const-string p1, "yyyyMMddHHmmss"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const-wide p3, 0x2540be400L

    div-long p3, v0, p3

    long-to-int v2, p3

    const-wide/32 p3, 0x5f5e100

    div-long p3, v0, p3

    const-wide/16 v3, 0x64

    rem-long/2addr p3, v3

    long-to-int p1, p3

    const-wide/32 p3, 0xf4240

    div-long p3, v0, p3

    rem-long/2addr p3, v3

    long-to-int p3, p3

    const-wide/16 p4, 0x2710

    div-long p4, v0, p4

    rem-long/2addr p4, v3

    long-to-int v5, p4

    div-long p4, v0, v3

    rem-long/2addr p4, v3

    long-to-int v6, p4

    rem-long p4, v0, v3

    long-to-int v7, p4

    invoke-static {}, Lz4/x0;->a()Ljava/lang/Class;

    move-result-object p4

    if-ne p2, p4, :cond_1b

    move v3, p1

    move v4, p3

    invoke-static/range {v2 .. v7}, Lz4/v0;->a(IIIIII)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_1b
    :goto_9
    invoke-static {}, Lz4/x0;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_1c

    invoke-static {v0, v1}, Lz4/y;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {p2}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lz4/z;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    :cond_1c
    invoke-static {}, Lz4/w0;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_1d

    invoke-static {v0, v1}, Lz4/y;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {p2}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lz4/z;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lz4/y0;->a(Ljava/time/LocalDateTime;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_1d
    invoke-static {}, Lz4/s;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_1e

    invoke-static {v0, v1}, Lz4/y;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {p2}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lz4/z;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lz4/a0;->a(Ljava/time/LocalDateTime;)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    :cond_1e
    invoke-static {}, Lz4/d0;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_1f

    invoke-static {v0, v1}, Lz4/y;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {p2}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lz4/f0;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    :cond_1f
    invoke-static {}, Lz4/s0;->a()Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_20

    invoke-static {v0, v1}, Lz4/y;->a(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_21
    invoke-interface {p3}, Ly4/b;->q0()I

    move-result p3

    const/16 p4, 0xc

    if-ne p3, p4, :cond_25

    invoke-virtual {p1}, Ly4/a;->l0()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-static {}, Lz4/s0;->a()Ljava/lang/Class;

    move-result-object p3

    const-string p4, "nano"

    if-ne p2, p3, :cond_23

    const-string p2, "epochSecond"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p2, Ljava/lang/Number;

    if-eqz p3, :cond_22

    instance-of p4, p1, Ljava/lang/Number;

    if-eqz p4, :cond_22

    check-cast p2, Ljava/lang/Number;

    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide p2

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide p4

    invoke-static {p2, p3, p4, p5}, Lz4/z0;->a(JJ)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_22
    if-eqz p3, :cond_24

    check-cast p2, Ljava/lang/Number;

    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lz4/a1;->a(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_23
    invoke-static {}, Lz4/q0;->a()Ljava/lang/Class;

    move-result-object p3

    if-ne p2, p3, :cond_24

    const-string p2, "seconds"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_24

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, p3, p4}, Lz4/b1;->a(JJ)Ljava/time/Duration;

    move-result-object p1

    return-object p1

    :cond_24
    return-object v0

    :cond_25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected g(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x13

    const/16 v3, 0x30

    if-nez p2, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    const/16 v6, 0x10

    const/16 v7, 0xd

    const/4 v8, 0x7

    const/16 v9, 0x2e

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/16 v12, 0x3a

    const/16 v13, 0xa

    const/16 v14, 0x2d

    if-ne v4, v2, :cond_9

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v7, v12, :cond_a

    if-ne v6, v12, :cond_a

    if-ne v4, v14, :cond_1

    if-ne v8, v14, :cond_1

    const/16 v4, 0x54

    if-ne v15, v4, :cond_0

    invoke-static {}, Lz4/j1;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    goto/16 :goto_0

    :cond_0
    if-ne v15, v5, :cond_a

    sget-object v4, Lz4/y1;->b:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x2f

    if-ne v4, v5, :cond_2

    if-ne v8, v5, :cond_2

    sget-object v4, Lz4/y1;->d:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v15, 0x5

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v8, v5, :cond_7

    if-ne v15, v5, :cond_7

    sub-int/2addr v6, v3

    mul-int/2addr v6, v13

    sub-int/2addr v7, v3

    add-int/2addr v6, v7

    sub-int/2addr v12, v3

    mul-int/2addr v12, v13

    sub-int/2addr v4, v3

    add-int/2addr v12, v4

    const/16 v4, 0xc

    if-le v6, v4, :cond_3

    sget-object v4, Lz4/y1;->i:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_3
    if-le v12, v4, :cond_4

    sget-object v4, Lz4/y1;->h:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v4, Lz4/y1;->h:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_5
    const-string v5, "BR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "AU"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_6
    sget-object v4, Lz4/y1;->i:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_7
    if-ne v8, v9, :cond_8

    if-ne v15, v9, :cond_8

    sget-object v4, Lz4/y1;->j:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_8
    if-ne v8, v14, :cond_a

    if-ne v15, v14, :cond_a

    sget-object v4, Lz4/y1;->k:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v15, 0x17

    if-ne v4, v15, :cond_a

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v7, v12, :cond_a

    if-ne v6, v12, :cond_a

    if-ne v4, v14, :cond_a

    if-ne v8, v14, :cond_a

    if-ne v13, v5, :cond_a

    if-ne v15, v9, :cond_a

    sget-object v4, Lz4/y1;->c:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_a
    move-object/from16 v4, p2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x11

    if-lt v5, v6, :cond_e

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5e74

    if-ne v5, v6, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v10

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x79d2

    if-ne v4, v5, :cond_b

    sget-object v4, Lz4/y1;->f:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_b
    sget-object v4, Lz4/y1;->e:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_c
    const v6, 0xb144

    if-ne v5, v6, :cond_e

    sget-object v4, Lz4/y1;->g:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_d
    move-object/from16 v4, p2

    :cond_e
    :goto_1
    if-nez v4, :cond_12

    new-instance v5, Ly4/e;

    invoke-direct {v5, v0}, Ly4/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ly4/e;->x1(Z)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Ly4/c;->J0()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lz4/s1;->a(Ljava/util/Calendar;)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Lz4/b0;->a()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lz4/z;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_f
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v3, :cond_12

    const/16 v6, 0x39

    if-le v5, v6, :cond_10

    goto :goto_3

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8

    if-le v1, v3, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_12

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lz4/y;->a(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v1}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lz4/z;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :cond_12
    :goto_3
    if-nez v4, :cond_13

    invoke-static/range {p1 .. p1}, Lz4/t;->a(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_4

    :cond_13
    invoke-static {v0, v4}, Lz4/r;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_4
    return-object v0
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 11

    if-nez p3, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    sget-object p3, Lz4/y1;->l:Ljava/time/format/DateTimeFormatter;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0xa

    const/16 v4, 0x30

    if-ne p2, v3, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne p2, v6, :cond_1

    if-ne v5, v6, :cond_1

    sget-object p3, Lz4/y1;->m:Ljava/time/format/DateTimeFormatter;

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v6, :cond_6

    if-ne v10, v6, :cond_6

    sub-int/2addr v5, v4

    mul-int/2addr v5, v3

    sub-int/2addr v7, v4

    add-int/2addr v5, v7

    sub-int/2addr v9, v4

    mul-int/2addr v9, v3

    sub-int/2addr p2, v4

    add-int/2addr v9, p2

    const/16 p2, 0xc

    if-le v5, p2, :cond_2

    sget-object p2, Lz4/y1;->q:Ljava/time/format/DateTimeFormatter;

    :goto_0
    move-object p3, p2

    goto :goto_1

    :cond_2
    if-le v9, p2, :cond_3

    sget-object p2, Lz4/y1;->p:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    const-string v3, "US"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object p2, Lz4/y1;->p:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_4
    const-string v3, "BR"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "AU"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_5
    sget-object p2, Lz4/y1;->q:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_6
    const/16 p2, 0x2e

    if-ne v8, p2, :cond_7

    if-ne v10, p2, :cond_7

    sget-object p3, Lz4/y1;->r:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_7
    const/16 p2, 0x2d

    if-ne v8, p2, :cond_8

    if-ne v10, p2, :cond_8

    sget-object p3, Lz4/y1;->s:Ljava/time/format/DateTimeFormatter;

    :cond_8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v3, 0x9

    if-lt p2, v3, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x5e74

    if-ne p2, v2, :cond_9

    sget-object p2, Lz4/y1;->n:Ljava/time/format/DateTimeFormatter;

    :goto_2
    move-object p3, p2

    goto :goto_3

    :cond_9
    const v2, 0xb144

    if-ne p2, v2, :cond_a

    sget-object p2, Lz4/y1;->o:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    :cond_a
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v1, p2, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_d

    const/16 v2, 0x39

    if-le p2, v2, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v0, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x13

    if-ge p2, v0, :cond_d

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lz4/y;->a(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {p2}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Lz4/z;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lz4/y0;->a(Ljava/time/LocalDateTime;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_d
    :goto_4
    if-nez p3, :cond_e

    invoke-static {p1}, Lz4/g1;->a(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p1

    goto :goto_5

    :cond_e
    invoke-static {p1, p3}, Lz4/h1;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method protected i(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .locals 15

    move-object/from16 v0, p1

    if-nez p2, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x13

    const/4 v5, 0x1

    const/16 v6, 0x30

    if-ne v1, v4, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xd

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x10

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x3a

    if-ne v10, v12, :cond_9

    if-ne v11, v12, :cond_9

    const/16 v10, 0x2d

    if-ne v1, v10, :cond_1

    if-ne v7, v10, :cond_1

    const/16 v1, 0x54

    if-ne v9, v1, :cond_0

    invoke-static {}, Lz4/j1;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x20

    if-ne v9, v1, :cond_9

    sget-object v1, Lz4/y1;->b:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_1
    const/16 v9, 0x2f

    if-ne v1, v9, :cond_2

    if-ne v7, v9, :cond_2

    sget-object v1, Lz4/y1;->d:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v12, v9, :cond_7

    if-ne v14, v9, :cond_7

    sub-int/2addr v7, v6

    mul-int/2addr v7, v8

    sub-int/2addr v11, v6

    add-int/2addr v7, v11

    sub-int/2addr v13, v6

    mul-int/2addr v13, v8

    sub-int/2addr v1, v6

    add-int/2addr v13, v1

    const/16 v1, 0xc

    if-le v7, v1, :cond_3

    sget-object v1, Lz4/y1;->i:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_3
    if-le v13, v1, :cond_4

    sget-object v1, Lz4/y1;->h:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v7, "US"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v1, Lz4/y1;->h:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_5
    const-string v7, "BR"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "AU"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    sget-object v1, Lz4/y1;->i:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_7
    const/16 v1, 0x2e

    if-ne v12, v1, :cond_8

    if-ne v14, v1, :cond_8

    sget-object v1, Lz4/y1;->j:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_8
    if-ne v12, v10, :cond_9

    if-ne v14, v10, :cond_9

    sget-object v1, Lz4/y1;->k:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_9
    move-object/from16 v1, p2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x11

    if-lt v7, v8, :cond_c

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x5e74

    if-ne v3, v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x79d2

    if-ne v1, v3, :cond_a

    sget-object v1, Lz4/y1;->f:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_a
    sget-object v1, Lz4/y1;->e:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_b
    const v5, 0xb144

    if-ne v3, v5, :cond_c

    sget-object v1, Lz4/y1;->g:Ljava/time/format/DateTimeFormatter;

    :cond_c
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_10

    const/16 v5, 0x39

    if-le v3, v5, :cond_d

    goto :goto_2

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_10

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lz4/y;->a(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v1}, Lz4/u1;->a(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Lz4/f0;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :cond_f
    move-object/from16 v1, p2

    :cond_10
    :goto_2
    if-nez v1, :cond_11

    invoke-static/range {p1 .. p1}, Lz4/k1;->a(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_3

    :cond_11
    invoke-static {v0, v1}, Lz4/l1;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_3
    return-object v0
.end method
