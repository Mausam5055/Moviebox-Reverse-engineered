.class public final synthetic Lcom/transsion/ga/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ga/AthenaAnalytics;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/athena/data/TrackData;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ga/AthenaAnalytics;Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ga/a;->a:Lcom/transsion/ga/AthenaAnalytics;

    iput-object p2, p0, Lcom/transsion/ga/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/ga/a;->c:Lcom/transsion/athena/data/TrackData;

    iput-wide p4, p0, Lcom/transsion/ga/a;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/ga/a;->a:Lcom/transsion/ga/AthenaAnalytics;

    iget-object v1, p0, Lcom/transsion/ga/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/ga/a;->c:Lcom/transsion/athena/data/TrackData;

    iget-wide v3, p0, Lcom/transsion/ga/a;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/ga/AthenaAnalytics;->b(Lcom/transsion/ga/AthenaAnalytics;Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method
