.class public final enum Lcom/transsion/http/d/h;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/http/d/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/transsion/http/d/h;

.field public static final enum b:Lcom/transsion/http/d/h;

.field public static final enum c:Lcom/transsion/http/d/h;

.field public static final enum d:Lcom/transsion/http/d/h;

.field public static final enum e:Lcom/transsion/http/d/h;

.field public static final enum f:Lcom/transsion/http/d/h;

.field public static final enum g:Lcom/transsion/http/d/h;

.field public static final enum h:Lcom/transsion/http/d/h;

.field public static final enum i:Lcom/transsion/http/d/h;

.field public static final enum j:Lcom/transsion/http/d/h;

.field public static final enum k:Lcom/transsion/http/d/h;


# instance fields
.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/http/d/h;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/d/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/h;->a:Lcom/transsion/http/d/h;

    new-instance v0, Lcom/transsion/http/d/h;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/d/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/h;->b:Lcom/transsion/http/d/h;

    new-instance v0, Lcom/transsion/http/d/h;

    const-string v1, "PUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/d/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/h;->c:Lcom/transsion/http/d/h;

    new-instance v0, Lcom/transsion/http/d/h;

    const-string v1, "PATCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/d/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/h;->d:Lcom/transsion/http/d/h;

    new-instance v0, Lcom/transsion/http/d/h;

    const-string v1, "HEAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/d/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/h;->e:Lcom/transsion/http/d/h;

    new-instance v0, Lcom/transsion/http/d/h;

    const-string v1, "MOVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/d/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/h;->f:Lcom/transsion/http/d/h;

    new-instance v0, Lcom/transsion/http/d/h;

    const-string v1, "COPY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/d/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/h;->g:Lcom/transsion/http/d/h;

    new-instance v0, Lcom/transsion/http/d/h;

    const-string v1, "DELETE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/d/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/h;->h:Lcom/transsion/http/d/h;

    new-instance v0, Lcom/transsion/http/d/h;

    const-string v1, "OPTIONS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/d/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/h;->i:Lcom/transsion/http/d/h;

    new-instance v0, Lcom/transsion/http/d/h;

    const-string v1, "TRACE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/d/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/h;->j:Lcom/transsion/http/d/h;

    new-instance v0, Lcom/transsion/http/d/h;

    const-string v1, "CONNECT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/http/d/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/h;->k:Lcom/transsion/http/d/h;

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

    iput-object p3, p0, Lcom/transsion/http/d/h;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/http/d/h;->l:Ljava/lang/String;

    return-object v0
.end method
