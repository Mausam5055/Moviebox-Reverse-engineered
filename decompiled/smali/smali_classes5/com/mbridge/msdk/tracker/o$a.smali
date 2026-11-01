.class Lcom/mbridge/msdk/tracker/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/tracker/o;-><init>(ILcom/mbridge/msdk/tracker/p;Lcom/mbridge/msdk/tracker/w;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/tracker/o;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/tracker/o;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/o$a;->a:Lcom/mbridge/msdk/tracker/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MBridgeReportResponseThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
