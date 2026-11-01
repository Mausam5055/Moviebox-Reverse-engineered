.class public final enum Lcom/transsion/athena/data/anateh/anehat$athena;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/data/anateh/anehat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "athena"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/athena/data/anateh/anehat$athena;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/transsion/athena/data/anateh/anehat$athena;

.field public static final enum b:Lcom/transsion/athena/data/anateh/anehat$athena;

.field public static final enum c:Lcom/transsion/athena/data/anateh/anehat$athena;

.field public static final enum d:Lcom/transsion/athena/data/anateh/anehat$athena;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/athena/data/anateh/anehat$athena;

    const/4 v1, 0x0

    const-string v2, "events"

    const-string v3, "EVENTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/athena/data/anateh/anehat$athena;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    new-instance v0, Lcom/transsion/athena/data/anateh/anehat$athena;

    const/4 v1, 0x1

    const-string v2, "counter"

    const-string v3, "COUNTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/athena/data/anateh/anehat$athena;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/athena/data/anateh/anehat$athena;->b:Lcom/transsion/athena/data/anateh/anehat$athena;

    new-instance v0, Lcom/transsion/athena/data/anateh/anehat$athena;

    const/4 v1, 0x2

    const-string v2, "tidconfig"

    const-string v3, "TID_CONFIG"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/athena/data/anateh/anehat$athena;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/athena/data/anateh/anehat$athena;->c:Lcom/transsion/athena/data/anateh/anehat$athena;

    new-instance v0, Lcom/transsion/athena/data/anateh/anehat$athena;

    const/4 v1, 0x3

    const-string v2, "appidconfig"

    const-string v3, "APPID_CONFIG"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/athena/data/anateh/anehat$athena;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/athena/data/anateh/anehat$athena;->d:Lcom/transsion/athena/data/anateh/anehat$athena;

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

    iput-object p3, p0, Lcom/transsion/athena/data/anateh/anehat$athena;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/data/anateh/anehat$athena;->e:Ljava/lang/String;

    return-object v0
.end method
