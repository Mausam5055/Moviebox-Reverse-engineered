.class public La2/d;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Landroidx/media3/exoplayer/upstream/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/d$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:[I

.field private static final f:[I


# instance fields
.field private final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, La2/d;->b:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, La2/d;->c:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, La2/d;->d:Ljava/util/regex/Pattern;

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, La2/d;->e:[I

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, La2/d;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, La2/d;->a:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static C(Ljava/util/List;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/e;

    iget-object v2, v1, La2/e;->a:Ljava/lang/String;

    const-string v3, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, La2/e;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v3, La2/d;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse CEA-608 channel number from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, La2/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method protected static D(Ljava/util/List;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/e;

    iget-object v2, v1, La2/e;->a:Ljava/lang/String;

    const-string v3, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, La2/e;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v3, La2/d;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse CEA-708 service block number from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, La2/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method protected static G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/a1;->Z0(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)La2/e;
    .locals 4

    const-string v0, "schemeIdUri"

    const-string v1, ""

    invoke-static {p0, v0, v1}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-static {p0, v3, v2}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {p0, p1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, La2/e;

    invoke-direct {p0, v0, v1, v2}, La2/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected static I(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    invoke-static {p1}, La2/d;->K(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, La2/d;->J(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static J(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, La2/d;->e:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    shr-int v3, p0, v0

    and-int/lit8 v3, v3, 0x1

    aget v2, v2, v0

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1
.end method

.method private static K(Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Landroidx/media3/common/util/a1;->q1(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/google/common/base/o;->f(C)Lcom/google/common/base/o;

    move-result-object v0

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/base/o;->i(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "ac-4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "03"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "04"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/16 p0, 0x15

    return p0

    :cond_3
    const/16 p0, 0x12

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method protected static L(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, -0x1

    if-nez p0, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move p0, v2

    goto :goto_1

    :sswitch_0
    const-string v3, "fa01"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "f801"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "f800"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move p0, v0

    goto :goto_1

    :sswitch_3
    const-string v3, "a000"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move p0, v1

    goto :goto_1

    :sswitch_4
    const-string v3, "4000"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v2

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    return v0

    :pswitch_4
    return v1

    :sswitch_data_0
    .sparse-switch
        0x185d7c -> :sswitch_4
        0x2cd22f -> :sswitch_3
        0x2f3612 -> :sswitch_2
        0x2f3613 -> :sswitch_1
        0x2fcffc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static M(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const-string v0, "value"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, La2/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/16 v0, 0x21

    if-ge p0, v0, :cond_0

    move v1, p0

    :cond_0
    return v1
.end method

.method protected static N(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method protected static O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/a1;->a1(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static P(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/e;

    iget-object v2, v1, La2/e;->a:Ljava/lang/String;

    const-string v3, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "JOC"

    iget-object v4, v1, La2/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ec+3"

    iget-object v1, v1, La2/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string p0, "audio/eac3-joc"

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "audio/eac3"

    return-object p0
.end method

.method protected static T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    :goto_0
    return p2
.end method

.method protected static U(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "frameRate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, La2/d;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method protected static W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method protected static Y(Ljava/util/List;)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/e;

    iget-object v2, v1, La2/e;->a:Ljava/lang/String;

    const-string v3, "http://dashif.org/guidelines/last-segment-number"

    invoke-static {v3, v2}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, La2/e;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected static Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method private a(Ljava/util/List;JJIJ)J
    .locals 0

    if-ltz p6, :cond_0

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    sub-long/2addr p7, p2

    invoke-static {p7, p8, p4, p5}, Landroidx/media3/common/util/a1;->l(JJ)J

    move-result-wide p6

    long-to-int p6, p6

    :goto_0
    const/4 p7, 0x0

    :goto_1
    if-ge p7, p6, :cond_1

    invoke-virtual {p0, p2, p3, p4, p5}, La2/d;->l(JJ)La2/k$d;

    move-result-object p8

    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr p2, p4

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_1
    return-wide p2
.end method

.method protected static b0(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    const-string v0, "value"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, La2/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_0

    sget-object v0, La2/d;->f:[I

    array-length v2, v0

    if-ge p0, v2, :cond_0

    aget v1, v0, p0

    :cond_0
    return v1
.end method

.method private static o(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    return p0
.end method

.method private static p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    return-object p0
.end method

.method private static q(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v3, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    iget-object v4, v2, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v3, Landroidx/media3/common/h;->b:Ljava/util/UUID;

    iget-object v4, v1, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-nez v3, :cond_3

    new-instance v3, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v4, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    iget-object v5, v1, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v1, v1, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-direct {v3, v4, v2, v5, v1}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static r(Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-virtual {v1}, Landroidx/media3/common/DrmInitData$SchemeData;->hasData()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-virtual {v3, v1}, Landroidx/media3/common/DrmInitData$SchemeData;->canReplace(Landroidx/media3/common/DrmInitData$SchemeData;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static s(JJ)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    const-wide p2, 0x7fffffffffffffffL

    cmp-long p2, p0, p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p0

    :goto_1
    return-wide v0
.end method

.method private static t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/media3/common/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroidx/media3/common/y;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Landroidx/media3/common/y;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0}, Landroidx/media3/common/y;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    const-string v0, "application/mp4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p1}, Landroidx/media3/common/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "text/vtt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "application/x-mp4-vtt"

    :cond_4
    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method private u([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, "urn:dvb:dash:profile:dvb-dash:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected static u0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    invoke-static {p0, p1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public static v(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-static {p0}, Landroidx/media3/common/util/b1;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {p0}, Landroidx/media3/common/util/b1;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroidx/media3/common/util/b1;->c(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected A(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 2

    const/4 v0, 0x0

    const-string v1, "availabilityTimeOffset"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    const-string p2, "INF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const p2, 0x49742400    # 1000000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    return-wide p1
.end method

.method protected B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;
    .locals 9

    const/4 v0, 0x0

    const-string v1, "dvb:priority"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    :goto_0
    const-string v4, "dvb:weight"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    const-string v5, "serviceLocation"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "BaseURL"

    invoke-static {p1, v5}, La2/d;->u0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/r0;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v2, :cond_3

    move-object v2, p1

    :cond_3
    new-instance p2, La2/b;

    invoke-direct {p2, p1, v2, v1, v4}, La2/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    new-array p1, v3, [La2/b;

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/google/common/collect/Lists;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_7

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2/b;

    iget-object v7, v6, La2/b;->a:Ljava/lang/String;

    invoke-static {v7, p1}, Landroidx/media3/common/util/r0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v2, :cond_5

    move-object v8, v7

    goto :goto_3

    :cond_5
    move-object v8, v2

    :goto_3
    if-eqz p3, :cond_6

    iget v1, v6, La2/b;->c:I

    iget v4, v6, La2/b;->d:I

    iget-object v8, v6, La2/b;->b:Ljava/lang/String;

    :cond_6
    new-instance v6, La2/b;

    invoke-direct {v6, v7, v8, v1, v4}, La2/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v3

    goto :goto_2

    :cond_7
    return-object v5
.end method

.method protected E(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 11

    const/4 v0, 0x1

    const-string v1, "schemeIdUri"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MpdParser"

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v6, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    const-string v6, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v0

    goto :goto_0

    :sswitch_3
    const-string v6, "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const-string v1, "value"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "default_KID"

    invoke-static {p1, v5}, Landroidx/media3/common/util/b1;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    new-array v6, v6, [Ljava/util/UUID;

    move v7, v4

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_4

    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/2addr v7, v0

    goto :goto_1

    :cond_4
    sget-object v0, Landroidx/media3/common/h;->b:Ljava/util/UUID;

    invoke-static {v0, v6, v2}, Lf3/p;->b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v5

    move-object v6, v2

    goto :goto_6

    :cond_5
    const-string v0, "Ignoring <ContentProtection> with schemeIdUri=\"urn:mpeg:dash:mp4protection:2011\" (ClearKey) due to missing required default_KID attribute."

    invoke-static {v3, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    move-object v5, v0

    :goto_2
    move-object v6, v5

    goto :goto_6

    :pswitch_1
    sget-object v0, Landroidx/media3/common/h;->d:Ljava/util/UUID;

    :goto_3
    move-object v1, v2

    :goto_4
    move-object v5, v1

    goto :goto_2

    :pswitch_2
    sget-object v0, Landroidx/media3/common/h;->e:Ljava/util/UUID;

    goto :goto_3

    :pswitch_3
    sget-object v0, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    goto :goto_3

    :cond_6
    :goto_5
    move-object v0, v2

    move-object v1, v0

    goto :goto_4

    :cond_7
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v7, "clearkey:Laurl"

    invoke-static {p1, v7}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x4

    if-nez v7, :cond_8

    const-string v7, "dashif:Laurl"

    invoke-static {p1, v7}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v8, :cond_9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_9
    const-string v7, "ms:laurl"

    invoke-static {p1, v7}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v6, "licenseUrl"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_a
    if-nez v5, :cond_c

    const-string v7, "pssh"

    invoke-static {p1, v7}, Landroidx/media3/common/util/b1;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v8, :cond_c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lf3/p;->f([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_b

    const-string v0, "Skipping malformed cenc:pssh data"

    invoke-static {v3, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    move-object v5, v2

    goto :goto_7

    :cond_b
    move-object v10, v5

    move-object v5, v0

    move-object v0, v10

    goto :goto_7

    :cond_c
    if-nez v5, :cond_d

    sget-object v7, Landroidx/media3/common/h;->e:Ljava/util/UUID;

    invoke-virtual {v7, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "mspr:pro"

    invoke-static {p1, v9}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v8, :cond_d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-static {v7, v5}, Lf3/p;->a(Ljava/util/UUID;[B)[B

    move-result-object v5

    goto :goto_7

    :cond_d
    invoke-static {p1}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    const-string v7, "ContentProtection"

    invoke-static {p1, v7}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v0, :cond_e

    new-instance v2, Landroidx/media3/common/DrmInitData$SchemeData;

    const-string p1, "video/mp4"

    invoke-direct {v2, v0, v6, p1, v5}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_e
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7610741f -> :sswitch_3
        0x1d2c5beb -> :sswitch_2
        0x2d06c692 -> :sswitch_1
        0x6c0c9d2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected F(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "contentType"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x4

    :cond_4
    :goto_0
    return v1
.end method

.method protected Q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JJLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "duration"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1, v4, v5}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v1, "presentationTime"

    invoke-static {v0, v1, v2, v3}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    move-wide/from16 v13, p4

    invoke-static/range {v9 .. v14}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v9

    sub-long v11, v1, p6

    const-wide/32 v13, 0xf4240

    move-wide/from16 v15, p4

    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v1

    const-string v3, "messageData"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v12, p0

    move-object/from16 v4, p8

    invoke-virtual {v12, v0, v4}, La2/d;->R(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-nez v3, :cond_0

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Landroidx/media3/common/util/a1;->u0(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :goto_1
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v4 .. v11}, La2/d;->c(Ljava/lang/String;Ljava/lang/String;JJ[B)Lw2/a;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected R(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B
    .locals 5

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    :goto_0
    const-string v1, "Event"

    invoke-static {p1, v1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_2

    :pswitch_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    goto/16 :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected S(Lorg/xmlpull/v1/XmlPullParser;)La2/f;
    .locals 19

    move-object/from16 v9, p1

    const-string v0, "schemeIdUri"

    const-string v1, ""

    invoke-static {v9, v0, v1}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "value"

    invoke-static {v9, v0, v1}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "timescale"

    const-wide/16 v1, 0x1

    invoke-static {v9, v0, v1, v2}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    const-string v0, "presentationTimeOffset"

    const-wide/16 v1, 0x0

    invoke-static {v9, v0, v1, v2}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "Event"

    invoke-static {v9, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v11

    move-wide v4, v12

    move-object/from16 v16, v6

    move-wide v6, v14

    move-wide/from16 v17, v14

    move-object v14, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, La2/d;->Q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JJLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object/from16 v16, v6

    move-wide/from16 v17, v14

    move-object v14, v8

    invoke-static/range {p1 .. p1}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    const-string v0, "EventStream"

    invoke-static {v9, v0}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [J

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Lw2/a;

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v7, v0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lw2/a;

    aput-object v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v2, p0

    move-object v3, v10

    move-object v4, v11

    move-wide v5, v12

    invoke-virtual/range {v2 .. v8}, La2/d;->d(Ljava/lang/String;Ljava/lang/String;J[J[Lw2/a;)La2/f;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v8, v14

    move-object/from16 v6, v16

    move-wide/from16 v14, v17

    goto :goto_0
.end method

.method protected V(Lorg/xmlpull/v1/XmlPullParser;)La2/i;
    .locals 2

    const-string v0, "sourceURL"

    const-string v1, "range"

    invoke-virtual {p0, p1, v0, v1}, La2/d;->f0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)La2/i;

    move-result-object p1

    return-object p1
.end method

.method protected X(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/common/s;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "lang"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Label"

    invoke-static {p1, v1}, La2/d;->u0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroidx/media3/common/s;

    invoke-direct {v1, v0, p1}, Landroidx/media3/common/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected a0(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)La2/c;
    .locals 46

    move-object/from16 v14, p0

    move-object/from16 v12, p1

    const/4 v13, 0x1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "profiles"

    invoke-virtual {v14, v12, v2, v1}, La2/d;->d0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, La2/d;->u([Ljava/lang/String;)Z

    move-result v15

    const-string v1, "availabilityStartTime"

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v12, v1, v9, v10}, La2/d;->G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    const-string v1, "mediaPresentationDuration"

    invoke-static {v12, v1, v9, v10}, La2/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    const-string v1, "minBufferTime"

    invoke-static {v12, v1, v9, v10}, La2/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v20

    const-string v1, "type"

    const/4 v11, 0x0

    invoke-interface {v12, v11, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dynamic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    const-string v1, "minimumUpdatePeriod"

    invoke-static {v12, v1, v9, v10}, La2/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide/from16 v23, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v23, v9

    :goto_0
    if-eqz v22, :cond_1

    const-string v1, "timeShiftBufferDepth"

    invoke-static {v12, v1, v9, v10}, La2/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide/from16 v25, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v25, v9

    :goto_1
    if-eqz v22, :cond_2

    const-string v1, "suggestedPresentationDelay"

    invoke-static {v12, v1, v9, v10}, La2/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide/from16 v27, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v27, v9

    :goto_2
    const-string v1, "publishTime"

    invoke-static {v12, v1, v9, v10}, La2/d;->G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v29

    const-wide/16 v1, 0x0

    if-eqz v22, :cond_3

    move-wide v3, v1

    goto :goto_3

    :cond_3
    move-wide v3, v9

    :goto_3
    new-instance v5, La2/b;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v15, :cond_4

    move v8, v13

    goto :goto_4

    :cond_4
    const/high16 v8, -0x80000000

    :goto_4
    invoke-direct {v5, v6, v7, v8, v13}, La2/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    new-array v6, v13, [La2/b;

    aput-object v5, v6, v0

    invoke-static {v6}, Lcom/google/common/collect/Lists;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v22, :cond_5

    move-wide v1, v9

    :cond_5
    move/from16 v31, v0

    move/from16 v32, v31

    move-wide/from16 v33, v1

    move-object/from16 v35, v11

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "BaseURL"

    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v31, :cond_6

    invoke-virtual {v14, v12, v3, v4}, La2/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v3

    move/from16 v31, v13

    :cond_6
    invoke-virtual {v14, v12, v7, v15}, La2/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_6
    move-object/from16 v41, v5

    move-object/from16 v42, v7

    move-wide/from16 v44, v9

    move-object v13, v11

    move-object v11, v8

    goto/16 :goto_a

    :cond_7
    const-string v0, "ProgramInformation"

    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p1}, La2/d;->e0(Lorg/xmlpull/v1/XmlPullParser;)La2/h;

    move-result-object v0

    move-object/from16 v35, v0

    goto :goto_6

    :cond_8
    const-string v0, "UTCTiming"

    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p1}, La2/d;->y0(Lorg/xmlpull/v1/XmlPullParser;)La2/o;

    move-result-object v0

    move-object/from16 v36, v0

    goto :goto_6

    :cond_9
    const-string v0, "Location"

    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/r0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v37, v0

    goto :goto_6

    :cond_a
    const-string v0, "ServiceDescription"

    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p1}, La2/d;->s0(Lorg/xmlpull/v1/XmlPullParser;)La2/l;

    move-result-object v0

    move-object/from16 v38, v0

    goto :goto_6

    :cond_b
    const-string v0, "Period"

    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v32, :cond_10

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    move-object v2, v5

    goto :goto_7

    :cond_c
    move-object v2, v7

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v39, v3

    move-wide/from16 v3, v33

    move-object/from16 v41, v5

    move-wide/from16 v5, v39

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-wide/from16 v7, v16

    move-wide/from16 v44, v9

    move-wide/from16 v9, v25

    move-object v13, v11

    move v11, v15

    invoke-virtual/range {v0 .. v11}, La2/d;->c0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, La2/g;

    iget-wide v2, v1, La2/g;->b:J

    cmp-long v2, v2, v44

    if-nez v2, :cond_e

    if-eqz v22, :cond_d

    move-object/from16 v11, v43

    const/16 v32, 0x1

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to determine start of period "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_e
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v44

    if-nez v0, :cond_f

    move-object/from16 v11, v43

    move-wide/from16 v9, v44

    goto :goto_8

    :cond_f
    iget-wide v4, v1, La2/g;->b:J

    add-long v9, v4, v2

    move-object/from16 v11, v43

    :goto_8
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v33, v9

    :goto_9
    move-wide/from16 v3, v39

    goto :goto_a

    :cond_10
    move-wide/from16 v39, v3

    move-object/from16 v41, v5

    move-object/from16 v42, v7

    move-wide/from16 v44, v9

    move-object v13, v11

    move-object v11, v8

    invoke-static/range {p1 .. p1}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    :goto_a
    const-string v0, "MPD"

    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    cmp-long v0, v18, v44

    if-nez v0, :cond_13

    cmp-long v0, v33, v44

    if-eqz v0, :cond_11

    move-wide/from16 v3, v33

    goto :goto_c

    :cond_11
    if-eqz v22, :cond_12

    goto :goto_b

    :cond_12
    const-string v0, "Unable to determine duration of static manifest."

    invoke-static {v0, v13}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_13
    :goto_b
    move-wide/from16 v3, v18

    :goto_c
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v5, v20

    move/from16 v7, v22

    move-wide/from16 v8, v23

    move-object/from16 v39, v11

    move-wide/from16 v10, v25

    move-wide/from16 v12, v27

    move-wide/from16 v14, v29

    move-object/from16 v16, v35

    move-object/from16 v17, v36

    move-object/from16 v18, v38

    move-object/from16 v19, v37

    move-object/from16 v20, v39

    invoke-virtual/range {v0 .. v20}, La2/d;->f(JJJZJJJJLa2/h;La2/o;La2/l;Landroid/net/Uri;Ljava/util/List;)La2/c;

    move-result-object v0

    return-object v0

    :cond_14
    const-string v0, "No periods found."

    invoke-static {v0, v13}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_15
    move-object/from16 v14, p0

    move-object v8, v11

    move-object v11, v13

    move-object/from16 v5, v41

    move-object/from16 v7, v42

    move-wide/from16 v9, v44

    const/4 v13, 0x1

    goto/16 :goto_5
.end method

.method protected b(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)La2/a;
    .locals 9

    new-instance v8, La2/a;

    move-object v0, v8

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, La2/a;-><init>(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;JJ[B)Lw2/a;
    .locals 9

    new-instance v8, Lw2/a;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p5

    move-wide v5, p3

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lw2/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object v8
.end method

.method protected c0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;
    .locals 35

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v0, "id"

    const/4 v12, 0x0

    invoke-interface {v14, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v0, "start"

    move-wide/from16 v1, p3

    invoke-static {v14, v0, v1, v2}, La2/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p7, v10

    if-eqz v0, :cond_0

    add-long v0, p7, v17

    move-wide/from16 v19, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v19, v10

    :goto_0
    const-string v0, "duration"

    invoke-static {v14, v0, v10, v11}, La2/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v21

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move-wide/from16 v6, p5

    move/from16 v23, v0

    move-wide/from16 v25, v10

    move-object/from16 v24, v12

    move-object/from16 v27, v24

    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "BaseURL"

    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v23, :cond_1

    invoke-virtual {v15, v14, v6, v7}, La2/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v6

    const/16 v23, 0x1

    :cond_1
    move-object/from16 v4, p2

    move/from16 v5, p11

    invoke-virtual {v15, v14, v4, v5}, La2/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v32, v8

    move-object/from16 v30, v9

    move-wide/from16 v33, v10

    move-object/from16 v31, v12

    move-object v15, v13

    goto/16 :goto_6

    :cond_2
    move-object/from16 v4, p2

    move/from16 v5, p11

    const-string v0, "AdaptationSet"

    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v2, v9

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v24

    move-wide/from16 v4, v21

    move-wide/from16 v28, v6

    move-object v15, v8

    move-object/from16 v30, v9

    move-wide/from16 v8, v25

    move-wide/from16 v10, v19

    move-object/from16 p3, v15

    move-object v15, v13

    move-wide/from16 v12, p9

    move/from16 v14, p11

    invoke-virtual/range {v0 .. v14}, La2/d;->x(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;La2/k;JJJJJZ)La2/a;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p1

    move-object/from16 v32, p3

    :goto_3
    const/16 v31, 0x0

    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_5

    :cond_4
    move-wide/from16 v28, v6

    move-object/from16 p3, v8

    move-object/from16 v30, v9

    move-object v15, v13

    const-string v0, "EventStream"

    move-object/from16 v14, p1

    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p1}, La2/d;->S(Lorg/xmlpull/v1/XmlPullParser;)La2/f;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v1

    goto :goto_3

    :cond_5
    move-object/from16 v1, p3

    const-string v0, "SegmentBase"

    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v13, p0

    move-object/from16 v32, v1

    const/4 v11, 0x0

    invoke-virtual {v13, v14, v11}, La2/d;->l0(Lorg/xmlpull/v1/XmlPullParser;La2/k$e;)La2/k$e;

    move-result-object v0

    move-object/from16 v24, v0

    move-object/from16 v31, v11

    move-wide/from16 v6, v28

    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_6

    :cond_6
    move-object/from16 v13, p0

    move-object/from16 v32, v1

    const/4 v11, 0x0

    const-string v0, "SegmentList"

    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v13, v14, v9, v10}, La2/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v24

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    move-wide/from16 v7, v28

    move-wide/from16 v9, v24

    move-object/from16 v31, v11

    move-wide/from16 v11, p9

    invoke-virtual/range {v0 .. v12}, La2/d;->m0(Lorg/xmlpull/v1/XmlPullParser;La2/k$b;JJJJJ)La2/k$b;

    move-result-object v0

    move-wide/from16 v25, v24

    move-wide/from16 v6, v28

    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    move-object/from16 v24, v0

    goto :goto_6

    :cond_7
    move-object/from16 v31, v11

    const-string v0, "SegmentTemplate"

    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v13, v14, v10, v11}, La2/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v24

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move-wide/from16 v8, v28

    move-wide/from16 v33, v10

    move-wide/from16 v10, v24

    move-wide/from16 v12, p9

    invoke-virtual/range {v0 .. v13}, La2/d;->n0(Lorg/xmlpull/v1/XmlPullParser;La2/k$c;Ljava/util/List;JJJJJ)La2/k$c;

    move-result-object v0

    move-wide/from16 v25, v24

    move-wide/from16 v6, v28

    goto :goto_4

    :cond_8
    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    const-string v0, "AssetIdentifier"

    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v14, v0}, La2/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)La2/e;

    move-result-object v0

    move-object/from16 v27, v0

    :goto_5
    move-wide/from16 v6, v28

    goto :goto_6

    :cond_9
    invoke-static/range {p1 .. p1}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    :goto_6
    const-string v0, "Period"

    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 p1, p0

    move-object/from16 p2, v16

    move-wide/from16 p3, v17

    move-object/from16 p5, v15

    move-object/from16 p6, v32

    move-object/from16 p7, v27

    invoke-virtual/range {p1 .. p7}, La2/d;->g(Ljava/lang/String;JLjava/util/List;Ljava/util/List;La2/e;)La2/g;

    move-result-object v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_a
    move-object v13, v15

    move-object/from16 v9, v30

    move-object/from16 v12, v31

    move-object/from16 v8, v32

    move-wide/from16 v10, v33

    move-object/from16 v15, p0

    goto/16 :goto_1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;J[J[Lw2/a;)La2/f;
    .locals 8

    new-instance v7, La2/f;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, La2/f;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lw2/a;)V

    return-object v7
.end method

.method protected d0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/r;
    .locals 12

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p13

    move-object/from16 v6, p15

    move-object/from16 v7, p12

    invoke-static {p2, v7}, La2/d;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "audio/eac3"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static/range {p16 .. p16}, La2/d;->P(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "audio/eac3-joc"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v7, "ec+3"

    :cond_0
    invoke-static {v7, v5}, Landroidx/media3/common/y;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v7

    :goto_0
    const-string v8, "video/dolby-vision"

    move-object v7, v5

    :cond_2
    invoke-virtual {p0, v4}, La2/d;->r0(Ljava/util/List;)I

    move-result v5

    invoke-virtual {p0, v4}, La2/d;->k0(Ljava/util/List;)I

    move-result v4

    move-object/from16 v9, p11

    invoke-virtual {p0, v9}, La2/d;->h0(Ljava/util/List;)I

    move-result v10

    or-int/2addr v4, v10

    invoke-virtual {p0, v6}, La2/d;->j0(Ljava/util/List;)I

    move-result v10

    or-int/2addr v4, v10

    move-object/from16 v10, p16

    invoke-virtual {p0, v10}, La2/d;->j0(Ljava/util/List;)I

    move-result v10

    or-int/2addr v4, v10

    invoke-virtual {p0, v6}, La2/d;->v0(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v6

    new-instance v10, Landroidx/media3/common/r$b;

    invoke-direct {v10}, Landroidx/media3/common/r$b;-><init>()V

    move-object v11, p1

    invoke-virtual {v10, p1}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    move/from16 v7, p8

    invoke-virtual {v1, v7}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    move-object/from16 v4, p9

    invoke-virtual {v1, v4}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    const/4 v4, -0x1

    if-eqz v6, :cond_3

    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    invoke-virtual {v1, v5}, Landroidx/media3/common/r$b;->z0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    if-eqz v6, :cond_4

    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    invoke-virtual {v1, v5}, Landroidx/media3/common/r$b;->A0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-static {v8}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1, p3}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object v2

    move/from16 v3, p5

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->b0(F)Landroidx/media3/common/r$b;

    goto :goto_4

    :cond_5
    invoke-static {v8}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move/from16 v5, p6

    invoke-virtual {v1, v5}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v2

    move/from16 v3, p7

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    goto :goto_4

    :cond_6
    invoke-static {v8}, Landroidx/media3/common/y;->s(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v2, "application/cea-608"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static/range {p11 .. p11}, La2/d;->C(Ljava/util/List;)I

    move-result v4

    goto :goto_3

    :cond_7
    const-string v2, "application/cea-708"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static/range {p11 .. p11}, La2/d;->D(Ljava/util/List;)I

    move-result v4

    :cond_8
    :goto_3
    invoke-virtual {v1, v4}, Landroidx/media3/common/r$b;->O(I)Landroidx/media3/common/r$b;

    goto :goto_4

    :cond_9
    invoke-static {v8}, Landroidx/media3/common/y;->q(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1, p3}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    :cond_a
    :goto_4
    invoke-virtual {v1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v1

    return-object v1
.end method

.method protected e0(Lorg/xmlpull/v1/XmlPullParser;)La2/h;
    .locals 8

    const-string v0, "moreInformationURL"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "lang"

    invoke-static {p1, v0, v1}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v1

    move-object v2, v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "Title"

    invoke-static {p1, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v5, v2

    goto :goto_2

    :cond_0
    const-string v3, "Source"

    invoke-static {p1, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "Copyright"

    invoke-static {p1, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {p1}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :goto_2
    const-string v2, "ProgramInformation"

    invoke-static {p1, v2}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p1, La2/h;

    move-object v2, p1

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, La2/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    move-object v2, v5

    goto :goto_0
.end method

.method protected f(JJJZJJJJLa2/h;La2/o;La2/l;Landroid/net/Uri;Ljava/util/List;)La2/c;
    .locals 22

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    new-instance v21, La2/c;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, La2/c;-><init>(JJJZJJJJLa2/h;La2/o;La2/l;Landroid/net/Uri;Ljava/util/List;)V

    return-object v21
.end method

.method protected f0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)La2/i;
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, -0x1

    if-eqz p1, :cond_1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    array-length v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    move-wide v5, p1

    :goto_0
    move-wide v3, v0

    goto :goto_2

    :cond_0
    :goto_1
    move-wide v5, p2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :goto_2
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, La2/d;->h(Ljava/lang/String;JJ)La2/i;

    move-result-object p1

    return-object p1
.end method

.method protected g(Ljava/lang/String;JLjava/util/List;Ljava/util/List;La2/e;)La2/g;
    .locals 8

    new-instance v7, La2/g;

    move-object v0, v7

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, La2/g;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;La2/e;)V

    return-object v7
.end method

.method protected g0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;La2/k;JJJJJZ)La2/d$a;
    .locals 38

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {v14, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v0, "bandwidth"

    const/4 v2, -0x1

    invoke-static {v14, v0, v2}, La2/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    const-string v0, "mimeType"

    move-object/from16 v2, p3

    invoke-static {v14, v0, v2}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v0, "codecs"

    move-object/from16 v2, p4

    invoke-static {v14, v0, v2}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "scte214:supplementalCodecs"

    move-object/from16 v2, p5

    invoke-static {v14, v0, v2}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v0, "scte214:supplementalProfiles"

    move-object/from16 v2, p6

    invoke-static {v14, v0, v2}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v0, "width"

    move/from16 v2, p7

    invoke-static {v14, v0, v2}, La2/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    const-string v0, "height"

    move/from16 v2, p8

    invoke-static {v14, v0, v2}, La2/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, p9

    invoke-static {v14, v0}, La2/d;->U(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v23

    const-string v0, "audioSamplingRate"

    move/from16 v2, p11

    invoke-static {v14, v0, v2}, La2/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v24

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p15

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v7, p16

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move/from16 v25, p10

    move-wide/from16 v5, p22

    move/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v0, p17

    move-wide/from16 v1, p24

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "BaseURL"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v26, :cond_0

    invoke-virtual {v15, v14, v5, v6}, La2/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v5

    const/16 v26, 0x1

    :cond_0
    move-object/from16 v3, p2

    move/from16 v4, p28

    move-wide/from16 p3, v5

    invoke-virtual {v15, v14, v3, v4}, La2/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-wide/from16 v5, p3

    :goto_1
    move-object/from16 v32, v8

    move-object/from16 v37, v13

    move/from16 v7, v25

    move-object/from16 v25, v0

    :goto_2
    move-object v13, v11

    move-object v11, v9

    goto/16 :goto_9

    :cond_1
    move/from16 v4, p28

    const-string v3, "AudioChannelConfiguration"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v15, v14, v13}, La2/d;->z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v25, v0

    move v7, v3

    move-object/from16 v32, v8

    move-object/from16 v37, v13

    goto :goto_2

    :cond_2
    const-string v3, "SegmentBase"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v0, La2/k$e;

    invoke-virtual {v15, v14, v0}, La2/d;->l0(Lorg/xmlpull/v1/XmlPullParser;La2/k$e;)La2/k$e;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v3, "SegmentList"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v15, v14, v1, v2}, La2/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v28

    move-object v2, v0

    check-cast v2, La2/k$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p18

    move-wide/from16 v30, v5

    move-wide/from16 v5, p20

    move-object/from16 v32, v8

    move-wide/from16 v7, v30

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-wide/from16 v9, v28

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move-wide/from16 v11, p26

    invoke-virtual/range {v0 .. v12}, La2/d;->m0(Lorg/xmlpull/v1/XmlPullParser;La2/k$b;JJJJJ)La2/k$b;

    move-result-object v0

    move-object/from16 v37, v13

    :goto_3
    move/from16 v7, v25

    move-wide/from16 v1, v28

    move-wide/from16 v5, v30

    move-object/from16 v11, v33

    move-object/from16 v10, v34

    move-object/from16 v13, v35

    :goto_4
    move-object/from16 v12, v36

    :goto_5
    move-object/from16 v25, v0

    goto/16 :goto_9

    :cond_4
    move-wide/from16 v30, v5

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    const-string v3, "SegmentTemplate"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v15, v14, v1, v2}, La2/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v28

    move-object v2, v0

    check-cast v2, La2/k$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p16

    move-wide/from16 v4, p18

    move-wide/from16 v6, p20

    move-wide/from16 v8, v30

    move-wide/from16 v10, v28

    move-object/from16 v37, v13

    move-wide/from16 v12, p26

    invoke-virtual/range {v0 .. v13}, La2/d;->n0(Lorg/xmlpull/v1/XmlPullParser;La2/k$c;Ljava/util/List;JJJJJ)La2/k$c;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object/from16 v37, v13

    const-string v3, "ContentProtection"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p1}, La2/d;->E(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_6

    move-object/from16 v27, v4

    check-cast v27, Ljava/lang/String;

    :cond_6
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_7

    check-cast v3, Landroidx/media3/common/DrmInitData$SchemeData;

    move-object/from16 v13, v35

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    move-object/from16 v13, v35

    :goto_6
    move/from16 v7, v25

    move-wide/from16 v5, v30

    move-object/from16 v11, v33

    move-object/from16 v10, v34

    goto :goto_4

    :cond_8
    move-object/from16 v13, v35

    const-string v3, "InbandEventStream"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v14, v3}, La2/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)La2/e;

    move-result-object v3

    move-object/from16 v12, v36

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v33

    :goto_7
    move-object/from16 v10, v34

    goto :goto_8

    :cond_9
    move-object/from16 v12, v36

    const-string v3, "EssentialProperty"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v14, v3}, La2/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)La2/e;

    move-result-object v3

    move-object/from16 v11, v33

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move-object/from16 v11, v33

    const-string v3, "SupplementalProperty"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v14, v3}, La2/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)La2/e;

    move-result-object v3

    move-object/from16 v10, v34

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    move-object/from16 v10, v34

    invoke-static/range {p1 .. p1}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_8
    move/from16 v7, v25

    move-wide/from16 v5, v30

    goto/16 :goto_5

    :goto_9
    const-string v0, "Representation"

    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    move v6, v7

    move/from16 v7, v24

    move/from16 v8, v17

    move-object/from16 v9, p12

    move-object/from16 v28, v10

    move-object/from16 v10, p13

    move-object/from16 v29, v11

    move-object/from16 v11, p14

    move-object/from16 v30, v12

    move-object/from16 v12, v37

    move-object/from16 v31, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    move-object/from16 v15, v29

    move-object/from16 v16, v28

    invoke-virtual/range {v0 .. v16}, La2/d;->e(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/r;

    move-result-object v0

    if-eqz v25, :cond_c

    goto :goto_a

    :cond_c
    new-instance v1, La2/k$e;

    invoke-direct {v1}, La2/k$e;-><init>()V

    move-object/from16 v25, v1

    :goto_a
    new-instance v1, La2/d$a;

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_b

    :cond_d
    move-object/from16 v32, p2

    :goto_b
    const-wide/16 v2, -0x1

    move-object/from16 p1, v1

    move-object/from16 p2, v0

    move-object/from16 p3, v32

    move-object/from16 p4, v25

    move-object/from16 p5, v27

    move-object/from16 p6, v31

    move-object/from16 p7, v30

    move-object/from16 p8, v29

    move-object/from16 p9, v28

    move-wide/from16 p10, v2

    invoke-direct/range {p1 .. p11}, La2/d$a;-><init>(Landroidx/media3/common/r;Ljava/util/List;La2/k;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V

    return-object v1

    :cond_e
    move-object/from16 v15, p0

    move-object v9, v11

    move-object v11, v13

    move-object/from16 v0, v25

    move-object/from16 v8, v32

    move-object/from16 v13, v37

    move/from16 v25, v7

    move-object/from16 v7, p16

    goto/16 :goto_0
.end method

.method protected h(Ljava/lang/String;JJ)La2/i;
    .locals 7

    new-instance v6, La2/i;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, La2/i;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method protected h0(Ljava/util/List;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/e;

    iget-object v3, v2, La2/e;->a:Ljava/lang/String;

    const-string v4, "urn:mpeg:dash:role:2011"

    invoke-static {v4, v3}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, La2/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, La2/d;->i0(Ljava/lang/String;)I

    move-result v2

    :goto_1
    or-int/2addr v1, v2

    goto :goto_2

    :cond_0
    const-string v3, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    iget-object v4, v2, La2/e;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, La2/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, La2/d;->w0(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected i(La2/d$a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)La2/j;
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, La2/d$a;->a:Landroidx/media3/common/r;

    invoke-virtual {v2}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    invoke-virtual {v2, v1}, Landroidx/media3/common/r$b;->i0(Ljava/util/List;)Landroidx/media3/common/r$b;

    :goto_0
    iget-object v1, v0, La2/d$a;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object/from16 v1, p4

    :cond_1
    iget-object v3, v0, La2/d$a;->e:Ljava/util/ArrayList;

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, La2/d;->q(Ljava/util/ArrayList;)V

    invoke-static {v3}, La2/d;->r(Ljava/util/ArrayList;)V

    new-instance v4, Landroidx/media3/common/DrmInitData;

    invoke-direct {v4, v1, v3}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroidx/media3/common/r$b;->Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;

    :cond_2
    iget-object v10, v0, La2/d$a;->f:Ljava/util/ArrayList;

    move-object/from16 v1, p6

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-wide v5, v0, La2/d$a;->g:J

    invoke-virtual {v2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v7

    iget-object v8, v0, La2/d$a;->b:Lcom/google/common/collect/ImmutableList;

    iget-object v9, v0, La2/d$a;->c:La2/k;

    iget-object v11, v0, La2/d$a;->h:Ljava/util/List;

    iget-object v12, v0, La2/d$a;->i:Ljava/util/List;

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, La2/j;->n(JLandroidx/media3/common/r;Ljava/util/List;La2/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)La2/j;

    move-result-object v0

    return-object v0
.end method

.method protected i0(Ljava/lang/String;)I
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "supplementary"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "emergency"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v6, "commentary"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v6, "caption"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v6, "sign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    move v5, v0

    goto/16 :goto_0

    :sswitch_5
    const-string v6, "main"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_6
    const-string v6, "dub"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v6, "forced-subtitle"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_8
    const-string v6, "alternate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v5, v1

    goto :goto_0

    :sswitch_9
    const-string v6, "forced_subtitle"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_a
    const-string v6, "enhanced-audio-intelligibility"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    move v5, v2

    goto :goto_0

    :sswitch_b
    const-string v6, "description"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    move v5, v3

    goto :goto_0

    :sswitch_c
    const-string v6, "subtitle"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    return v4

    :pswitch_0
    return v1

    :pswitch_1
    const/16 p1, 0x20

    return p1

    :pswitch_2
    return v0

    :pswitch_3
    const/16 p1, 0x40

    return p1

    :pswitch_4
    const/16 p1, 0x100

    return p1

    :pswitch_5
    return v3

    :pswitch_6
    const/16 p1, 0x10

    return p1

    :pswitch_7
    return v2

    :pswitch_8
    const/16 p1, 0x800

    return p1

    :pswitch_9
    const/16 p1, 0x200

    return p1

    :pswitch_a
    const/16 p1, 0x80

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_c
        -0x66ca7c04 -> :sswitch_b
        -0x5e3a5c50 -> :sswitch_a
        -0x5dde3142 -> :sswitch_9
        -0x53ecbf86 -> :sswitch_8
        -0x533bdf74 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected j(La2/i;JJJJLjava/util/List;JLjava/util/List;JJ)La2/k$b;
    .locals 19

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    new-instance v18, La2/k$b;

    move-object/from16 v0, v18

    invoke-static/range {p14 .. p15}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v14

    invoke-static/range {p16 .. p17}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v16

    invoke-direct/range {v0 .. v17}, La2/k$b;-><init>(La2/i;JJJJLjava/util/List;JLjava/util/List;JJ)V

    return-object v18
.end method

.method protected j0(Ljava/util/List;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/e;

    const-string v3, "http://dashif.org/guidelines/trickmode"

    iget-object v2, v2, La2/e;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x4000

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected k(La2/i;JJJJJLjava/util/List;JLa2/n;La2/n;JJ)La2/k$c;
    .locals 22

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-wide/from16 v13, p13

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    new-instance v21, La2/k$c;

    move-object/from16 v0, v21

    invoke-static/range {p17 .. p18}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v17

    invoke-static/range {p19 .. p20}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v19

    invoke-direct/range {v0 .. v20}, La2/k$c;-><init>(La2/i;JJJJJLjava/util/List;JLa2/n;La2/n;JJ)V

    return-object v21
.end method

.method protected k0(Ljava/util/List;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/e;

    iget-object v3, v2, La2/e;->a:Ljava/lang/String;

    const-string v4, "urn:mpeg:dash:role:2011"

    invoke-static {v4, v3}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, La2/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, La2/d;->i0(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected l(JJ)La2/k$d;
    .locals 1

    new-instance v0, La2/k$d;

    invoke-direct {v0, p1, p2, p3, p4}, La2/k$d;-><init>(JJ)V

    return-object v0
.end method

.method protected l0(Lorg/xmlpull/v1/XmlPullParser;La2/k$e;)La2/k$e;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v4, v1, La2/k;->b:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    iget-wide v6, v1, La2/k;->c:J

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    const-string v8, "presentationTimeOffset"

    invoke-static {v0, v8, v6, v7}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    iget-wide v6, v1, La2/k$e;->d:J

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    if-eqz v1, :cond_3

    iget-wide v4, v1, La2/k$e;->e:J

    :cond_3
    const-string v8, "indexRange"

    const/4 v13, 0x0

    invoke-interface {v0, v13, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v4, "-"

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v7, v5

    add-long/2addr v7, v2

    move-wide v15, v7

    goto :goto_3

    :cond_4
    move-wide v15, v4

    move-wide v5, v6

    :goto_3
    if-eqz v1, :cond_5

    iget-object v13, v1, La2/k;->a:La2/i;

    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    invoke-static {v0, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p1}, La2/d;->V(Lorg/xmlpull/v1/XmlPullParser;)La2/i;

    move-result-object v1

    move-object v13, v1

    goto :goto_4

    :cond_6
    invoke-static/range {p1 .. p1}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    const-string v1, "SegmentBase"

    invoke-static {v0, v1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v7, p0

    move-object v8, v13

    move-wide v13, v5

    invoke-virtual/range {v7 .. v16}, La2/d;->m(La2/i;JJJJ)La2/k$e;

    move-result-object v0

    return-object v0
.end method

.method protected m(La2/i;JJJJ)La2/k$e;
    .locals 11

    new-instance v10, La2/k$e;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, La2/k$e;-><init>(La2/i;JJJJ)V

    return-object v10
.end method

.method protected m0(Lorg/xmlpull/v1/XmlPullParser;La2/k$b;JJJJJ)La2/k$b;
    .locals 23

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-wide/16 v0, 0x1

    if-eqz v7, :cond_0

    iget-wide v2, v7, La2/k;->b:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string v4, "timescale"

    invoke-static {v6, v4, v2, v3}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v7, :cond_1

    iget-wide v2, v7, La2/k;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    invoke-static {v6, v4, v2, v3}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    if-eqz v7, :cond_2

    iget-wide v2, v7, La2/k$a;->e:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v6, v4, v2, v3}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    if-eqz v7, :cond_3

    iget-wide v0, v7, La2/k$a;->d:J

    :cond_3
    const-string v2, "startNumber"

    invoke-static {v6, v2, v0, v1}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    invoke-static/range {p7 .. p10}, La2/d;->s(JJ)J

    move-result-wide v17

    const/4 v0, 0x0

    move-object v12, v0

    move-object/from16 v19, v12

    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p1}, La2/d;->V(Lorg/xmlpull/v1/XmlPullParser;)La2/i;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_3

    :cond_5
    const-string v1, "SegmentTimeline"

    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v8

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, La2/d;->o0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v1, "SegmentURL"

    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v12, :cond_7

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-virtual/range {p0 .. p1}, La2/d;->p0(Lorg/xmlpull/v1/XmlPullParser;)La2/i;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-static/range {p1 .. p1}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    const-string v1, "SegmentList"

    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v7, :cond_c

    if-eqz v19, :cond_9

    goto :goto_4

    :cond_9
    iget-object v1, v7, La2/k;->a:La2/i;

    move-object/from16 v19, v1

    :goto_4
    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    iget-object v0, v7, La2/k$a;->f:Ljava/util/List;

    :goto_5
    if-eqz v12, :cond_b

    goto :goto_6

    :cond_b
    iget-object v12, v7, La2/k$b;->j:Ljava/util/List;

    :cond_c
    :goto_6
    move-object v1, v12

    move-object/from16 v6, v19

    move-object/from16 v5, p0

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v15

    move-object v15, v0

    move-wide/from16 v16, v17

    move-object/from16 v18, v1

    move-wide/from16 v19, p11

    move-wide/from16 v21, p3

    invoke-virtual/range {v5 .. v22}, La2/d;->j(La2/i;JJJJLjava/util/List;JLjava/util/List;JJ)La2/k$b;

    move-result-object v0

    return-object v0
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)La2/o;
    .locals 1

    new-instance v0, La2/o;

    invoke-direct {v0, p1, p2}, La2/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected n0(Lorg/xmlpull/v1/XmlPullParser;La2/k$c;Ljava/util/List;JJJJJ)La2/k$c;
    .locals 24

    move-object/from16 v15, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-wide/16 v0, 0x1

    if-eqz v7, :cond_0

    iget-wide v2, v7, La2/k;->b:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string v4, "timescale"

    invoke-static {v6, v4, v2, v3}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v7, :cond_1

    iget-wide v2, v7, La2/k;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    invoke-static {v6, v4, v2, v3}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    if-eqz v7, :cond_2

    iget-wide v2, v7, La2/k$a;->e:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v6, v4, v2, v3}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    if-eqz v7, :cond_3

    iget-wide v0, v7, La2/k$a;->d:J

    :cond_3
    const-string v2, "startNumber"

    invoke-static {v6, v2, v0, v1}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {p3 .. p3}, La2/d;->Y(Ljava/util/List;)J

    move-result-wide v18

    invoke-static/range {p8 .. p11}, La2/d;->s(JJ)J

    move-result-wide v20

    const/4 v0, 0x0

    if-eqz v7, :cond_4

    iget-object v1, v7, La2/k$c;->k:La2/n;

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    const-string v2, "media"

    invoke-virtual {v15, v6, v2, v1}, La2/d;->x0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;La2/n;)La2/n;

    move-result-object v22

    if-eqz v7, :cond_5

    iget-object v1, v7, La2/k$c;->j:La2/n;

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    const-string v2, "initialization"

    invoke-virtual {v15, v6, v2, v1}, La2/d;->x0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;La2/n;)La2/n;

    move-result-object v23

    move-object v14, v0

    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p1}, La2/d;->V(Lorg/xmlpull/v1/XmlPullParser;)La2/i;

    move-result-object v1

    move-object v14, v1

    goto :goto_6

    :cond_6
    const-string v1, "SegmentTimeline"

    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v8

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, La2/d;->o0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-static/range {p1 .. p1}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_6
    const-string v1, "SegmentTemplate"

    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v7, :cond_a

    if-eqz v14, :cond_8

    goto :goto_7

    :cond_8
    iget-object v14, v7, La2/k;->a:La2/i;

    :goto_7
    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    iget-object v0, v7, La2/k$a;->f:Ljava/util/List;

    :cond_a
    :goto_8
    move-object v1, v14

    move-object v14, v0

    move-object/from16 v0, p0

    move-wide v2, v8

    move-wide v4, v10

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    move-wide v10, v12

    move-object v12, v14

    move-wide/from16 v13, v20

    move-object/from16 v15, v23

    move-object/from16 v16, v22

    move-wide/from16 v17, p12

    move-wide/from16 v19, p4

    invoke-virtual/range {v0 .. v20}, La2/d;->k(La2/i;JJJJJLjava/util/List;JLa2/n;La2/n;JJ)La2/k$c;

    move-result-object v0

    return-object v0

    :cond_b
    move-object/from16 v15, p0

    goto :goto_5
.end method

.method protected o0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;
    .locals 20

    move-object/from16 v0, p1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    move-wide v3, v1

    move-wide v5, v11

    move v1, v13

    move v7, v1

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "S"

    invoke-static {v0, v2}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "t"

    invoke-static {v0, v2, v11, v12}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    if-eqz v1, :cond_1

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v8, v14

    invoke-direct/range {v1 .. v9}, La2/d;->a(Ljava/util/List;JJIJ)J

    move-result-wide v3

    :cond_1
    cmp-long v1, v14, v11

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v14, v3

    :goto_0
    const-string v1, "d"

    invoke-static {v0, v1, v11, v12}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "r"

    invoke-static {v0, v3, v13}, La2/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    move-wide v5, v1

    move v7, v3

    move v1, v4

    move-wide v3, v14

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    const-string v2, "SegmentTimeline"

    invoke-static {v0, v2}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    const-wide/16 v18, 0x3e8

    move-wide/from16 v14, p4

    move-wide/from16 v16, p2

    invoke-static/range {v14 .. v19}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v8

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, La2/d;->a(Ljava/util/List;JJIJ)J

    :cond_4
    return-object v10
.end method

.method protected p0(Lorg/xmlpull/v1/XmlPullParser;)La2/i;
    .locals 2

    const-string v0, "media"

    const-string v1, "mediaRange"

    invoke-virtual {p0, p1, v0, v1}, La2/d;->f0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)La2/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, La2/d;->w(Landroid/net/Uri;Ljava/io/InputStream;)La2/c;

    move-result-object p1

    return-object p1
.end method

.method protected q0(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "forced_subtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "forced-subtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method protected r0(Ljava/util/List;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/e;

    iget-object v3, v2, La2/e;->a:Ljava/lang/String;

    const-string v4, "urn:mpeg:dash:role:2011"

    invoke-static {v4, v3}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, La2/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, La2/d;->q0(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected s0(Lorg/xmlpull/v1/XmlPullParser;)La2/l;
    .locals 21

    move-object/from16 v0, p1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const v3, -0x800001

    move-wide v4, v1

    move-wide v6, v4

    move-wide v8, v6

    move v10, v3

    move v11, v10

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v12, "Latency"

    invoke-static {v0, v12}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    const-string v13, "max"

    const-string v14, "min"

    if-eqz v12, :cond_1

    const-string v4, "target"

    invoke-static {v0, v4, v1, v2}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v0, v14, v1, v2}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v0, v13, v1, v2}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    :cond_0
    :goto_1
    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    move/from16 v19, v10

    move/from16 v20, v11

    goto :goto_2

    :cond_1
    const-string v12, "PlaybackRate"

    invoke-static {v0, v12}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v0, v14, v3}, La2/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    move-result v10

    invoke-static {v0, v13, v3}, La2/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    move-result v11

    goto :goto_1

    :goto_2
    const-string v4, "ServiceDescription"

    invoke-static {v0, v4}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, La2/l;

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, La2/l;-><init>(JJJFF)V

    return-object v0

    :cond_2
    move-wide v4, v13

    move-wide v6, v15

    move-wide/from16 v8, v17

    move/from16 v10, v19

    move/from16 v11, v20

    goto :goto_0
.end method

.method protected v0(Ljava/util/List;)Landroid/util/Pair;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/e;

    iget-object v3, v2, La2/e;->a:Ljava/lang/String;

    const-string v4, "http://dashif.org/thumbnail_tile"

    invoke-static {v4, v3}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http://dashif.org/guidelines/thumbnail_tile"

    iget-object v4, v2, La2/e;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v2, v2, La2/e;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "x"

    invoke-static {v2, v3}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public w(Landroid/net/Uri;Ljava/io/InputStream;)La2/c;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, La2/d;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string p2, "MPD"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1, p1}, La2/d;->a0(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)La2/c;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "inputStream does not contain a valid media presentation description"

    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0, p1}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method protected w0(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v4, "6"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0

    :pswitch_2
    const-string v4, "4"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :pswitch_3
    const-string v4, "3"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :pswitch_4
    const-string v4, "2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_0

    :pswitch_5
    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_1

    return v2

    :pswitch_6
    return v1

    :pswitch_7
    const/16 p1, 0x8

    return p1

    :pswitch_8
    return v0

    :pswitch_9
    const/16 p1, 0x800

    return p1

    :pswitch_a
    const/16 p1, 0x200

    return p1

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected x(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;La2/k;JJJJJZ)La2/a;
    .locals 60

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v0, "id"

    const-wide/16 v1, -0x1

    invoke-static {v14, v0, v1, v2}, La2/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v29

    invoke-virtual/range {p0 .. p1}, La2/d;->F(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const-string v1, "mimeType"

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v1, "codecs"

    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "scte214:supplementalCodecs"

    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v1, "scte214:supplementalProfiles"

    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v1, "width"

    const/4 v2, -0x1

    invoke-static {v14, v1, v2}, La2/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v34

    const-string v1, "height"

    invoke-static {v14, v1, v2}, La2/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v35

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v14, v1}, La2/d;->U(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v36

    const-string v1, "audioSamplingRate"

    invoke-static {v14, v1, v2}, La2/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v37

    const-string v11, "lang"

    invoke-interface {v14, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "label"

    invoke-interface {v14, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v39, 0x0

    move-object/from16 v40, p3

    move/from16 v41, v2

    move-object/from16 v17, v10

    move/from16 v42, v39

    const/16 v43, 0x0

    move-object v10, v1

    move-wide/from16 v1, p6

    move-wide/from16 p6, p8

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v18, v3

    const-string v3, "BaseURL"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v42, :cond_0

    invoke-virtual {v15, v14, v1, v2}, La2/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v1

    const/16 v42, 0x1

    :cond_0
    move-object/from16 v3, p2

    move-wide/from16 p8, v1

    move-object/from16 v19, v8

    move/from16 v8, p14

    invoke-virtual {v15, v14, v3, v8}, La2/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-wide/from16 v1, p8

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v53, v9

    move-object/from16 v56, v11

    move-object/from16 v57, v12

    move-object/from16 v59, v13

    move-object/from16 v4, v17

    move-object/from16 v15, v18

    move-object/from16 v3, v19

    :goto_1
    const/16 v58, 0x0

    :goto_2
    move-wide/from16 v16, p6

    goto/16 :goto_a

    :cond_1
    move-object/from16 v3, p2

    move-wide/from16 v20, v1

    move-object/from16 v19, v8

    move/from16 v8, p14

    const-string v1, "ContentProtection"

    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p1}, La2/d;->E(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_2

    move-object/from16 v43, v2

    check-cast v43, Ljava/lang/String;

    :cond_2
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_3

    check-cast v1, Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v53, v9

    move-object/from16 v56, v11

    move-object/from16 v57, v12

    move-object/from16 v59, v13

    move-object/from16 v4, v17

    move-object/from16 v15, v18

    move-object/from16 v3, v19

    move-wide/from16 v1, v20

    goto :goto_1

    :cond_4
    const-string v1, "ContentComponent"

    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    invoke-interface {v14, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, La2/d;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p1}, La2/d;->F(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v10

    invoke-static {v0, v10}, La2/d;->o(II)I

    move-result v0

    move-object v10, v1

    :goto_3
    move-object/from16 v58, v2

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v53, v9

    move-object/from16 v56, v11

    move-object/from16 v57, v12

    move-object/from16 v59, v13

    move-object/from16 v4, v17

    move-object/from16 v15, v18

    move-object/from16 v3, v19

    move-wide/from16 v1, v20

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    const-string v1, "Role"

    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-static {v14, v1}, La2/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)La2/e;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move/from16 v46, v0

    move-object/from16 v58, v2

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v53, v9

    move-object/from16 v55, v10

    move-object/from16 v56, v11

    move-object/from16 v57, v12

    move-object/from16 v59, v13

    move-object/from16 v4, v17

    move-object/from16 v15, v18

    move-object/from16 v3, v19

    move-wide/from16 v44, v20

    move-wide/from16 v0, p6

    goto/16 :goto_9

    :cond_6
    const-string v1, "AudioChannelConfiguration"

    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v15, v14, v12}, La2/d;->z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    move/from16 v41, v1

    goto :goto_3

    :cond_7
    const-string v1, "Accessibility"

    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-static {v14, v1}, La2/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)La2/e;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const-string v1, "EssentialProperty"

    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-static {v14, v1}, La2/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)La2/e;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    const-string v1, "SupplementalProperty"

    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-static {v14, v1}, La2/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)La2/e;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const-string v1, "Representation"

    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v0

    move-object/from16 v16, v13

    goto :goto_5

    :cond_b
    move v1, v0

    move-object/from16 v16, v3

    :goto_5
    move-object/from16 v0, p0

    move/from16 v46, v1

    move-wide/from16 v44, v20

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    move-object/from16 v47, v18

    move-object/from16 v3, v31

    move-object/from16 v48, v4

    move-object v4, v12

    move-object/from16 v49, v5

    move-object/from16 v5, v32

    move-object/from16 v50, v6

    move-object/from16 v6, v33

    move-object/from16 v51, v7

    move/from16 v7, v34

    move-object/from16 v52, v19

    move/from16 v8, v35

    move-object/from16 v53, v9

    move/from16 v9, v36

    move-object/from16 v55, v10

    move-object/from16 v54, v17

    move/from16 v10, v41

    move-object/from16 v56, v11

    move/from16 v11, v37

    move-object/from16 v57, v12

    move-object/from16 v12, v55

    move-object/from16 v59, v13

    move-object/from16 v58, v20

    move-object/from16 v13, v50

    move-object/from16 v14, v51

    move-object/from16 v15, v49

    move-object/from16 v16, v48

    move-object/from16 v17, v40

    move-wide/from16 v18, p10

    move-wide/from16 v20, p4

    move-wide/from16 v22, v44

    move-wide/from16 v24, p6

    move-wide/from16 v26, p12

    move/from16 v28, p14

    invoke-virtual/range {v0 .. v28}, La2/d;->g0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;La2/k;JJJJJZ)La2/d$a;

    move-result-object v0

    iget-object v1, v0, La2/d$a;->a:Landroidx/media3/common/r;

    iget-object v1, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    move-result v1

    move/from16 v14, v46

    invoke-static {v14, v1}, La2/d;->o(II)I

    move-result v1

    move-object/from16 v15, v47

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p1

    move-wide/from16 v16, p6

    move v0, v1

    move-wide/from16 v1, v44

    :goto_6
    move-object/from16 v3, v52

    move-object/from16 v4, v54

    :goto_7
    move-object/from16 v10, v55

    goto/16 :goto_a

    :cond_c
    move v14, v0

    move-object/from16 v58, v2

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v53, v9

    move-object/from16 v55, v10

    move-object/from16 v56, v11

    move-object/from16 v57, v12

    move-object/from16 v59, v13

    move-object/from16 v54, v17

    move-object/from16 v15, v18

    move-object/from16 v52, v19

    move-wide/from16 v44, v20

    const-string v0, "SegmentBase"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v0, v40

    check-cast v0, La2/k$e;

    move-object/from16 v11, p0

    invoke-virtual {v11, v13, v0}, La2/d;->l0(Lorg/xmlpull/v1/XmlPullParser;La2/k$e;)La2/k$e;

    move-result-object v0

    move-wide/from16 v16, p6

    move-object/from16 v40, v0

    move v0, v14

    move-wide/from16 v1, v44

    move-object/from16 v3, v52

    move-object/from16 v4, v54

    move-object/from16 v10, v55

    move-object v14, v13

    goto/16 :goto_a

    :cond_d
    move-object/from16 v11, p0

    const-string v0, "SegmentList"

    invoke-static {v13, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-wide/from16 v0, p6

    invoke-virtual {v11, v13, v0, v1}, La2/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v16

    move-object/from16 v2, v40

    check-cast v2, La2/k$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p10

    move-wide/from16 v5, p4

    move-wide/from16 v7, v44

    move-wide/from16 v9, v16

    move/from16 v46, v14

    move-object v14, v11

    move-wide/from16 v11, p12

    invoke-virtual/range {v0 .. v12}, La2/d;->m0(Lorg/xmlpull/v1/XmlPullParser;La2/k$b;JJJJJ)La2/k$b;

    move-result-object v0

    move-object/from16 v40, v0

    move-object v14, v13

    :goto_8
    move-wide/from16 v1, v44

    move/from16 v0, v46

    goto :goto_6

    :cond_e
    move-wide/from16 v0, p6

    move/from16 v46, v14

    move-object v14, v11

    const-string v2, "SegmentTemplate"

    invoke-static {v13, v2}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v14, v13, v0, v1}, La2/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v16

    move-object/from16 v2, v40

    check-cast v2, La2/k$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v48

    move-wide/from16 v4, p10

    move-wide/from16 v6, p4

    move-wide/from16 v8, v44

    move-wide/from16 v10, v16

    move-object v14, v13

    move-wide/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, La2/d;->n0(Lorg/xmlpull/v1/XmlPullParser;La2/k$c;Ljava/util/List;JJJJJ)La2/k$c;

    move-result-object v0

    move-object/from16 v40, v0

    goto :goto_8

    :cond_f
    move-object v14, v13

    const-string v2, "InbandEventStream"

    invoke-static {v14, v2}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v14, v2}, La2/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)La2/e;

    move-result-object v2

    move-object/from16 v3, v52

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v54

    goto :goto_9

    :cond_10
    move-object/from16 v3, v52

    const-string v2, "Label"

    invoke-static {v14, v2}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p1}, La2/d;->X(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/common/s;

    move-result-object v2

    move-object/from16 v4, v54

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    move-object/from16 v4, v54

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/b1;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p1}, La2/d;->y(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_12
    :goto_9
    move-wide/from16 v16, v0

    move-wide/from16 v1, v44

    move/from16 v0, v46

    goto/16 :goto_7

    :goto_a
    const-string v5, "AdaptationSet"

    invoke-static {v14, v5}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v2, v39

    :goto_b
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_13

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/d$a;

    move-object/from16 p1, p0

    move-object/from16 p2, v5

    move-object/from16 p3, v38

    move-object/from16 p4, v4

    move-object/from16 p5, v43

    move-object/from16 p6, v53

    move-object/from16 p7, v3

    invoke-virtual/range {p1 .. p7}, La2/d;->i(La2/d$a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)La2/j;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_13
    move-object/from16 p1, p0

    move-wide/from16 p2, v29

    move/from16 p4, v0

    move-object/from16 p5, v1

    move-object/from16 p6, v51

    move-object/from16 p7, v49

    move-object/from16 p8, v48

    invoke-virtual/range {p1 .. p8}, La2/d;->b(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)La2/a;

    move-result-object v0

    return-object v0

    :cond_14
    move-object v8, v3

    move-object v3, v15

    move-wide/from16 p6, v16

    move-object/from16 v5, v49

    move-object/from16 v6, v50

    move-object/from16 v7, v51

    move-object/from16 v9, v53

    move-object/from16 v11, v56

    move-object/from16 v12, v57

    move-object/from16 v13, v59

    move-object/from16 v15, p0

    move-object/from16 v17, v4

    move-object/from16 v4, v48

    goto/16 :goto_0
.end method

.method protected x0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;La2/n;)La2/n;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, La2/n;->b(Ljava/lang/String;)La2/n;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method protected y(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-static {p1}, La2/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method protected y0(Lorg/xmlpull/v1/XmlPullParser;)La2/o;
    .locals 3

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "value"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, La2/d;->n(Ljava/lang/String;Ljava/lang/String;)La2/o;

    move-result-object p1

    return-object p1
.end method

.method protected z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 3

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, La2/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "urn:dolby:dash:audio_channel_configuration:2011"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v2, "tag:dts.com,2018:uhd:audio_channel_configuration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v2, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v2, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v2, "tag:dolby.com,2015:dash:audio_channel_configuration:2015"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v2, "urn:dts:dash:audio_channel_configuration:2012"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p1}, La2/d;->N(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    goto :goto_2

    :pswitch_1
    invoke-static {p1}, La2/d;->b0(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    goto :goto_2

    :pswitch_2
    invoke-static {p1}, La2/d;->L(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    goto :goto_2

    :pswitch_3
    const-string p2, "value"

    invoke-static {p1, p2, v1}, La2/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    :pswitch_4
    invoke-static {p1, p2}, La2/d;->I(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :pswitch_5
    invoke-static {p1}, La2/d;->M(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    :cond_8
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string p2, "AudioChannelConfiguration"

    invoke-static {p1, p2}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ee09c90 -> :sswitch_7
        -0x7ad5b1c4 -> :sswitch_6
        -0x50a2db6e -> :sswitch_5
        -0x43d6a909 -> :sswitch_4
        -0x3aced4cf -> :sswitch_3
        -0x4b58cf3 -> :sswitch_2
        0x129b7989 -> :sswitch_1
        0x79657164 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
