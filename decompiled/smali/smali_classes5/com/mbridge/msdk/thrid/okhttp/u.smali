.class public final enum Lcom/mbridge/msdk/thrid/okhttp/u;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/thrid/okhttp/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/mbridge/msdk/thrid/okhttp/u;

.field public static final enum c:Lcom/mbridge/msdk/thrid/okhttp/u;

.field public static final enum d:Lcom/mbridge/msdk/thrid/okhttp/u;

.field public static final enum e:Lcom/mbridge/msdk/thrid/okhttp/u;

.field public static final enum f:Lcom/mbridge/msdk/thrid/okhttp/u;

.field public static final enum g:Lcom/mbridge/msdk/thrid/okhttp/u;

.field private static final synthetic h:[Lcom/mbridge/msdk/thrid/okhttp/u;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/u;

    const/4 v1, 0x0

    const-string v2, "http/1.0"

    const-string v3, "HTTP_1_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/u;->b:Lcom/mbridge/msdk/thrid/okhttp/u;

    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/u;

    const/4 v3, 0x1

    const-string v4, "http/1.1"

    const-string v5, "HTTP_1_1"

    invoke-direct {v2, v5, v3, v4}, Lcom/mbridge/msdk/thrid/okhttp/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mbridge/msdk/thrid/okhttp/u;->c:Lcom/mbridge/msdk/thrid/okhttp/u;

    new-instance v4, Lcom/mbridge/msdk/thrid/okhttp/u;

    const/4 v5, 0x2

    const-string v6, "spdy/3.1"

    const-string v7, "SPDY_3"

    invoke-direct {v4, v7, v5, v6}, Lcom/mbridge/msdk/thrid/okhttp/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mbridge/msdk/thrid/okhttp/u;->d:Lcom/mbridge/msdk/thrid/okhttp/u;

    new-instance v6, Lcom/mbridge/msdk/thrid/okhttp/u;

    const/4 v7, 0x3

    const-string v8, "h2"

    const-string v9, "HTTP_2"

    invoke-direct {v6, v9, v7, v8}, Lcom/mbridge/msdk/thrid/okhttp/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/mbridge/msdk/thrid/okhttp/u;->e:Lcom/mbridge/msdk/thrid/okhttp/u;

    new-instance v8, Lcom/mbridge/msdk/thrid/okhttp/u;

    const/4 v9, 0x4

    const-string v10, "h2_prior_knowledge"

    const-string v11, "H2_PRIOR_KNOWLEDGE"

    invoke-direct {v8, v11, v9, v10}, Lcom/mbridge/msdk/thrid/okhttp/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/mbridge/msdk/thrid/okhttp/u;->f:Lcom/mbridge/msdk/thrid/okhttp/u;

    new-instance v10, Lcom/mbridge/msdk/thrid/okhttp/u;

    const/4 v11, 0x5

    const-string v12, "quic"

    const-string v13, "QUIC"

    invoke-direct {v10, v13, v11, v12}, Lcom/mbridge/msdk/thrid/okhttp/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/mbridge/msdk/thrid/okhttp/u;->g:Lcom/mbridge/msdk/thrid/okhttp/u;

    const/4 v12, 0x6

    new-array v12, v12, [Lcom/mbridge/msdk/thrid/okhttp/u;

    aput-object v0, v12, v1

    aput-object v2, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lcom/mbridge/msdk/thrid/okhttp/u;->h:[Lcom/mbridge/msdk/thrid/okhttp/u;

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

    iput-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/u;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/u;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/u;->b:Lcom/mbridge/msdk/thrid/okhttp/u;

    iget-object v1, v0, Lcom/mbridge/msdk/thrid/okhttp/u;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/u;->c:Lcom/mbridge/msdk/thrid/okhttp/u;

    iget-object v1, v0, Lcom/mbridge/msdk/thrid/okhttp/u;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/u;->f:Lcom/mbridge/msdk/thrid/okhttp/u;

    iget-object v1, v0, Lcom/mbridge/msdk/thrid/okhttp/u;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/u;->e:Lcom/mbridge/msdk/thrid/okhttp/u;

    iget-object v1, v0, Lcom/mbridge/msdk/thrid/okhttp/u;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/u;->d:Lcom/mbridge/msdk/thrid/okhttp/u;

    iget-object v1, v0, Lcom/mbridge/msdk/thrid/okhttp/u;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/u;->g:Lcom/mbridge/msdk/thrid/okhttp/u;

    iget-object v1, v0, Lcom/mbridge/msdk/thrid/okhttp/u;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/u;
    .locals 1

    const-class v0, Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mbridge/msdk/thrid/okhttp/u;

    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/thrid/okhttp/u;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/u;->h:[Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-virtual {v0}, [Lcom/mbridge/msdk/thrid/okhttp/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mbridge/msdk/thrid/okhttp/u;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/u;->a:Ljava/lang/String;

    return-object v0
.end method
