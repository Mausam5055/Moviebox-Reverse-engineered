.class Lcom/transsion/athena/aidl/AthenaTrackService$athena;
.super Lcom/transsion/athena/athena$athena;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/aidl/AthenaTrackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/transsion/athena/aidl/AthenaTrackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/athena/athena$athena;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string v0, "AthenaTrackService receive appId : %d, eventName : %s"

    invoke-static {v0, v1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->L(J)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->h0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method
