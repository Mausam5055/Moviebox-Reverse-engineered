.class public final Lcom/transsion/home/bean/HomePreferencesIntervalTime;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/home/bean/HomePreferencesIntervalTime;",
        "",
        "showInterval",
        "",
        "closeInterval",
        "chooseInterval",
        "<init>",
        "(JJJ)V",
        "getShowInterval",
        "()J",
        "getCloseInterval",
        "getChooseInterval",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final chooseInterval:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chooseInterval"
    .end annotation
.end field

.field private final closeInterval:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "closeInterval"
    .end annotation
.end field

.field private final showInterval:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showInterval"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->showInterval:J

    iput-wide p3, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->closeInterval:J

    iput-wide p5, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->chooseInterval:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/home/bean/HomePreferencesIntervalTime;JJJILjava/lang/Object;)Lcom/transsion/home/bean/HomePreferencesIntervalTime;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->showInterval:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->closeInterval:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-wide p5, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->chooseInterval:J

    :cond_2
    move-wide v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->copy(JJJ)Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->showInterval:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->closeInterval:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->chooseInterval:J

    return-wide v0
.end method

.method public final copy(JJJ)Lcom/transsion/home/bean/HomePreferencesIntervalTime;
    .locals 8

    new-instance v7, Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;-><init>(JJJ)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    iget-wide v3, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->showInterval:J

    iget-wide v5, p1, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->showInterval:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->closeInterval:J

    iget-wide v5, p1, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->closeInterval:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->chooseInterval:J

    iget-wide v5, p1, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->chooseInterval:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChooseInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->chooseInterval:J

    return-wide v0
.end method

.method public final getCloseInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->closeInterval:J

    return-wide v0
.end method

.method public final getShowInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->showInterval:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->showInterval:J

    invoke-static {v0, v1}, Landroidx/collection/s;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->closeInterval:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->chooseInterval:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->showInterval:J

    iget-wide v2, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->closeInterval:J

    iget-wide v4, p0, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->chooseInterval:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HomePreferencesIntervalTime(showInterval="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", closeInterval="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", chooseInterval="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
