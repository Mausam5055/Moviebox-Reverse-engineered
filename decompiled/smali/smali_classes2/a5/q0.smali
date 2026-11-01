.class public La5/q0;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;
.implements La5/a0;
.implements Lz4/b2;


# static fields
.field public static final a:La5/q0;

.field private static final b:Lorg/joda/time/format/DateTimeFormatter;

.field private static final c:Lorg/joda/time/format/DateTimeFormatter;

.field private static final d:Lorg/joda/time/format/DateTimeFormatter;

.field private static final e:Lorg/joda/time/format/DateTimeFormatter;

.field private static final f:Lorg/joda/time/format/DateTimeFormatter;

.field private static final g:Lorg/joda/time/format/DateTimeFormatter;

.field private static final h:Lorg/joda/time/format/DateTimeFormatter;

.field private static final i:Lorg/joda/time/format/DateTimeFormatter;

.field private static final j:Lorg/joda/time/format/DateTimeFormatter;

.field private static final k:Lorg/joda/time/format/DateTimeFormatter;

.field private static final l:Lorg/joda/time/format/DateTimeFormatter;

.field private static final m:Lorg/joda/time/format/DateTimeFormatter;

.field private static final n:Lorg/joda/time/format/DateTimeFormatter;

.field private static final o:Lorg/joda/time/format/DateTimeFormatter;

.field private static final p:Lorg/joda/time/format/DateTimeFormatter;

.field private static final q:Lorg/joda/time/format/DateTimeFormatter;

.field private static final r:Lorg/joda/time/format/DateTimeFormatter;

.field private static final s:Lorg/joda/time/format/DateTimeFormatter;

.field private static final t:Lorg/joda/time/format/DateTimeFormatter;

