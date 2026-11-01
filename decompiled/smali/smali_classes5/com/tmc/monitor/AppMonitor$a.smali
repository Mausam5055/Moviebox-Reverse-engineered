.class abstract Lcom/tmc/monitor/AppMonitor$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmc/monitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/tmc/monitor/AppMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tmc/monitor/AppMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tmc/monitor/AppMonitor;-><init>(Lcom/tmc/monitor/AppMonitor$1;)V

    sput-object v0, Lcom/tmc/monitor/AppMonitor$a;->a:Lcom/tmc/monitor/AppMonitor;

    return-void
.end method

.method static synthetic a()Lcom/tmc/monitor/AppMonitor;
    .locals 1

    sget-object v0, Lcom/tmc/monitor/AppMonitor$a;->a:Lcom/tmc/monitor/AppMonitor;

    return-object v0
.end method
