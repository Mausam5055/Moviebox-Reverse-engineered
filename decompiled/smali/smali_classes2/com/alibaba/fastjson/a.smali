.class public abstract Lcom/alibaba/fastjson/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/e;
.implements Lcom/alibaba/fastjson/b;


# static fields
.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field public static DEFAULT_TYPE_KEY:Ljava/lang/String; = null

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.2.83"

.field private static final bytesLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final charsLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field public static defaultLocale:Ljava/util/Locale;

.field public static defaultTimeZone:Ljava/util/TimeZone;

.field static final emptyFilters:[La5/h1;

.field private static final mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/a;->defaultLocale:Ljava/util/Locale;

    const-string v0, "@type"

    sput-object v0, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [La5/h1;

    sput-object v0, Lcom/alibaba/fastjson/a;->emptyFilters:[La5/h1;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/alibaba/fastjson/a;->mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v0

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    sget-object v0, Lcom/alibaba/fastjson/util/f;->a:Ljava/util/Properties;

    invoke-static {v0}, Lcom/alibaba/fastjson/a;->e(Ljava/util/Properties;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a;->bytesLocal:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a;->charsLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)[B
    .locals 2

    sget-object v0, Lcom/alibaba/fastjson/a;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_1

    const/high16 v1, 0x10000

    if-gt p0, v1, :cond_0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v1, p0, [B

    goto :goto_0

    :cond_1
    array-length v0, v1

    if-ge v0, p0, :cond_2

    new-array v1, p0, [B

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static addMixInAnnotations(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/a;->mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static c(I)[C
    .locals 2

    sget-object v0, Lcom/alibaba/fastjson/a;->charsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-nez v1, :cond_1

    const/high16 v1, 0x10000

    if-gt p0, v1, :cond_0

    new-array v1, v1, [C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v1, p0, [C

    goto :goto_0

    :cond_1
    array-length v0, v1

    if-ge v0, p0, :cond_2

    new-array v1, p0, [C

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static clearMixInAnnotations()V
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/a;->mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private static e(Ljava/util/Properties;)V
    .locals 5

    const-string v0, "fastjson.serializerFeatures.MapSortField"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "false"

    if-eqz v3, :cond_0

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    not-int v1, v1

    and-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    :cond_1
    :goto_0
    const-string v0, "parser.features.NonStringKeyAsString"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    :cond_2
    const-string v0, "parser.features.ErrorOnEnumNotMatch"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "fastjson.parser.features.ErrorOnEnumNotMatch"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    :cond_4
    const-string v0, "fastjson.asmEnable"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Ly4/h;->z:Ly4/h;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ly4/h;->A(Z)V

    sget-object p0, La5/g1;->j:La5/g1;

    invoke-virtual {p0, v0}, La5/g1;->l(Z)V

    :cond_5
    return-void
.end method

.method public static getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/a;->mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleResovleTask(Ly4/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly4/a;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ly4/a;->w(Ljava/lang/Object;)V

    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ly4/e;

    invoke-direct {v1, p0}, Ly4/e;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ly4/c;->Z()V

    invoke-virtual {v1}, Ly4/c;->q0()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-eq p0, v2, :cond_2

    const/16 v2, 0xe

    if-eq p0, v2, :cond_1

    packed-switch p0, :pswitch_data_0

    invoke-virtual {v1}, Ly4/c;->close()V

    return v0

    :pswitch_0
    :try_start_1
    invoke-virtual {v1}, Ly4/c;->Z()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ly4/e;->D1(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ly4/c;->d()C

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x1a

    if-ne p0, v2, :cond_3

    invoke-virtual {v1}, Ly4/c;->close()V

    return v0

    :cond_3
    :try_start_2
    invoke-virtual {v1, v3}, Ly4/e;->E1(Z)V

    :goto_0
    invoke-virtual {v1}, Ly4/c;->q0()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0x14

    if-ne p0, v2, :cond_4

    move v0, v3

    :cond_4
    invoke-virtual {v1}, Ly4/c;->close()V

    return v0

    :goto_1
    invoke-virtual {v1}, Ly4/c;->close()V

    throw p0

    :catch_0
    invoke-virtual {v1}, Ly4/c;->close()V

    :cond_5
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidArray(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ly4/e;

    invoke-direct {v1, p0}, Ly4/e;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ly4/c;->Z()V

    invoke-virtual {v1}, Ly4/c;->q0()I

    move-result p0

    const/16 v2, 0xe

    if-ne p0, v2, :cond_2

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ly4/e;->D1(Z)V

    invoke-virtual {v1}, Ly4/c;->q0()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    move v0, p0

    :cond_1
    invoke-virtual {v1}, Ly4/c;->close()V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ly4/c;->close()V

    return v0

    :goto_0
    invoke-virtual {v1}, Ly4/c;->close()V

    throw p0

    :catch_0
    invoke-virtual {v1}, Ly4/c;->close()V

    :cond_3
    :goto_1
    return v0
.end method

.method public static isValidObject(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ly4/e;

    invoke-direct {v1, p0}, Ly4/e;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ly4/c;->Z()V

    invoke-virtual {v1}, Ly4/c;->q0()I

    move-result p0

    const/16 v2, 0xc

    if-ne p0, v2, :cond_3

    invoke-virtual {v1}, Ly4/c;->d()C

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1a

    if-ne p0, v2, :cond_1

    invoke-virtual {v1}, Ly4/c;->close()V

    return v0

    :cond_1
    const/4 p0, 0x1

    :try_start_1
    invoke-virtual {v1, p0}, Ly4/e;->E1(Z)V

    invoke-virtual {v1}, Ly4/c;->q0()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    move v0, p0

    :cond_2
    invoke-virtual {v1}, Ly4/c;->close()V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ly4/c;->close()V

    return v0

    :goto_0
    invoke-virtual {v1}, Ly4/c;->close()V

    throw p0

    :catch_0
    invoke-virtual {v1}, Ly4/c;->close()V

    :cond_4
    :goto_1
    return v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ly4/h;->t()Ly4/h;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;Ly4/h;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ly4/h;)Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;Ly4/h;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ly4/h;I)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ly4/a;

    invoke-direct {v0, p0, p1, p2}, Ly4/a;-><init>(Ljava/lang/String;Ly4/h;I)V

    invoke-virtual {v0}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ly4/a;->w(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ly4/a;->close()V

    return-object p0
.end method

.method public static varargs parse(Ljava/lang/String;Ly4/h;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;Ly4/h;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    int-to-double v0, p2

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Lcom/alibaba/fastjson/a;->c(I)[C

    move-result-object v0

    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lcom/alibaba/fastjson/util/f;->b(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    new-instance p1, Ly4/a;

    invoke-static {}, Ly4/h;->t()Ly4/h;

    move-result-object p2

    invoke-direct {p1, v0, p0, p2, p4}, Ly4/a;-><init>([CILy4/h;I)V

    invoke-virtual {p1}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ly4/a;->w(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ly4/a;->close()V

    return-object p0
.end method

.method public static varargs parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p4, v2

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/a;->parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parse([B[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3

    array-length v0, p0

    invoke-static {v0}, Lcom/alibaba/fastjson/a;->c(I)[C

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Lcom/alibaba/fastjson/util/f;->e([BII[C)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1, p1}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    sget-object v0, Ly4/h;->z:Ly4/h;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parseArray(Ljava/lang/String;Ly4/h;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static parseArray(Ljava/lang/String;Ly4/h;)Lcom/alibaba/fastjson/JSONArray;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ly4/a;

    invoke-direct {v1, p0, p1}, Ly4/a;-><init>(Ljava/lang/String;Ly4/h;)V

    iget-object p0, v1, Ly4/a;->f:Ly4/b;

    invoke-interface {p0}, Ly4/b;->q0()I

    move-result p1

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    invoke-interface {p0}, Ly4/b;->Z()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ly4/b;->q0()I

    move-result p1

    const/16 v2, 0x14

    if-ne p1, v2, :cond_2

    invoke-interface {p0}, Ly4/b;->U()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Ly4/a;->d0(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ly4/a;->w(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Ly4/a;->close()V

    return-object v0
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ly4/h;->z:Ly4/h;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/a;->parseArray(Ljava/lang/String;Ljava/lang/Class;Ly4/h;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/Class;Ly4/h;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ly4/h;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ly4/a;

    invoke-direct {v1, p0, p2}, Ly4/a;-><init>(Ljava/lang/String;Ly4/h;)V

    iget-object p0, v1, Ly4/a;->f:Ly4/b;

    invoke-interface {p0}, Ly4/b;->q0()I

    move-result p2

    const/16 v2, 0x8

    if-ne p2, v2, :cond_1

    invoke-interface {p0}, Ly4/b;->Z()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x14

    if-ne p2, v2, :cond_2

    invoke-interface {p0}, Ly4/b;->U()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v0}, Ly4/a;->Z(Ljava/lang/Class;Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ly4/a;->w(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Ly4/a;->close()V

    return-object v0
.end method

.method public static parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Ly4/h;->z:Ly4/h;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/a;->parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;Ly4/h;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;Ly4/h;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            "Ly4/h;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ly4/a;

    invoke-direct {v1, p0, p2}, Ly4/a;-><init>(Ljava/lang/String;Ly4/h;)V

    invoke-virtual {v1, p1}, Ly4/a;->h0([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ly4/a;->w(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ly4/a;->close()V

    return-object v0
.end method

.method public static parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    invoke-static {p0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "can not cast to JSONObject."

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/alibaba/fastjson/util/f;->b:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Ly4/h;",
            "Lz4/e3;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/alibaba/fastjson/util/f;->b:Ljava/nio/charset/Charset;

    :cond_0
    move-object v3, p1

    const/high16 p1, 0x10000

    invoke-static {p1}, Lcom/alibaba/fastjson/a;->a(I)[B

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    :cond_1
    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    const/4 v1, 0x0

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/alibaba/fastjson/a;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr v2, v1

    array-length v1, p1

    if-ne v2, v1, :cond_1

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    array-length v4, p1

    invoke-static {p1, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    goto :goto_0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Ly4/h;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Ly4/h;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    sget v5, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ly4/h;->z:Ly4/h;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Ly4/h;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/g;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/g;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    iget-object p1, p1, Lcom/alibaba/fastjson/g;->a:Ljava/lang/reflect/Type;

    sget-object v0, Ly4/h;->z:Ly4/h;

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ly4/h;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lz4/e3;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lz4/e3;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    sget-object v2, Ly4/h;->z:Ly4/h;

    sget v4, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    sget-object v2, Ly4/h;->z:Ly4/h;

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Ly4/a;

    invoke-static {}, Ly4/h;->t()Ly4/h;

    move-result-object v0

    invoke-direct {p3, p0, v0, p2}, Ly4/a;-><init>(Ljava/lang/String;Ly4/h;I)V

    invoke-virtual {p3, p1}, Ly4/a;->o0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p0}, Ly4/a;->w(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ly4/a;->close()V

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ly4/h;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ly4/h;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ly4/h;",
            "Lz4/e3;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    const/4 p3, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    array-length v0, p5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p5, v1

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p5, Ly4/a;

    invoke-direct {p5, p0, p2, p4}, Ly4/a;-><init>(Ljava/lang/String;Ly4/h;I)V

    invoke-virtual {p5, p1, p3}, Ly4/a;->p0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p5, p0}, Ly4/a;->w(Ljava/lang/Object;)V

    invoke-virtual {p5}, Ly4/a;->close()V

    return-object p0

    :cond_2
    :goto_1
    return-object p3
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ly4/h;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ly4/h;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lz4/e3;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lz4/e3;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    sget-object v2, Ly4/h;->z:Ly4/h;

    sget v4, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Ly4/h;->z:Ly4/h;

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ly4/h;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Ly4/h;",
            "Lz4/e3;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p3, :cond_0

    sget-object p3, Lcom/alibaba/fastjson/util/f;->b:Ljava/nio/charset/Charset;

    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/f;->b:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_4

    array-length p3, p0

    invoke-static {p3}, Lcom/alibaba/fastjson/a;->c(I)[C

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson/util/f;->e([BII[C)I

    move-result v0

    if-gez v0, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const-string p0, "UTF-8"

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v2}, Lcom/alibaba/fastjson/util/f;->m(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_0
    move-object v2, v1

    goto :goto_1

    :goto_0
    invoke-static {v1}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_1
    invoke-static {v2}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    move-object p0, v1

    :goto_2
    if-nez p0, :cond_2

    if-gez v0, :cond_2

    return-object v1

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1, v0}, Ljava/lang/String;-><init>([CII)V

    :cond_3
    move-object v1, p0

    goto :goto_3

    :cond_4
    if-gez p2, :cond_5

    return-object v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v0

    :goto_3
    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    sget-object v5, Ly4/h;->z:Ly4/h;

    const/4 v6, 0x0

    sget v7, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lcom/alibaba/fastjson/a;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    int-to-double v0, p2

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Lcom/alibaba/fastjson/a;->c(I)[C

    move-result-object v0

    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lcom/alibaba/fastjson/util/f;->b(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-static {v0, p0, p4, p5}, Lcom/alibaba/fastjson/a;->parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    array-length v2, p0

    sget-object v3, Lcom/alibaba/fastjson/util/f;->b:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject([BLjava/nio/charset/Charset;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Ly4/h;",
            "Lz4/e3;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    array-length v2, p0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/alibaba/fastjson/a;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;Ly4/h;Lz4/e3;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Ly4/a;

    invoke-static {}, Ly4/h;->t()Ly4/h;

    move-result-object v1

    invoke-direct {p3, p0, p1, v1, v0}, Ly4/a;-><init>([CILy4/h;I)V

    invoke-virtual {p3, p2}, Ly4/a;->o0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p0}, Ly4/a;->w(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ly4/a;->close()V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeMixInAnnotations(Ljava/lang/reflect/Type;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/a;->mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setDefaultTypeKey(Ljava/lang/String;)V
    .locals 7

    sput-object p0, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    sget-object v0, Ly4/h;->z:Ly4/h;

    iget-object v1, v0, Ly4/h;->e:Ly4/i;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ly4/i;->b(Ljava/lang/String;IIIZ)Ljava/lang/String;

    return-void
.end method

.method public static toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La5/g1;->j:La5/g1;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;La5/g1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJSON(Ljava/lang/Object;La5/g1;)Ljava/lang/Object;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/alibaba/fastjson/a;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    instance-of v1, p0, Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/util/TreeMap;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;La5/g1;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/util/Collection;

    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;La5/g1;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v0

    :cond_7
    instance-of v0, p0, La5/m0;

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_9

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    :goto_3
    if-ge v2, p1, :cond_a

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    return-object v0

    :cond_b
    invoke-static {v0}, Ly4/h;->w(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object p0

    :cond_c
    invoke-virtual {p1, v0}, La5/g1;->h(Ljava/lang/Class;)La5/z0;

    move-result-object v0

    instance-of v1, v0, La5/p0;

    if-eqz v1, :cond_12

    check-cast v0, La5/p0;

    invoke-virtual {v0}, La5/p0;->q()Lx4/d;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lx4/d;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_4
    if-ge v2, v3, :cond_f

    aget-object v5, v1, v2

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v5, v6, :cond_d

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v5, v6, :cond_e

    :cond_d
    const/4 v4, 0x1

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    move v2, v4

    :cond_10
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    :try_start_0
    invoke-virtual {v0, p0}, La5/p0;->p(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;La5/g1;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_11
    return-object v1

    :goto_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "toJSON error"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_12
    new-array v0, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;La5/g1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJSON(Ljava/lang/Object;Ly4/h;)Ljava/lang/Object;
    .locals 0

    sget-object p1, La5/g1;->j:La5/g1;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;La5/g1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1

    sget-object v0, La5/g1;->j:La5/g1;

    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/fastjson/a;->toJSONBytes(Ljava/lang/Object;La5/g1;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;La5/g1;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/a;->emptyFilters:[La5/h1;

    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/fastjson/a;->toJSONBytes(Ljava/lang/Object;La5/g1;[La5/h1;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;La5/g1;La5/h1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [La5/h1;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    sget p2, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/fastjson/a;->toJSONBytes(Ljava/lang/Object;La5/g1;[La5/h1;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;La5/g1;[La5/h1;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->toJSONBytes(Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 7

    sget-object v0, Lcom/alibaba/fastjson/util/f;->b:Ljava/nio/charset/Charset;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson/a;->toJSONBytes(Ljava/nio/charset/Charset;Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;La5/g1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2

    sget-object v0, Lcom/alibaba/fastjson/a;->emptyFilters:[La5/h1;

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/a;->toJSONBytes(Ljava/lang/Object;La5/g1;[La5/h1;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;La5/h1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 3

    sget-object v0, La5/g1;->j:La5/g1;

    const/4 v1, 0x1

    new-array v1, v1, [La5/h1;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget p1, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, v1, p1, p2}, Lcom/alibaba/fastjson/a;->toJSONBytes(Ljava/lang/Object;La5/g1;[La5/h1;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[La5/h1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2

    sget-object v0, La5/g1;->j:La5/g1;

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1, v1, p2}, Lcom/alibaba/fastjson/a;->toJSONBytes(Ljava/lang/Object;La5/g1;[La5/h1;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/a;->toJSONBytes(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/nio/charset/Charset;Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2

    new-instance v0, La5/j1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p5, p6}, La5/j1;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    :try_start_0
    new-instance p5, La5/o0;

    invoke-direct {p5, v0, p2}, La5/o0;-><init>(La5/j1;La5/g1;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p5, p4}, La5/o0;->y(Ljava/lang/String;)V

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 p4, 0x1

    invoke-virtual {p5, p2, p4}, La5/o0;->j(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    array-length p2, p3

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p2, :cond_1

    aget-object p6, p3, p4

    invoke-virtual {p5, p6}, La5/i1;->b(La5/h1;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p5, p1}, La5/o0;->A(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, La5/j1;->r(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La5/j1;->close()V

    return-object p0

    :goto_2
    invoke-virtual {v0}, La5/j1;->close()V

    throw p0
.end method

.method public static varargs toJSONBytesWithFastJsonConfig(Ljava/nio/charset/Charset;Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2

    new-instance v0, La5/j1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p5, p6}, La5/j1;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    :try_start_0
    new-instance p5, La5/o0;

    invoke-direct {p5, v0, p2}, La5/o0;-><init>(La5/j1;La5/g1;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p5, p4}, La5/o0;->z(Ljava/lang/String;)V

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 p4, 0x1

    invoke-virtual {p5, p2, p4}, La5/o0;->j(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    array-length p2, p3

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p2, :cond_1

    aget-object p6, p3, p4

    invoke-virtual {p5, p6}, La5/i1;->b(La5/h1;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p5, p1}, La5/o0;->A(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, La5/j1;->r(Ljava/nio/charset/Charset;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La5/j1;->close()V

    return-object p0

    :goto_2
    invoke-virtual {v0}, La5/j1;->close()V

    throw p0
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alibaba/fastjson/a;->emptyFilters:[La5/h1;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;[La5/h1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 3

    new-instance v0, La5/j1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, La5/j1;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    :try_start_0
    new-instance p1, La5/o0;

    invoke-direct {p1, v0}, La5/o0;-><init>(La5/j1;)V

    invoke-virtual {p1, p0}, La5/o0;->A(Ljava/lang/Object;)V

    invoke-virtual {v0}, La5/j1;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    instance-of p0, p0, Ljava/lang/Number;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, p0}, La5/j1;->q(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La5/j1;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La5/j1;->close()V

    return-object p1

    :goto_0
    invoke-virtual {v0}, La5/j1;->close()V

    throw p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;La5/g1;La5/h1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-array v3, v0, [La5/h1;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v4, 0x0

    sget v5, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 2

    new-instance v0, La5/j1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p4, p5}, La5/j1;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    :try_start_0
    new-instance p4, La5/o0;

    invoke-direct {p4, v0, p1}, La5/o0;-><init>(La5/j1;La5/g1;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4, p3}, La5/o0;->y(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 p3, 0x1

    invoke-virtual {p4, p1, p3}, La5/o0;->j(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    array-length p1, p2

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p1, :cond_1

    aget-object p5, p2, p3

    invoke-virtual {p4, p5}, La5/i1;->b(La5/h1;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p4, p0}, La5/o0;->A(Ljava/lang/Object;)V

    invoke-virtual {v0}, La5/j1;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La5/j1;->close()V

    return-object p0

    :goto_2
    invoke-virtual {v0}, La5/j1;->close()V

    throw p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;La5/g1;[La5/h1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;La5/g1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;La5/g1;La5/h1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;La5/h1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    sget-object v1, La5/g1;->j:La5/g1;

    const/4 v0, 0x1

    new-array v2, v0, [La5/h1;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[La5/h1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    sget-object v1, La5/g1;->j:La5/g1;

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    sget-object v1, La5/g1;->j:La5/g1;

    const/4 v2, 0x0

    sget v4, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONStringZ(Ljava/lang/Object;La5/g1;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6

    sget-object v2, Lcom/alibaba/fastjson/a;->emptyFilters:[La5/h1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJavaObject(Lcom/alibaba/fastjson/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Ly4/h;->t()Ly4/h;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;Ly4/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcom/alibaba/fastjson/util/f;->b:Ljava/nio/charset/Charset;

    sget-object v3, La5/g1;->j:La5/g1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/a;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p0

    return p0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/a;->writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p0

    return p0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, La5/j1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p6, p7}, La5/j1;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    :try_start_0
    new-instance p6, La5/o0;

    invoke-direct {p6, v0, p3}, La5/o0;-><init>(La5/j1;La5/g1;)V

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p6, p5}, La5/o0;->y(Ljava/lang/String;)V

    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 p5, 0x1

    invoke-virtual {p6, p3, p5}, La5/o0;->j(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    array-length p3, p4

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p3, :cond_1

    aget-object p7, p4, p5

    invoke-virtual {p6, p7}, La5/i1;->b(La5/h1;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p6, p2}, La5/o0;->A(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, La5/j1;->y0(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La5/j1;->close()V

    return p0

    :goto_2
    invoke-virtual {v0}, La5/j1;->close()V

    throw p0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v3, La5/g1;->j:La5/g1;

    const/4 v5, 0x0

    sget v6, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/a;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p0

    return p0
.end method

.method public static varargs writeJSONString(Ljava/io/Writer;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    new-instance v0, La5/j1;

    invoke-direct {v0, p0, p2, p3}, La5/j1;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    :try_start_0
    new-instance p0, La5/o0;

    invoke-direct {p0, v0}, La5/o0;-><init>(La5/j1;)V

    invoke-virtual {p0, p1}, La5/o0;->A(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La5/j1;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, La5/j1;->close()V

    throw p0
.end method

.method public static varargs writeJSONString(Ljava/io/Writer;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/a;->writeJSONString(Ljava/io/Writer;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public static varargs writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 0

    invoke-static {p1, p0, p2}, Lcom/alibaba/fastjson/a;->writeJSONString(Ljava/io/Writer;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public static final varargs writeJSONStringWithFastJsonConfig(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;La5/g1;[La5/h1;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, La5/j1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p6, p7}, La5/j1;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    :try_start_0
    new-instance p6, La5/o0;

    invoke-direct {p6, v0, p3}, La5/o0;-><init>(La5/j1;La5/g1;)V

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p6, p5}, La5/o0;->z(Ljava/lang/String;)V

    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 p5, 0x1

    invoke-virtual {p6, p3, p5}, La5/o0;->j(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    array-length p3, p4

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p3, :cond_1

    aget-object p7, p4, p5

    invoke-virtual {p6, p7}, La5/i1;->b(La5/h1;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p6, p2}, La5/o0;->A(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, La5/j1;->y0(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La5/j1;->close()V

    return p0

    :goto_2
    invoke-virtual {v0}, La5/j1;->close()V

    throw p0
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 2

    new-instance v0, La5/j1;

    invoke-direct {v0}, La5/j1;-><init>()V

    :try_start_0
    new-instance v1, La5/o0;

    invoke-direct {v1, v0}, La5/o0;-><init>(La5/j1;)V

    invoke-virtual {v1, p0}, La5/o0;->A(Ljava/lang/Object;)V

    invoke-virtual {v0}, La5/j1;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La5/j1;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, La5/j1;->close()V

    throw v1
.end method

.method public toJavaObject(Lcom/alibaba/fastjson/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/g;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/g;->a()Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Ly4/h;->t()Ly4/h;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Ly4/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lcom/alibaba/fastjson/JSONArray;

    if-eq p1, v0, :cond_1

    const-class v0, Lcom/alibaba/fastjson/a;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/util/Collection;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/util/List;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ly4/h;->t()Ly4/h;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;Ly4/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Ly4/h;->t()Ly4/h;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Ly4/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs toString([Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 3

    new-instance v0, La5/j1;

    const/4 v1, 0x0

    sget v2, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    invoke-direct {v0, v1, v2, p1}, La5/j1;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    :try_start_0
    new-instance p1, La5/o0;

    invoke-direct {p1, v0}, La5/o0;-><init>(La5/j1;)V

    invoke-virtual {p1, p0}, La5/o0;->A(Ljava/lang/Object;)V

    invoke-virtual {v0}, La5/j1;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La5/j1;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, La5/j1;->close()V

    throw p1
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 3

    new-instance v0, La5/j1;

    invoke-direct {v0}, La5/j1;-><init>()V

    :try_start_0
    new-instance v1, La5/o0;

    invoke-direct {v1, v0}, La5/o0;-><init>(La5/j1;)V

    invoke-virtual {v1, p0}, La5/o0;->A(Ljava/lang/Object;)V

    invoke-virtual {v0}, La5/j1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, La5/j1;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, La5/j1;->close()V

    throw p1
.end method