.field private static final u:Lorg/joda/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La5/q0;

    invoke-direct {v0}, La5/q0;-><init>()V

    sput-object v0, La5/q0;->a:La5/q0;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->b:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->c:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->d:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->e:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->f:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->g:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->h:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->i:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd.MM.yyyy HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->j:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->k:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyyMMdd"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->l:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy/MM/dd"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->m:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->n:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "yyyy\ub144M\uc6d4d\uc77c"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->o:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "MM/dd/yyyy"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->p:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd/MM/yyyy"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->q:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd.MM.yyyy"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->r:Lorg/joda/time/format/DateTimeFormatter;

    const-string v1, "dd-MM-yyyy"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, La5/q0;->s:Lorg/joda/time/format/DateTimeFormatter;

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, La5/q0;->t:Lorg/joda/time/format/DateTimeFormatter;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, La5/q0;->u:Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private i(La5/j1;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V
    .locals 1

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p3, La5/q0;->u:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p3

    :goto_0
    invoke-virtual {p3, p2}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

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

    check-cast p2, Lorg/joda/time/ReadablePartial;

    invoke-direct {p0, p1, p2, p3}, La5/q0;->i(La5/j1;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La5/q0;->e(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2

    iget-object p3, p1, La5/o0;->k:La5/j1;

    if-nez p2, :cond_0

    invoke-virtual {p3}, La5/j1;->m0()V

    goto :goto_2

    :cond_0
    if-nez p4, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    :cond_1
    const-class v0, Lorg/joda/time/LocalDateTime;

    if-ne p4, v0, :cond_8

    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    check-cast p2, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p1}, La5/o0;->o()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    and-int/2addr p5, v0

    if-nez p5, :cond_5

    invoke-virtual {p1, p4}, La5/o0;->t(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p4}, La5/o0;->t(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object v1, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lorg/joda/time/LocalDateTime;->getMillisOfSecond()I

    move-result p1

    if-nez p1, :cond_4

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    goto :goto_1

    :cond_4
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

    goto :goto_1

    :cond_5
    :goto_0
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    invoke-direct {p0, p3, p2, v1}, La5/q0;->i(La5/j1;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/joda/time/LocalDateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->toInstant()Lorg/joda/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, La5/j1;->l0(J)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, La5/j1;->q0(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public e(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3

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

    if-ne p5, v2, :cond_14

    invoke-interface {p3}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3}, Ly4/b;->Z()V

    if-eqz p4, :cond_2

    const-string p3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, La5/q0;->b:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_1
    invoke-static {p4}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v0

    :goto_0
    const-string p5, ""

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    return-object v0

    :cond_3
    const-class p5, Lorg/joda/time/LocalDateTime;

    if-ne p2, p5, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p5, 0xa

    if-eq p2, p5, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p3}, La5/q0;->f(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p4, p3}, La5/q0;->g(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object p1

    sget-object p2, Lorg/joda/time/LocalTime;->MIDNIGHT:Lorg/joda/time/LocalTime;

    invoke-virtual {p1, p2}, Lorg/joda/time/LocalDate;->toLocalDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_6
    const-class p5, Lorg/joda/time/LocalDate;

    const/16 v2, 0x17

    if-ne p2, p5, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v2, :cond_7

    invoke-static {p1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object p1

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p1, p4, p3}, La5/q0;->g(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_8
    const-class p4, Lorg/joda/time/LocalTime;

    if-ne p2, p4, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v2, :cond_9

    invoke-static {p1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object p1

    goto :goto_4

    :cond_9
    invoke-static {p1}, Lorg/joda/time/LocalTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalTime;

    move-result-object p1

    :goto_4
    return-object p1

    :cond_a
    const-class p4, Lorg/joda/time/DateTime;

    if-ne p2, p4, :cond_c

    sget-object p2, La5/q0;->b:Lorg/joda/time/format/DateTimeFormatter;

    if-ne p3, p2, :cond_b

    sget-object p3, La5/q0;->t:Lorg/joda/time/format/DateTimeFormatter;

    :cond_b
    invoke-virtual {p0, p1, p3}, La5/q0;->h(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    move-result-object p1

    return-object p1

    :cond_c
    const-class p3, Lorg/joda/time/DateTimeZone;

    if-ne p2, p3, :cond_d

    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    return-object p1

    :cond_d
    const-class p3, Lorg/joda/time/Period;

    if-ne p2, p3, :cond_e

    invoke-static {p1}, Lorg/joda/time/Period;->parse(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object p1

    return-object p1

    :cond_e
    const-class p3, Lorg/joda/time/Duration;

    if-ne p2, p3, :cond_f

    invoke-static {p1}, Lorg/joda/time/Duration;->parse(Ljava/lang/String;)Lorg/joda/time/Duration;

    move-result-object p1

    return-object p1

    :cond_f
    const-class p3, Lorg/joda/time/Instant;

    if-ne p2, p3, :cond_13

    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_11

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 p4, 0x30

    if-lt p3, p4, :cond_12

    const/16 p4, 0x39

    if-le p3, p4, :cond_10

    goto :goto_6

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x13

    if-ge p2, p3, :cond_12

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    new-instance p3, Lorg/joda/time/Instant;

    invoke-direct {p3, p1, p2}, Lorg/joda/time/Instant;-><init>(J)V

    return-object p3

    :cond_12
    :goto_6
    invoke-static {p1}, Lorg/joda/time/Instant;->parse(Ljava/lang/String;)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1

    :cond_13
    const-class p3, Lorg/joda/time/format/DateTimeFormatter;

    if-ne p2, p3, :cond_1d

    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p1

    return-object p1

    :cond_14
    invoke-interface {p3}, Ly4/b;->q0()I

    move-result p4

    const/4 p5, 0x2

    if-ne p4, p5, :cond_1b

    invoke-interface {p3}, Ly4/b;->l()J

    move-result-wide p4

    invoke-interface {p3}, Ly4/b;->Z()V

    sget-object p1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    if-nez p1, :cond_15

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    :cond_15
    const-class p3, Lorg/joda/time/DateTime;

    if-ne p2, p3, :cond_16

    new-instance p2, Lorg/joda/time/DateTime;

    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    invoke-direct {p2, p4, p5, p1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-object p2

    :cond_16
    new-instance p3, Lorg/joda/time/LocalDateTime;

    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    invoke-direct {p3, p4, p5, p1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    const-class p1, Lorg/joda/time/LocalDateTime;

    if-ne p2, p1, :cond_17

    return-object p3

    :cond_17
    const-class p1, Lorg/joda/time/LocalDate;

    if-ne p2, p1, :cond_18

    invoke-virtual {p3}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_18
    const-class p1, Lorg/joda/time/LocalTime;

    if-ne p2, p1, :cond_19

    invoke-virtual {p3}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object p1

    return-object p1

    :cond_19
    const-class p1, Lorg/joda/time/Instant;

    if-ne p2, p1, :cond_1a

    new-instance p1, Lorg/joda/time/Instant;

    invoke-direct {p1, p4, p5}, Lorg/joda/time/Instant;-><init>(J)V

    return-object p1

    :cond_1a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_1b
    invoke-interface {p3}, Ly4/b;->q0()I

    move-result p3

    const/16 p4, 0xc

    if-ne p3, p4, :cond_1e

    invoke-virtual {p1}, Ly4/a;->l0()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-class p3, Lorg/joda/time/Instant;

    if-ne p2, p3, :cond_1d

    const-string p2, "epochSecond"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Number;

    if-eqz p3, :cond_1c

    check-cast p2, Ljava/lang/Number;

    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/joda/time/Instant;->ofEpochSecond(J)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1

    :cond_1c
    const-string p2, "millis"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_1d

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/joda/time/Instant;->ofEpochMilli(J)Lorg/joda/time/Instant;

    move-result-object p1

    return-object p1

    :cond_1d
    return-object v0

    :cond_1e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected f(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;
    .locals 16

    move-object/from16 v0, p1

    if-nez p2, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/16 v5, 0xd

    const/4 v6, 0x7

    const/16 v7, 0x2e

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/16 v10, 0x13

    const/16 v11, 0x3a

    const/16 v12, 0xa

    const/16 v13, 0x30

    const/16 v14, 0x2d

    if-ne v1, v10, :cond_9

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v5, v11, :cond_a

    if-ne v4, v11, :cond_a

    if-ne v1, v14, :cond_1

    if-ne v6, v14, :cond_1

    const/16 v1, 0x54

    if-ne v15, v1, :cond_0

    sget-object v1, La5/q0;->u:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_0
    if-ne v15, v3, :cond_a

    sget-object v1, La5/q0;->b:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x2f

    if-ne v1, v3, :cond_2

    if-ne v6, v3, :cond_2

    sget-object v1, La5/q0;->d:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v15, 0x5

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v6, v3, :cond_7

    if-ne v15, v3, :cond_7

    sub-int/2addr v4, v13

    mul-int/2addr v4, v12

    sub-int/2addr v5, v13

    add-int/2addr v4, v5

    sub-int/2addr v11, v13

    mul-int/2addr v11, v12

    sub-int/2addr v1, v13

    add-int/2addr v11, v1

    const/16 v1, 0xc

    if-le v4, v1, :cond_3

    sget-object v1, La5/q0;->i:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_3
    if-le v11, v1, :cond_4

    sget-object v1, La5/q0;->h:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v3, "US"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, La5/q0;->h:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_5
    const-string v3, "BR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "AU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_6
    sget-object v1, La5/q0;->i:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_7
    if-ne v6, v7, :cond_8

    if-ne v15, v7, :cond_8

    sget-object v1, La5/q0;->j:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_8
    if-ne v6, v14, :cond_a

    if-ne v15, v14, :cond_a

    sget-object v1, La5/q0;->k:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v15, 0x17

    if-ne v1, v15, :cond_a

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v5, v11, :cond_a

    if-ne v4, v11, :cond_a

    if-ne v1, v14, :cond_a

    if-ne v6, v14, :cond_a

    if-ne v12, v3, :cond_a

    if-ne v15, v7, :cond_a

    sget-object v1, La5/q0;->c:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_a
    move-object/from16 v1, p2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    if-lt v3, v4, :cond_d

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5e74

    if-ne v3, v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x79d2

    if-ne v1, v3, :cond_b

    sget-object v1, La5/q0;->f:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_b
    sget-object v1, La5/q0;->e:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_c
    const v4, 0xb144

    if-ne v3, v4, :cond_d

    sget-object v1, La5/q0;->g:Lorg/joda/time/format/DateTimeFormatter;

    :cond_d
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_f

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_11

    const/16 v4, 0x39

    if-le v3, v4, :cond_e

    goto :goto_2

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v10, :cond_11

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Lorg/joda/time/LocalDateTime;

    sget-object v3, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v3}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-object v2

    :cond_10
    move-object/from16 v1, p2

    :cond_11
    :goto_2
    if-nez v1, :cond_12

    invoke-static/range {p1 .. p1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    goto :goto_3

    :cond_12
    invoke-static {v0, v1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;
    .locals 11

    if-nez p3, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    sget-object p3, La5/q0;->l:Lorg/joda/time/format/DateTimeFormatter;

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

    sget-object p3, La5/q0;->m:Lorg/joda/time/format/DateTimeFormatter;

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

    sget-object p2, La5/q0;->q:Lorg/joda/time/format/DateTimeFormatter;

    :goto_0
    move-object p3, p2

    goto :goto_1

    :cond_2
    if-le v9, p2, :cond_3

    sget-object p2, La5/q0;->p:Lorg/joda/time/format/DateTimeFormatter;

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

    sget-object p2, La5/q0;->p:Lorg/joda/time/format/DateTimeFormatter;

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
    sget-object p2, La5/q0;->q:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_6
    const/16 p2, 0x2e

    if-ne v8, p2, :cond_7

    if-ne v10, p2, :cond_7

    sget-object p3, La5/q0;->r:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_7
    const/16 p2, 0x2d

    if-ne v8, p2, :cond_8

    if-ne v10, p2, :cond_8

    sget-object p3, La5/q0;->s:Lorg/joda/time/format/DateTimeFormatter;

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

    sget-object p2, La5/q0;->n:Lorg/joda/time/format/DateTimeFormatter;

    :goto_2
    move-object p3, p2

    goto :goto_3

    :cond_9
    const v2, 0xb144

    if-ne p2, v2, :cond_a

    sget-object p2, La5/q0;->o:Lorg/joda/time/format/DateTimeFormatter;

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

    new-instance p3, Lorg/joda/time/LocalDateTime;

    sget-object v0, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    invoke-virtual {p3}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object p1

    return-object p1

    :cond_d
    :goto_4
    if-nez p3, :cond_e

    invoke-static {p1}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDate;

    move-result-object p1

    goto :goto_5

    :cond_e
    invoke-static {p1, p3}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method protected h(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;
    .locals 11

    if-nez p2, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v1, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v6, v8, :cond_9

    if-ne v7, v8, :cond_9

    const/16 v6, 0x2d

    if-ne v0, v6, :cond_1

    if-ne v1, v6, :cond_1

    const/16 v0, 0x54

    if-ne v5, v0, :cond_0

    sget-object p2, La5/q0;->u:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x20

    if-ne v5, v0, :cond_9

    sget-object p2, La5/q0;->b:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x2f

    if-ne v0, v5, :cond_2

    if-ne v1, v5, :cond_2

    sget-object p2, La5/q0;->d:Lorg/joda/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

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

    if-ne v8, v5, :cond_7

    if-ne v10, v5, :cond_7

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v4

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v1, v7

    add-int/lit8 v9, v9, -0x30

    mul-int/2addr v9, v4

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v9, v0

    const/16 v0, 0xc

    if-le v1, v0, :cond_3

    sget-object p2, La5/q0;->i:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_3
    if-le v9, v0, :cond_4

    sget-object p2, La5/q0;->h:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p2, La5/q0;->h:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_5
    const-string v1, "BR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    sget-object p2, La5/q0;->i:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_7
    const/16 v0, 0x2e

    if-ne v8, v0, :cond_8

    if-ne v10, v0, :cond_8

    sget-object p2, La5/q0;->j:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_8
    if-ne v8, v6, :cond_9

    if-ne v10, v6, :cond_9

    sget-object p2, La5/q0;->k:Lorg/joda/time/format/DateTimeFormatter;

    :cond_9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_c

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e74

    if-ne v0, v1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x79d2

    if-ne p2, v0, :cond_a

    sget-object p2, La5/q0;->f:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_a
    sget-object p2, La5/q0;->e:Lorg/joda/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_b
    const v1, 0xb144

    if-ne v0, v1, :cond_c

    sget-object p2, La5/q0;->g:Lorg/joda/time/format/DateTimeFormatter;

    :cond_c
    :goto_1
    if-nez p2, :cond_d

    invoke-static {p1}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object p1

    goto :goto_2

    :cond_d
    invoke-static {p1, p2}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    move-result-object p1

    :goto_2
    return-object p1
.end method
