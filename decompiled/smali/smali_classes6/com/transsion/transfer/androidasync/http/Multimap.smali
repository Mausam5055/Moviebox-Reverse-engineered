.class public Lcom/transsion/transfer/androidasync/http/Multimap;
.super Ljava/util/LinkedHashMap;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/Multimap$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Iterable<",
        "Lcom/transsion/transfer/androidasync/http/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final QUERY_DECODER:Lcom/transsion/transfer/androidasync/http/Multimap$c;

.field public static final URL_DECODER:Lcom/transsion/transfer/androidasync/http/Multimap$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/http/Multimap$a;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Multimap$a;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/Multimap;->QUERY_DECODER:Lcom/transsion/transfer/androidasync/http/Multimap$c;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/Multimap$b;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Multimap$b;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/Multimap;->URL_DECODER:Lcom/transsion/transfer/androidasync/http/Multimap$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/androidasync/http/Multimap;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/transfer/androidasync/http/w;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/androidasync/http/w;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/http/w;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/http/w;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/transfer/androidasync/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/Multimap$c;)Lcom/transsion/transfer/androidasync/http/Multimap;
    .locals 8

    new-instance v0, Lcom/transsion/transfer/androidasync/http/Multimap;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Multimap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_5

    aget-object v3, p0, v2

    const/4 v4, 0x2

    invoke-virtual {v3, p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    array-length v5, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    aget-object v3, v3, v6

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    if-eqz p4, :cond_4

    invoke-interface {p4, v4}, Lcom/transsion/transfer/androidasync/http/Multimap$c;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v3}, Lcom/transsion/transfer/androidasync/http/Multimap$c;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v0, v4, v3}, Lcom/transsion/transfer/androidasync/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/Multimap$c;)Lcom/transsion/transfer/androidasync/http/Multimap;
    .locals 1

    const-string v0, "="

    invoke-static {p0, p1, v0, p2, p3}, Lcom/transsion/transfer/androidasync/http/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/Multimap$c;)Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static parseCommaDelimited(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Multimap;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ","

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/transfer/androidasync/http/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/Multimap$c;)Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static parseQuery(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Multimap;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/transsion/transfer/androidasync/http/Multimap;->QUERY_DECODER:Lcom/transsion/transfer/androidasync/http/Multimap$c;

    const-string v2, "&"

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/transfer/androidasync/http/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/Multimap$c;)Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static parseSemicolonDelimited(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Multimap;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ";"

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/transfer/androidasync/http/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/Multimap$c;)Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static parseUrlEncoded(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Multimap;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/transsion/transfer/androidasync/http/Multimap;->URL_DECODER:Lcom/transsion/transfer/androidasync/http/Multimap$c;

    const-string v2, "&"

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/transfer/androidasync/http/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/Multimap$c;)Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/Multimap;->ensure(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ensure(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/Multimap;->newList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getAllString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/transsion/transfer/androidasync/http/w;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/transsion/transfer/androidasync/http/u;

    invoke-direct {v5, v2, v4}, Lcom/transsion/transfer/androidasync/http/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected newList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/Multimap;->newList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toSingleMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
