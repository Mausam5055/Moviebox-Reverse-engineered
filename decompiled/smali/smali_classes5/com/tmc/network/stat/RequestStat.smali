.class public final Lcom/tmc/network/stat/RequestStat;
.super Leg/c;


# annotations
.annotation runtime Leg/b;
    id = "701"
    name = "request"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\t\n\u0002\u00089\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u00083\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\u0006\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u000bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u000bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0008\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u000bR\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR\"\u0010\u001f\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0017\u001a\u0004\u0008 \u0010\u0019\"\u0004\u0008!\u0010\u001bR\"\u0010\"\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0017\u001a\u0004\u0008#\u0010\u0019\"\u0004\u0008$\u0010\u001bR\"\u0010%\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u0017\u001a\u0004\u0008&\u0010\u0019\"\u0004\u0008\'\u0010\u001bR\"\u0010(\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u0017\u001a\u0004\u0008)\u0010\u0019\"\u0004\u0008*\u0010\u001bR$\u0010+\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u0008\u001a\u0004\u0008,\u0010\u0006\"\u0004\u0008-\u0010\u000bR\"\u0010.\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u0017\u001a\u0004\u0008/\u0010\u0019\"\u0004\u00080\u0010\u001bR\"\u00101\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u0017\u001a\u0004\u00082\u0010\u0019\"\u0004\u00083\u0010\u001bR\"\u00104\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010\u0017\u001a\u0004\u00085\u0010\u0019\"\u0004\u00086\u0010\u001bR\"\u00107\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010\u0017\u001a\u0004\u00088\u0010\u0019\"\u0004\u00089\u0010\u001bR\"\u0010:\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u0017\u001a\u0004\u0008;\u0010\u0019\"\u0004\u0008<\u0010\u001bR\"\u0010=\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010\u0017\u001a\u0004\u0008>\u0010\u0019\"\u0004\u0008?\u0010\u001bR\"\u0010@\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010\u0017\u001a\u0004\u0008A\u0010\u0019\"\u0004\u0008B\u0010\u001bR\"\u0010C\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010\u0017\u001a\u0004\u0008D\u0010\u0019\"\u0004\u0008E\u0010\u001bR\"\u0010F\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010\u0017\u001a\u0004\u0008G\u0010\u0019\"\u0004\u0008H\u0010\u001bR\"\u0010I\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010\u0017\u001a\u0004\u0008J\u0010\u0019\"\u0004\u0008K\u0010\u001bR\"\u0010L\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010\u0017\u001a\u0004\u0008M\u0010\u0019\"\u0004\u0008N\u0010\u001bR\"\u0010P\u001a\u00020O8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\"\u0010W\u001a\u00020V8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010X\u001a\u0004\u0008W\u0010Y\"\u0004\u0008Z\u0010[R\"\u0010\\\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010\u0017\u001a\u0004\u0008]\u0010\u0019\"\u0004\u0008^\u0010\u001bR\"\u0010_\u001a\u00020O8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010Q\u001a\u0004\u0008`\u0010S\"\u0004\u0008a\u0010UR\"\u0010b\u001a\u00020O8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010Q\u001a\u0004\u0008c\u0010S\"\u0004\u0008d\u0010UR$\u0010e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010\u0008\u001a\u0004\u0008f\u0010\u0006\"\u0004\u0008g\u0010\u000bR\"\u0010h\u001a\u00020V8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010X\u001a\u0004\u0008h\u0010Y\"\u0004\u0008i\u0010[R$\u0010j\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008j\u0010\u0008\u001a\u0004\u0008k\u0010\u0006\"\u0004\u0008l\u0010\u000bR$\u0010m\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008m\u0010\u0008\u001a\u0004\u0008n\u0010\u0006\"\u0004\u0008o\u0010\u000bR\"\u0010p\u001a\u00020V8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010X\u001a\u0004\u0008p\u0010Y\"\u0004\u0008q\u0010[R\"\u0010r\u001a\u00020V8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010X\u001a\u0004\u0008r\u0010Y\"\u0004\u0008s\u0010[R$\u0010t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010\u0008\u001a\u0004\u0008u\u0010\u0006\"\u0004\u0008v\u0010\u000bR\"\u0010w\u001a\u00020O8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008w\u0010Q\u001a\u0004\u0008x\u0010S\"\u0004\u0008y\u0010UR$\u0010z\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010\u0008\u001a\u0004\u0008{\u0010\u0006\"\u0004\u0008|\u0010\u000bR$\u0010}\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008}\u0010\u0008\u001a\u0004\u0008~\u0010\u0006\"\u0004\u0008\u007f\u0010\u000bR&\u0010\u0080\u0001\u001a\u00020O8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0080\u0001\u0010Q\u001a\u0005\u0008\u0081\u0001\u0010S\"\u0005\u0008\u0082\u0001\u0010UR(\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0083\u0001\u0010\u0008\u001a\u0005\u0008\u0084\u0001\u0010\u0006\"\u0005\u0008\u0085\u0001\u0010\u000bR(\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0086\u0001\u0010\u0008\u001a\u0005\u0008\u0087\u0001\u0010\u0006\"\u0005\u0008\u0088\u0001\u0010\u000b\u00a8\u0006\u0089\u0001"
    }
    d2 = {
        "Lcom/tmc/network/stat/RequestStat;",
        "Leg/c;",
        "<init>",
        "()V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "ip",
        "Ljava/lang/String;",
        "getIp",
        "setIp",
        "(Ljava/lang/String;)V",
        "host",
        "getHost",
        "setHost",
        "url",
        "getUrl",
        "setUrl",
        "protocol",
        "getProtocol",
        "setProtocol",
        "",
        "callStart",
        "J",
        "getCallStart",
        "()J",
        "setCallStart",
        "(J)V",
        "onewayTime",
        "getOnewayTime",
        "setOnewayTime",
        "connWaitTime",
        "getConnWaitTime",
        "setConnWaitTime",
        "dnsTime",
        "getDnsTime",
        "setDnsTime",
        "tcpTime",
        "getTcpTime",
        "setTcpTime",
        "tlsTime",
        "getTlsTime",
        "setTlsTime",
        "tlsVersion",
        "getTlsVersion",
        "setTlsVersion",
        "reqHeaderStart",
        "getReqHeaderStart",
        "setReqHeaderStart",
        "reqHeaderTime",
        "getReqHeaderTime",
        "setReqHeaderTime",
        "reqBodyStart",
        "getReqBodyStart",
        "setReqBodyStart",
        "reqBodyTime",
        "getReqBodyTime",
        "setReqBodyTime",
        "resHeaderStart",
        "getResHeaderStart",
        "setResHeaderStart",
        "resHeaderTime",
        "getResHeaderTime",
        "setResHeaderTime",
        "resBodyStart",
        "getResBodyStart",
        "setResBodyStart",
        "sendDataEnd",
        "getSendDataEnd",
        "setSendDataEnd",
        "sendDataTime",
        "getSendDataTime",
        "setSendDataTime",
        "recvDataTime",
        "getRecvDataTime",
        "setRecvDataTime",
        "firstDataTime",
        "getFirstDataTime",
        "setFirstDataTime",
        "",
        "ret",
        "I",
        "getRet",
        "()I",
        "setRet",
        "(I)V",
        "",
        "isPinning",
        "Z",
        "()Z",
        "setPinning",
        "(Z)V",
        "recvBodySize",
        "getRecvBodySize",
        "setRecvBodySize",
        "connRet",
        "getConnRet",
        "setConnRet",
        "errCode",
        "getErrCode",
        "setErrCode",
        "errMsg",
        "getErrMsg",
        "setErrMsg",
        "isNetworkConnected",
        "setNetworkConnected",
        "appName",
        "getAppName",
        "setAppName",
        "networkType",
        "getNetworkType",
        "setNetworkType",
        "isPre",
        "setPre",
        "isNetworkImprove",
        "setNetworkImprove",
        "requestChannel",
        "getRequestChannel",
        "setRequestChannel",
        "step",
        "getStep",
        "setStep",
        "xCache",
        "getXCache",
        "setXCache",
        "eagleId",
        "getEagleId",
        "setEagleId",
        "netStatus",
        "getNetStatus",
        "setNetStatus",
        "requestSrc",
        "getRequestSrc",
        "setRequestSrc",
        "requestLLID",
        "getRequestLLID",
        "setRequestLLID",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private callStart:J

.field private connRet:I
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private connWaitTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private dnsTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private eagleId:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private errCode:I
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private errMsg:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private firstDataTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private ip:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private isNetworkConnected:Z
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private isNetworkImprove:Z
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private isPinning:Z
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private isPre:Z
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private netStatus:I
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private networkType:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private onewayTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private protocol:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private recvBodySize:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private recvDataTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private reqBodyStart:J

.field private reqBodyTime:J

.field private reqHeaderStart:J

.field private reqHeaderTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private requestChannel:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private requestLLID:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private requestSrc:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private resBodyStart:J

.field private resHeaderStart:J

.field private resHeaderTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private ret:I
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private sendDataEnd:J

.field private sendDataTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private step:I
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private tcpTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private tlsTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private tlsVersion:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private xCache:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Leg/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->protocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->tlsVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->errMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->networkType:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestChannel:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/tmc/network/stat/RequestStat;->step:I

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->xCache:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->eagleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestSrc:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestLLID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallStart()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->callStart:J

    return-wide v0
.end method

.method public final getConnRet()I
    .locals 1

    iget v0, p0, Lcom/tmc/network/stat/RequestStat;->connRet:I

    return v0
.end method

.method public final getConnWaitTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->connWaitTime:J

    return-wide v0
.end method

.method public final getDnsTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->dnsTime:J

    return-wide v0
.end method

.method public final getEagleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->eagleId:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrCode()I
    .locals 1

    iget v0, p0, Lcom/tmc/network/stat/RequestStat;->errCode:I

    return v0
.end method

.method public final getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstDataTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->firstDataTime:J

    return-wide v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetStatus()I
    .locals 1

    iget v0, p0, Lcom/tmc/network/stat/RequestStat;->netStatus:I

    return v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnewayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->onewayTime:J

    return-wide v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecvBodySize()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->recvBodySize:J

    return-wide v0
.end method

.method public final getRecvDataTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->recvDataTime:J

    return-wide v0
.end method

.method public final getReqBodyStart()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->reqBodyStart:J

    return-wide v0
.end method

.method public final getReqBodyTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->reqBodyTime:J

    return-wide v0
.end method

.method public final getReqHeaderStart()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->reqHeaderStart:J

    return-wide v0
.end method

.method public final getReqHeaderTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->reqHeaderTime:J

    return-wide v0
.end method

.method public final getRequestChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestChannel:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestLLID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestLLID:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->requestSrc:Ljava/lang/String;

    return-object v0
.end method

.method public final getResBodyStart()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->resBodyStart:J

    return-wide v0
.end method

.method public final getResHeaderStart()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->resHeaderStart:J

    return-wide v0
.end method

.method public final getResHeaderTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->resHeaderTime:J

    return-wide v0
.end method

.method public final getRet()I
    .locals 1

    iget v0, p0, Lcom/tmc/network/stat/RequestStat;->ret:I

    return v0
.end method

.method public final getSendDataEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->sendDataEnd:J

    return-wide v0
.end method

.method public final getSendDataTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->sendDataTime:J

    return-wide v0
.end method

.method public final getStep()I
    .locals 1

    iget v0, p0, Lcom/tmc/network/stat/RequestStat;->step:I

    return v0
.end method

.method public final getTcpTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->tcpTime:J

    return-wide v0
.end method

.method public final getTlsTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/RequestStat;->tlsTime:J

    return-wide v0
.end method

.method public final getTlsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->tlsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getXCache()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/RequestStat;->xCache:Ljava/lang/String;

    return-object v0
.end method

.method public final isNetworkConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkConnected:Z

    return v0
.end method

.method public final isNetworkImprove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkImprove:Z

    return v0
.end method

.method public final isPinning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tmc/network/stat/RequestStat;->isPinning:Z

    return v0
.end method

.method public final isPre()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tmc/network/stat/RequestStat;->isPre:Z

    return v0
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->appName:Ljava/lang/String;

    return-void
.end method

.method public final setCallStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->callStart:J

    return-void
.end method

.method public final setConnRet(I)V
    .locals 0

    iput p1, p0, Lcom/tmc/network/stat/RequestStat;->connRet:I

    return-void
.end method

.method public final setConnWaitTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->connWaitTime:J

    return-void
.end method

.method public final setDnsTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->dnsTime:J

    return-void
.end method

.method public final setEagleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->eagleId:Ljava/lang/String;

    return-void
.end method

.method public final setErrCode(I)V
    .locals 0

    iput p1, p0, Lcom/tmc/network/stat/RequestStat;->errCode:I

    return-void
.end method

.method public final setErrMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public final setFirstDataTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->firstDataTime:J

    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->host:Ljava/lang/String;

    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->ip:Ljava/lang/String;

    return-void
.end method

.method public final setNetStatus(I)V
    .locals 0

    iput p1, p0, Lcom/tmc/network/stat/RequestStat;->netStatus:I

    return-void
.end method

.method public final setNetworkConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkConnected:Z

    return-void
.end method

.method public final setNetworkImprove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkImprove:Z

    return-void
.end method

.method public final setNetworkType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->networkType:Ljava/lang/String;

    return-void
.end method

.method public final setOnewayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->onewayTime:J

    return-void
.end method

.method public final setPinning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tmc/network/stat/RequestStat;->isPinning:Z

    return-void
.end method

.method public final setPre(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tmc/network/stat/RequestStat;->isPre:Z

    return-void
.end method

.method public final setProtocol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->protocol:Ljava/lang/String;

    return-void
.end method

.method public final setRecvBodySize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->recvBodySize:J

    return-void
.end method

.method public final setRecvDataTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->recvDataTime:J

    return-void
.end method

.method public final setReqBodyStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->reqBodyStart:J

    return-void
.end method

.method public final setReqBodyTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->reqBodyTime:J

    return-void
.end method

.method public final setReqHeaderStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->reqHeaderStart:J

    return-void
.end method

.method public final setReqHeaderTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->reqHeaderTime:J

    return-void
.end method

.method public final setRequestChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->requestChannel:Ljava/lang/String;

    return-void
.end method

.method public final setRequestLLID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->requestLLID:Ljava/lang/String;

    return-void
.end method

.method public final setRequestSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->requestSrc:Ljava/lang/String;

    return-void
.end method

.method public final setResBodyStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->resBodyStart:J

    return-void
.end method

.method public final setResHeaderStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->resHeaderStart:J

    return-void
.end method

.method public final setResHeaderTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->resHeaderTime:J

    return-void
.end method

.method public final setRet(I)V
    .locals 0

    iput p1, p0, Lcom/tmc/network/stat/RequestStat;->ret:I

    return-void
.end method

.method public final setSendDataEnd(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->sendDataEnd:J

    return-void
.end method

.method public final setSendDataTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->sendDataTime:J

    return-void
.end method

.method public final setStep(I)V
    .locals 0

    iput p1, p0, Lcom/tmc/network/stat/RequestStat;->step:I

    return-void
.end method

.method public final setTcpTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->tcpTime:J

    return-void
.end method

.method public final setTlsTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/RequestStat;->tlsTime:J

    return-void
.end method

.method public final setTlsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->tlsVersion:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->url:Ljava/lang/String;

    return-void
.end method

.method public final setXCache(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/RequestStat;->xCache:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestStat(ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onewayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->onewayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->connWaitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dnsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->dnsTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tcpTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->tcpTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tlsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->tlsTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tlsVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->tlsVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reqHeaderTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->reqHeaderTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reqBodyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->reqBodyTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", resHeaderTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->resHeaderTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sendDataTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->sendDataTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", recvDataTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->recvDataTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", firstDataTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->firstDataTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmc/network/stat/RequestStat;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPinning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tmc/network/stat/RequestStat;->isPinning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", recvBodySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/RequestStat;->recvBodySize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connRet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmc/network/stat/RequestStat;->connRet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmc/network/stat/RequestStat;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNetworkConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tmc/network/stat/RequestStat;->isPre:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNetworkImprove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tmc/network/stat/RequestStat;->isNetworkImprove:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requestChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->requestChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmc/network/stat/RequestStat;->step:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", xCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->xCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eagleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->eagleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", netStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmc/network/stat/RequestStat;->netStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestSrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->requestSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestLLID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/RequestStat;->requestLLID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
