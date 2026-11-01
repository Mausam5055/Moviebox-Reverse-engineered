.class Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Scheduler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;",
        ">;"
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;->INSTANCE:Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;)I
    .locals 3

    iget-wide v0, p1, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->time:J

    iget-wide p1, p2, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->time:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;

    check-cast p2, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;->compare(Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;)I

    move-result p1

    return p1
.end method
