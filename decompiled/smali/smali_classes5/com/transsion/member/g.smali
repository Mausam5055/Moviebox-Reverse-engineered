.class public final Lcom/transsion/member/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/member/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/member/g;

    invoke-direct {v0}, Lcom/transsion/member/g;-><init>()V

    sput-object v0, Lcom/transsion/member/g;->a:Lcom/transsion/member/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 11

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/MemberFeatureData;

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberFeatureData;->getFeatureIcon()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    const-string v4, ""

    if-nez v2, :cond_3

    move-object v6, v4

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberFeatureData;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_5

    move-object v7, v4

    goto :goto_4

    :cond_5
    move-object v7, v2

    :goto_4
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    new-instance v3, Lcom/transsion/member/h;

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberFeatureData;->getFeatureLink()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move-object v8, v4

    goto :goto_5

    :cond_8
    move-object v8, v2

    :goto_5
    sget-object v2, Lcom/transsion/member/i;->a:Lcom/transsion/member/i$a;

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberFeatureData;->getBasic()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/member/i$a;->a(Ljava/lang/Integer;)Lcom/transsion/member/i;

    move-result-object v9

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberFeatureData;->getPro()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/member/i$a;->a(Ljava/lang/Integer;)Lcom/transsion/member/i;

    move-result-object v10

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/transsion/member/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/member/i;Lcom/transsion/member/i;)V

    :goto_6
    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    return-object v0
.end method
