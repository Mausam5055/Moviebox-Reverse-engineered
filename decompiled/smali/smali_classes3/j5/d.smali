.class public final Lj5/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj5/d$a;
    }
.end annotation


# static fields
.field public static final a:Lj5/d$a;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj5/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj5/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lj5/d;->a:Lj5/d$a;

    const-string v0, "\\{(\\d+)\\}\\{(\\d+)\\}(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lj5/d;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\d+):(\\d+):(\\d+)[:\\.](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lj5/d;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)I
    .locals 5

    sget-object v0, Lj5/d;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_3
    mul-int/lit8 v1, v1, 0xa

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v1, v3

    const p1, 0xea60

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    const p1, 0x36ee80

    mul-int/2addr v0, p1

    add-int/2addr v1, v0

    :cond_4
    return v1
.end method

.method private final c(Ljava/io/BufferedReader;Ljava/lang/String;Lk5/d;)V
    .locals 11

    const-string v0, ""

    new-instance v1, Lk5/b;

    invoke-direct {v1}, Lk5/b;-><init>()V

    :goto_0
    const/4 v2, 0x1

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    if-gt v5, v3, :cond_6

    if-nez v6, :cond_1

    move v7, v5

    goto :goto_2

    :cond_1
    move v7, v3

    :goto_2
    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    move-result v7

    if-gtz v7, :cond_2

    move v7, v2

    goto :goto_3

    :cond_2
    move v7, v4

    :goto_3
    if-nez v6, :cond_4

    if-nez v7, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v3, Lj5/d;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_5

    :catchall_0
    move-exception v2

    goto :goto_6

    :cond_7
    move v2, v4

    :goto_5
    int-to-long v5, v2

    const-wide/32 v7, 0xf4240

    mul-long/2addr v5, v7

    const/16 v2, 0x5da8

    int-to-long v9, v2

    div-long/2addr v5, v9

    if-eqz v3, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_8
    int-to-long v2, v4

    mul-long/2addr v2, v7

    div-long/2addr v2, v9

    new-instance v4, Lk5/c;

    invoke-direct {v4, v0, v0}, Lk5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v5, v5

    iput v5, v4, Lk5/c;->a:I

    iput-object v4, v1, Lk5/b;->b:Lk5/c;

    new-instance v4, Lk5/c;

    invoke-direct {v4, v0, v0}, Lk5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v2, v2

    iput v2, v4, Lk5/c;->a:I

    iput-object v4, v1, Lk5/b;->c:Lk5/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_7
    :try_start_1
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lk5/b;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_8
    iget-object p2, v1, Lk5/b;->b:Lk5/c;

    iget p2, p2, Lk5/c;->a:I

    :goto_9
    iget-object v2, p3, Lk5/d;->i:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_b
    iget-object v2, p3, Lk5/d;->i:Ljava/util/TreeMap;

    const-string v3, "tto.captions"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_a

    :catchall_2
    move-object p2, v0

    :goto_a
    new-instance v1, Lk5/b;

    invoke-direct {v1}, Lk5/b;-><init>()V

    goto/16 :goto_0

    :cond_c
    :goto_b
    iput-boolean v2, p3, Lk5/d;->m:Z

    return-void
.end method

