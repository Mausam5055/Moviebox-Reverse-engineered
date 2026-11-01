.class final enum Lcom/transsion/transfer/androidasync/http/Protocol$1;
.super Lcom/transsion/transfer/androidasync/http/Protocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/transfer/androidasync/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/transfer/androidasync/http/x;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/transfer/androidasync/http/x;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/http/Protocol$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public needsSpdyConnection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
