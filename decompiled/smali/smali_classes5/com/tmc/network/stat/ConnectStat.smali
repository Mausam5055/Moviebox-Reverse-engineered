.class public final Lcom/tmc/network/stat/ConnectStat;
.super Leg/c;


# annotations
.annotation runtime Leg/b;
    id = "700"
    name = "connect"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008!\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\u0006\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u000bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u000bR\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u001b\u001a\u0004\u0008!\u0010\u001d\"\u0004\u0008\"\u0010\u001fR\"\u0010#\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u001b\u001a\u0004\u0008$\u0010\u001d\"\u0004\u0008%\u0010\u001fR\"\u0010&\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u001b\u001a\u0004\u0008\'\u0010\u001d\"\u0004\u0008(\u0010\u001fR\"\u0010)\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010\u001b\u001a\u0004\u0008*\u0010\u001d\"\u0004\u0008+\u0010\u001fR\"\u0010,\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010\u001b\u001a\u0004\u0008-\u0010\u001d\"\u0004\u0008.\u0010\u001fR\"\u0010/\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010\u001b\u001a\u0004\u00080\u0010\u001d\"\u0004\u00081\u0010\u001fR\"\u00103\u001a\u0002028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00083\u00105\"\u0004\u00086\u00107R\"\u00108\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010\u0014\u001a\u0004\u00089\u0010\u0016\"\u0004\u0008:\u0010\u0018R$\u0010;\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010\u0008\u001a\u0004\u0008<\u0010\u0006\"\u0004\u0008=\u0010\u000bR\"\u0010>\u001a\u0002028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u00104\u001a\u0004\u0008>\u00105\"\u0004\u0008?\u00107R$\u0010@\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010\u0008\u001a\u0004\u0008A\u0010\u0006\"\u0004\u0008B\u0010\u000bR$\u0010C\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010\u0008\u001a\u0004\u0008D\u0010\u0006\"\u0004\u0008E\u0010\u000bR\"\u0010F\u001a\u0002028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u00104\u001a\u0004\u0008F\u00105\"\u0004\u0008G\u00107R\"\u0010H\u001a\u0002028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u00104\u001a\u0004\u0008H\u00105\"\u0004\u0008I\u00107R\"\u0010J\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010\u0014\u001a\u0004\u0008K\u0010\u0016\"\u0004\u0008L\u0010\u0018R\"\u0010M\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008M\u0010\u0014\u001a\u0004\u0008N\u0010\u0016\"\u0004\u0008O\u0010\u0018R$\u0010P\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010\u0008\u001a\u0004\u0008Q\u0010\u0006\"\u0004\u0008R\u0010\u000b\u00a8\u0006S"
    }
    d2 = {
        "Lcom/tmc/network/stat/ConnectStat;",
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
        "protocol",
        "getProtocol",
        "setProtocol",
        "",
        "ret",
        "I",
        "getRet",
        "()I",
        "setRet",
        "(I)V",
        "",
        "connectStart",
        "J",
        "getConnectStart",
        "()J",
        "setConnectStart",
        "(J)V",
        "connTime",
        "getConnTime",
        "setConnTime",
        "dnsStart",
        "getDnsStart",
        "setDnsStart",
        "dnsTime",
        "getDnsTime",
        "setDnsTime",
        "tcpTime",
        "getTcpTime",
        "setTcpTime",
        "tlsStart",
        "getTlsStart",
        "setTlsStart",
        "tlsTime",
        "getTlsTime",
        "setTlsTime",
        "",
        "isPinning",
        "Z",
        "()Z",
        "setPinning",
        "(Z)V",
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
        "step",
        "getStep",
        "setStep",
        "netStatus",
        "getNetStatus",
        "setNetStatus",
        "tlsVersion",
        "getTlsVersion",
        "setTlsVersion",
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

.field private connTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private connectStart:J

.field private dnsStart:J

.field private dnsTime:J
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

.field private protocol:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private ret:I
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

.field private tlsStart:J

.field private tlsTime:J
    .annotation runtime Leg/a;
    .end annotation
.end field

.field private tlsVersion:Ljava/lang/String;
    .annotation runtime Leg/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Leg/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->protocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->errMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->networkType:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/tmc/network/stat/ConnectStat;->step:I

    iput-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->tlsVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->connTime:J

    return-wide v0
.end method

.method public final getConnectStart()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->connectStart:J

    return-wide v0
.end method

.method public final getDnsStart()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->dnsStart:J

    return-wide v0
.end method

.method public final getDnsTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->dnsTime:J

    return-wide v0
.end method

.method public final getErrCode()I
    .locals 1

    iget v0, p0, Lcom/tmc/network/stat/ConnectStat;->errCode:I

    return v0
.end method

.method public final getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetStatus()I
    .locals 1

    iget v0, p0, Lcom/tmc/network/stat/ConnectStat;->netStatus:I

    return v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getRet()I
    .locals 1

    iget v0, p0, Lcom/tmc/network/stat/ConnectStat;->ret:I

    return v0
.end method

.method public final getStep()I
    .locals 1

    iget v0, p0, Lcom/tmc/network/stat/ConnectStat;->step:I

    return v0
.end method

.method public final getTcpTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->tcpTime:J

    return-wide v0
.end method

.method public final getTlsStart()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->tlsStart:J

    return-wide v0
.end method

.method public final getTlsTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/stat/ConnectStat;->tlsTime:J

    return-wide v0
.end method

.method public final getTlsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/stat/ConnectStat;->tlsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final isNetworkConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkConnected:Z

    return v0
.end method

.method public final isNetworkImprove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkImprove:Z

    return v0
.end method

.method public final isPinning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tmc/network/stat/ConnectStat;->isPinning:Z

    return v0
.end method

.method public final isPre()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tmc/network/stat/ConnectStat;->isPre:Z

    return v0
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->appName:Ljava/lang/String;

    return-void
.end method

.method public final setConnTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->connTime:J

    return-void
.end method

.method public final setConnectStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->connectStart:J

    return-void
.end method

.method public final setDnsStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->dnsStart:J

    return-void
.end method

.method public final setDnsTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->dnsTime:J

    return-void
.end method

.method public final setErrCode(I)V
    .locals 0

    iput p1, p0, Lcom/tmc/network/stat/ConnectStat;->errCode:I

    return-void
.end method

.method public final setErrMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->host:Ljava/lang/String;

    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->ip:Ljava/lang/String;

    return-void
.end method

.method public final setNetStatus(I)V
    .locals 0

    iput p1, p0, Lcom/tmc/network/stat/ConnectStat;->netStatus:I

    return-void
.end method

.method public final setNetworkConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkConnected:Z

    return-void
.end method

.method public final setNetworkImprove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkImprove:Z

    return-void
.end method

.method public final setNetworkType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->networkType:Ljava/lang/String;

    return-void
.end method

.method public final setPinning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tmc/network/stat/ConnectStat;->isPinning:Z

    return-void
.end method

.method public final setPre(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tmc/network/stat/ConnectStat;->isPre:Z

    return-void
.end method

.method public final setProtocol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->protocol:Ljava/lang/String;

    return-void
.end method

.method public final setRet(I)V
    .locals 0

    iput p1, p0, Lcom/tmc/network/stat/ConnectStat;->ret:I

    return-void
.end method

.method public final setStep(I)V
    .locals 0

    iput p1, p0, Lcom/tmc/network/stat/ConnectStat;->step:I

    return-void
.end method

.method public final setTcpTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->tcpTime:J

    return-void
.end method

.method public final setTlsStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsStart:J

    return-void
.end method

.method public final setTlsTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsTime:J

    return-void
.end method

.method public final setTlsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectStat(ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmc/network/stat/ConnectStat;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->connTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dnsStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->dnsStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dnsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->dnsTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tcpTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->tcpTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tlsStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tlsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isPinning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tmc/network/stat/ConnectStat;->isPinning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmc/network/stat/ConnectStat;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNetworkConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tmc/network/stat/ConnectStat;->isPre:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNetworkImprove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tmc/network/stat/ConnectStat;->isNetworkImprove:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmc/network/stat/ConnectStat;->step:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", netStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tmc/network/stat/ConnectStat;->netStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tlsVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tmc/network/stat/ConnectStat;->tlsVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