.method private final d(Ljava/io/BufferedReader;Ljava/lang/String;Lk5/d;)V
    .locals 12

    const-string v0, ""

    new-instance v1, Lk5/b;

    invoke-direct {v1}, Lk5/b;-><init>()V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const-string v4, "[COLF]"

    const/4 v5, 0x2

    invoke-static {p2, v4, v3, v5, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v4, 0x1

    if-eqz p2, :cond_12

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_10

    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    const/16 v5, 0x20

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, v4

    move v7, v3

    move v8, v7

    :goto_2
    if-gt v7, v6, :cond_7

    if-nez v8, :cond_2

    move v9, v7

    goto :goto_3

    :cond_2
    move v9, v6

    :goto_3
    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    move-result v9

    if-gtz v9, :cond_3

    move v9, v4

    goto :goto_4

    :cond_3
    move v9, v3

    :goto_4
    if-nez v8, :cond_5

    if-nez v9, :cond_4

    move v8, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-nez v9, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    invoke-interface {p2, v7, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_8
    move-object p2, v2

    :goto_6
    if-eqz p2, :cond_9

    :try_start_0
    const-string v6, ","

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p2

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v7}, Lj5/d;->a(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v6}, Lj5/d;->a(Ljava/lang/String;)I

    move-result v6

    new-instance v8, Lk5/c;

    invoke-direct {v8, v0, v0}, Lk5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v7, v8, Lk5/c;->a:I

    iput-object v8, v1, Lk5/b;->b:Lk5/c;

    new-instance v7, Lk5/c;

    invoke-direct {v7, v0, v0}, Lk5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, v7, Lk5/c;->a:I

    iput-object v7, v1, Lk5/b;->c:Lk5/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_7
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v4

    move v8, v3

    move v9, v8

    :goto_8
    if-gt v8, v7, :cond_f

    if-nez v9, :cond_a

    move v10, v8

    goto :goto_9

    :cond_a
    move v10, v7

    :goto_9
    invoke-interface {v6, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    move-result v10

    if-gtz v10, :cond_b

    move v10, v4

    goto :goto_a

    :cond_b
    move v10, v3

    :goto_a
    if-nez v9, :cond_d

    if-nez v10, :cond_c

    move v9, v4

    goto :goto_8

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_d
    if-nez v10, :cond_e

    goto :goto_b

    :cond_e
    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    :catchall_1
    move-exception v4

    goto :goto_d

    :cond_f
    :goto_b
    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6, v8, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_c

    :cond_10
    move-object p2, v2

    :goto_c
    iput-object p2, v1, Lk5/b;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_e

    :goto_d
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    iget-object v4, v1, Lk5/b;->b:Lk5/c;

    iget v4, v4, Lk5/c;->a:I

    :goto_f
    iget-object v5, p3, Lk5/d;->i:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_11
    iget-object v5, p3, Lk5/d;->i:Ljava/util/TreeMap;

    const-string v6, "tto.captions"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk5/b;

    invoke-direct {v1}, Lk5/b;-><init>()V

    goto/16 :goto_1

    :cond_12
    :goto_10
    iput-boolean v4, p3, Lk5/d;->m:Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lk5/d;
    .locals 9

    const-string v0, "unicode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk5/d;

    invoke-direct {v0}, Lk5/d;-><init>()V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    new-instance p2, Ljava/io/BufferedReader;

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, v0, Lk5/d;->e:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v2

    move v6, v5

    :goto_1
    if-gt v5, v4, :cond_6

    if-nez v6, :cond_1

    move v7, v5

    goto :goto_2

    :cond_1
    move v7, v4

    :goto_2
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    move-result v7

    if-gtz v7, :cond_2

    move v7, v3

    goto :goto_3

    :cond_2
    move v7, v2

    :goto_3
    if-nez v6, :cond_4

    if-nez v7, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    :goto_4
    add-int/2addr v4, v3

    invoke-interface {p1, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_7
    move-object p1, v1

    :goto_5
    const/4 v4, 0x2

    if-eqz p1, :cond_8

    :try_start_0
    const-string v5, "{"

    invoke-static {p1, v5, v2, v4, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_8

    invoke-direct {p0, p2, p1, v0}, Lj5/d;->c(Ljava/io/BufferedReader;Ljava/lang/String;Lk5/d;)V

    goto :goto_8

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_8
    if-eqz p1, :cond_a

    const-string v5, "[INFORMATION]"

    invoke-static {p1, v5, v2, v4, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_a

    invoke-direct {p0, p2, p1, v0}, Lj5/d;->d(Ljava/io/BufferedReader;Ljava/lang/String;Lk5/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :goto_6
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_b

    :goto_7
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catchall_1
    move-exception p1

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    :cond_9
    throw p1

    :cond_a
    :goto_8
    if-eqz p3, :cond_b

    goto :goto_7

    :cond_b
    :goto_9
    return-object v0
.end method
