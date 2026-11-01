.class public final Lcom/cloud/tmc/integration/utils/RegexUtils;
.super Ljava/lang/Object;


# static fields
.field private static final CITY_MAP:Landroidx/collection/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/x0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/collection/x0;

    invoke-direct {v0}, Landroidx/collection/x0;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/RegexUtils;->CITY_MAP:Landroidx/collection/x0;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractEmailProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractEmailUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMatches(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getReplaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReplaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSplits(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDate(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isEmail(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isFromAnyOfEmailProviders(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->extractEmailProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFromEmailProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->extractEmailProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isIDCard15(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isIDCard18(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9Xx])$"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isIDCard18Exact(Ljava/lang/CharSequence;)Z
    .locals 10

    const/16 v0, 0xb

    const/16 v1, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isIDCard18(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    new-array v4, v1, [I

    fill-array-data v4, :array_0

    new-array v6, v0, [C

    fill-array-data v6, :array_1

    sget-object v7, Lcom/cloud/tmc/integration/utils/RegexUtils;->CITY_MAP:Landroidx/collection/x0;

    invoke-virtual {v7}, Landroidx/collection/x0;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "11"

    const-string v9, "\u5317\u4eac"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "12"

    const-string v9, "\u5929\u6d25"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "13"

    const-string v9, "\u6cb3\u5317"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "14"

    const-string v9, "\u5c71\u897f"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "15"

    const-string v9, "\u5185\u8499\u53e4"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "21"

    const-string v9, "\u8fbd\u5b81"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "22"

    const-string v9, "\u5409\u6797"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "23"

    const-string v9, "\u9ed1\u9f99\u6c5f"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "31"

    const-string v9, "\u4e0a\u6d77"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "32"

    const-string v9, "\u6c5f\u82cf"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "33"

    const-string v9, "\u6d59\u6c5f"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "34"

    const-string v9, "\u5b89\u5fbd"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "35"

    const-string v9, "\u798f\u5efa"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "36"

    const-string v9, "\u6c5f\u897f"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "37"

    const-string v9, "\u5c71\u4e1c"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "41"

    const-string v9, "\u6cb3\u5357"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "42"

    const-string v9, "\u6e56\u5317"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "43"

    const-string v9, "\u6e56\u5357"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "44"

    const-string v9, "\u5e7f\u4e1c"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "45"

    const-string v9, "\u5e7f\u897f"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "46"

    const-string v9, "\u6d77\u5357"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "50"

    const-string v9, "\u91cd\u5e86"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "51"

    const-string v9, "\u56db\u5ddd"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "52"

    const-string v9, "\u8d35\u5dde"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "53"

    const-string v9, "\u4e91\u5357"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "54"

    const-string v9, "\u897f\u85cf"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "61"

    const-string v9, "\u9655\u897f"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "62"

    const-string v9, "\u7518\u8083"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "63"

    const-string v9, "\u9752\u6d77"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "64"

    const-string v9, "\u5b81\u590f"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "65"

    const-string v9, "\u65b0\u7586"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "71"

    const-string v9, "\u53f0\u6e7e\u8001"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "81"

    const-string v9, "\u9999\u6e2f"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "82"

    const-string v9, "\u6fb3\u95e8"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "83"

    const-string v9, "\u53f0\u6e7e\u65b0"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "91"

    const-string v9, "\u56fd\u5916"

    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p0, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/collection/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move v3, v5

    move v7, v3

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    aget v9, v4, v3

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    rem-int/2addr v7, v0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    aget-char v0, v6, v7

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    return v2

    :cond_3
    return v5

    :array_0
    .array-data 4
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
        0x1
        0x6
        0x3
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
    .end array-data

    :array_1
    .array-data 2
        0x31s
        0x30s
        0x58s
        0x39s
        0x38s
        0x37s
        0x36s
        0x35s
        0x34s
        0x33s
        0x32s
    .end array-data
.end method

.method public static isIP(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d\\d?)"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMobileExact(Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMobileExact(Ljava/lang/CharSequence;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static isMobileExact(Ljava/lang/CharSequence;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "^((13[0-9])|(14[579])|(15[0-35-9])|(16[2567])|(17[0-35-8])|(18[0-9])|(19[0-35-9]))\\d{8}$"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-char v5, v2, v4

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_3

    return v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_6
    :goto_1
    return v0
.end method

.method public static isMobileSimple(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[1]\\d{10}$"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isTel(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^0\\d{2,3}[- ]?\\d{7,8}$"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isURL(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "[a-zA-z]+://[^\\s]*"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isUsername(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[\\w\\u4e00-\\u9fa5]{6,20}(?<!_)$"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isZh(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[\\u4e00-\\u9fa5]+$"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
