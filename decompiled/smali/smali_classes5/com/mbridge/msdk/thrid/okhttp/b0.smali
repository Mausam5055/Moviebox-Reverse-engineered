.class public final enum Lcom/mbridge/msdk/thrid/okhttp/b0;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/thrid/okhttp/b0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/mbridge/msdk/thrid/okhttp/b0;

.field public static final enum c:Lcom/mbridge/msdk/thrid/okhttp/b0;

.field public static final enum d:Lcom/mbridge/msdk/thrid/okhttp/b0;

.field public static final enum e:Lcom/mbridge/msdk/thrid/okhttp/b0;

.field public static final enum f:Lcom/mbridge/msdk/thrid/okhttp/b0;

.field private static final synthetic g:[Lcom/mbridge/msdk/thrid/okhttp/b0;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/b0;

    const/4 v1, 0x0

    const-string v2, "TLSv1.3"

    const-string v3, "TLS_1_3"

    invoke-direct {v0, v3, v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/b0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/b0;->b:Lcom/mbridge/msdk/thrid/okhttp/b0;

    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/b0;

    const/4 v3, 0x1

    const-string v4, "TLSv1.2"

    const-string v5, "TLS_1_2"

    invoke-direct {v2, v5, v3, v4}, Lcom/mbridge/msdk/thrid/okhttp/b0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mbridge/msdk/thrid/okhttp/b0;->c:Lcom/mbridge/msdk/thrid/okhttp/b0;

    new-instance v4, Lcom/mbridge/msdk/thrid/okhttp/b0;

    const/4 v5, 0x2

    const-string v6, "TLSv1.1"

    const-string v7, "TLS_1_1"

    invoke-direct {v4, v7, v5, v6}, Lcom/mbridge/msdk/thrid/okhttp/b0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mbridge/msdk/thrid/okhttp/b0;->d:Lcom/mbridge/msdk/thrid/okhttp/b0;

    new-instance v6, Lcom/mbridge/msdk/thrid/okhttp/b0;

    const/4 v7, 0x3

    const-string v8, "TLSv1"

    const-string v9, "TLS_1_0"

    invoke-direct {v6, v9, v7, v8}, Lcom/mbridge/msdk/thrid/okhttp/b0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/mbridge/msdk/thrid/okhttp/b0;->e:Lcom/mbridge/msdk/thrid/okhttp/b0;

    new-instance v8, Lcom/mbridge/msdk/thrid/okhttp/b0;

    const/4 v9, 0x4

    const-string v10, "SSLv3"

    const-string v11, "SSL_3_0"

    invoke-direct {v8, v11, v9, v10}, Lcom/mbridge/msdk/thrid/okhttp/b0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/mbridge/msdk/thrid/okhttp/b0;->f:Lcom/mbridge/msdk/thrid/okhttp/b0;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/mbridge/msdk/thrid/okhttp/b0;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/mbridge/msdk/thrid/okhttp/b0;->g:[Lcom/mbridge/msdk/thrid/okhttp/b0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/b0;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/b0;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "TLSv1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "SSLv3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "TLSv1.3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "TLSv1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "TLSv1.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/mbridge/msdk/thrid/okhttp/b0;->e:Lcom/mbridge/msdk/thrid/okhttp/b0;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/mbridge/msdk/thrid/okhttp/b0;->f:Lcom/mbridge/msdk/thrid/okhttp/b0;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/mbridge/msdk/thrid/okhttp/b0;->b:Lcom/mbridge/msdk/thrid/okhttp/b0;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/mbridge/msdk/thrid/okhttp/b0;->c:Lcom/mbridge/msdk/thrid/okhttp/b0;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/mbridge/msdk/thrid/okhttp/b0;->d:Lcom/mbridge/msdk/thrid/okhttp/b0;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_4
        -0x1dfc3f26 -> :sswitch_3
        -0x1dfc3f25 -> :sswitch_2
        0x4b88569 -> :sswitch_1
        0x4c38896 -> :sswitch_0
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

.method static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/b0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/mbridge/msdk/thrid/okhttp/b0;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/b0;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/b0;
    .locals 1

    const-class v0, Lcom/mbridge/msdk/thrid/okhttp/b0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mbridge/msdk/thrid/okhttp/b0;

    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/thrid/okhttp/b0;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/b0;->g:[Lcom/mbridge/msdk/thrid/okhttp/b0;

    invoke-virtual {v0}, [Lcom/mbridge/msdk/thrid/okhttp/b0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mbridge/msdk/thrid/okhttp/b0;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/b0;->a:Ljava/lang/String;

    return-object v0
.end method
