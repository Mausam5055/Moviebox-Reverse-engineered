.class public final enum Lcom/transsion/http/d/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/http/d/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/transsion/http/d/a;

.field public static final enum b:Lcom/transsion/http/d/a;

.field public static final enum c:Lcom/transsion/http/d/a;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/http/d/a;

    const/4 v1, 0x0

    const-string v2, "application/x-www-form-urlencoded"

    const-string v3, "FORM"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/http/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/a;->a:Lcom/transsion/http/d/a;

    new-instance v0, Lcom/transsion/http/d/a;

    const/4 v1, 0x1

    const-string v2, "application/json"

    const-string v3, "JSON"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/http/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/a;->b:Lcom/transsion/http/d/a;

    new-instance v0, Lcom/transsion/http/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data;boundary=--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FILE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/http/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/http/d/a;->c:Lcom/transsion/http/d/a;

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

    iput-object p3, p0, Lcom/transsion/http/d/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/http/d/a;->d:Ljava/lang/String;

    return-object v0
.end method
