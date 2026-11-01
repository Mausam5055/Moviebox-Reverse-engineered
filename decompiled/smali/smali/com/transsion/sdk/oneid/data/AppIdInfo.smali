.class public Lcom/transsion/sdk/oneid/data/AppIdInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public lastRequestTime:J

.field public msg:Ljava/lang/String;

.field public odid:Ljava/lang/String;

.field public retryRequestDelay:J

.field public retryTimes:I

.field public waitTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    return-void
.end method
