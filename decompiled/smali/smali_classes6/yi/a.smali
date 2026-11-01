.class public Lyi/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/transsion/athena/data/TrackData;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lyi/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAILED! You should init Athena first before track the event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lyi/a;->b:Ljava/lang/String;

    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iput-object p1, p0, Lyi/a;->a:Lcom/transsion/athena/data/TrackData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p2

    iput-wide v0, p0, Lyi/a;->c:J

    iput-object p1, p0, Lyi/a;->b:Ljava/lang/String;

    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iput-object p1, p0, Lyi/a;->a:Lcom/transsion/athena/data/TrackData;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lyi/a;->a:Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    iget-wide v0, p0, Lyi/a;->c:J

    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->L(J)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v0

    iget-object v1, p0, Lyi/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lyi/a;->a:Lcom/transsion/athena/data/TrackData;

    iget-wide v3, p0, Lyi/a;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/ga/AthenaAnalytics;->h0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public c(Landroid/os/Bundle;Landroid/os/Bundle;)Lyi/a;
    .locals 1

    const-string v0, "eparam"

    invoke-direct {p0, v0, p1}, Lyi/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ext"

    invoke-direct {p0, p1, p2}, Lyi/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method
