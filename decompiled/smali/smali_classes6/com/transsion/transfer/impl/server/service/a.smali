.class public final Lcom/transsion/transfer/impl/server/service/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/server/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/server/service/a$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/transfer/impl/server/service/a$a;

.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lcom/transsion/transfer/impl/g;

.field private b:Lcom/transsion/transfer/impl/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/transfer/impl/server/service/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/server/service/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/transfer/impl/server/service/a;->c:Lcom/transsion/transfer/impl/server/service/a$a;

    const-class v0, Lcom/transsion/transfer/impl/server/service/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/transfer/impl/server/service/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V
    .locals 1

    const-string v0, "fileHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/server/service/a;->a:Lcom/transsion/transfer/impl/g;

    iput-object p2, p0, Lcom/transsion/transfer/impl/server/service/a;->b:Lcom/transsion/transfer/impl/i;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/transfer/impl/server/service/a;)Lcom/transsion/transfer/impl/i;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/server/service/a;->b:Lcom/transsion/transfer/impl/i;

    return-object p0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/impl/server/service/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private final d(Lcom/transsion/transfer/androidasync/http/server/b;)J
    .locals 7

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Range"

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_8

    new-instance v0, Lkotlin/text/Regex;

    const-string v3, "="

    invoke-direct {v0, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Collection;

    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_8

    const-string v0, "bytes"

    aget-object v6, p1, v3

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    aget-object p1, p1, v4

    new-instance v0, Lkotlin/text/Regex;

    const-string v6, "-"

    invoke-direct {v0, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :goto_3
    check-cast p1, Ljava/util/Collection;

    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :try_start_0
    array-length v0, p1

    if-gt v0, v5, :cond_7

    aget-object v0, p1, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_4

    :cond_7
    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/MalformedRangeException;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/http/server/MalformedRangeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_4
    return-wide v1
.end method


# virtual methods
.method public b(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 17

    move-object/from16 v0, p2

    new-instance v8, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    sget-object v1, Liv/c;->d:Liv/c$a;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Liv/c$a;->c(Lcom/transsion/transfer/androidasync/http/Headers;)Lkotlin/Triple;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    const/4 v3, 0x1

    const-string v5, ""

    const/4 v6, -0x1

    if-ge v4, v3, :cond_2

    if-eqz v0, :cond_1

    const-string v2, "protocol version compatible error"

    invoke-virtual {v1, v6, v2, v5}, Liv/c$a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/d;->send(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/transsion/transfer/androidasync/http/server/b;->h()Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljv/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_4
    move-object v9, v2

    invoke-direct/range {p0 .. p1}, Lcom/transsion/transfer/impl/server/service/a;->d(Lcom/transsion/transfer/androidasync/http/server/b;)J

    move-result-wide v2

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_2

    :cond_5
    const v7, 0x7fffffff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_2
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v2, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    new-instance v11, Lcom/transsion/transfer/impl/server/service/a$b;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v10

    move-object v5, v7

    move-wide v6, v15

    invoke-direct/range {v1 .. v8}, Lcom/transsion/transfer/impl/server/service/a$b;-><init>(Lcom/transsion/transfer/impl/server/service/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/jvm/internal/Ref$LongRef;)V

    invoke-interface {v0, v9, v11}, Lcom/transsion/transfer/androidasync/http/server/d;->n(Ljava/io/File;Lbv/e;)V

    goto :goto_3

    :cond_6
    move-object/from16 v2, p0

    goto :goto_3

    :cond_7
    move-object/from16 v2, p0

    if-eqz v4, :cond_8

    iget-object v9, v2, Lcom/transsion/transfer/impl/server/service/a;->b:Lcom/transsion/transfer/impl/i;

    sget-object v12, Lcom/transsion/transfer/impl/TaskState;->NO_FILE:Lcom/transsion/transfer/impl/TaskState;

    const-wide/16 v13, 0x0

    move-object v11, v4

    invoke-interface/range {v9 .. v16}, Lcom/transsion/transfer/impl/i;->K(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJ)V

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found,"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3, v5}, Liv/c$a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createResponseJsonObj: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_9

    const/16 v3, 0x194

    invoke-interface {v0, v3}, Lcom/transsion/transfer/androidasync/http/server/d;->c(I)Lcom/transsion/transfer/androidasync/http/server/d;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/d;->send(Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method
