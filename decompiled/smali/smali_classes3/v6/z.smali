.class public Lv6/z;
.super Ljava/lang/Object;


# instance fields
.field private info:Ljava/lang/String;

.field private layerId:J

.field private requestTime:J


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v6, 0x7

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lv6/z;-><init>(JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lv6/z;->layerId:J

    iput-wide p3, p0, Lv6/z;->requestTime:J

    iput-object p5, p0, Lv6/z;->info:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const-wide/16 v0, 0x0

    if-eqz p7, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p3

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object p6, p5

    move-object p1, p0

    move-wide p2, v2

    move-wide p4, v0

    invoke-direct/range {p1 .. p6}, Lv6/z;-><init>(JJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv6/z;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayerId()J
    .locals 2

    iget-wide v0, p0, Lv6/z;->layerId:J

    return-wide v0
.end method

.method public final getRequestTime()J
    .locals 2

    iget-wide v0, p0, Lv6/z;->requestTime:J

    return-wide v0
.end method

.method public final setInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv6/z;->info:Ljava/lang/String;

    return-void
.end method

.method public final setLayerId(J)V
    .locals 0

    iput-wide p1, p0, Lv6/z;->layerId:J

    return-void
.end method

.method public final setRequestTime(J)V
    .locals 0

    iput-wide p1, p0, Lv6/z;->requestTime:J

    return-void
.end method
