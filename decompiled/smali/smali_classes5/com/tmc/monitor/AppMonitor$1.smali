.class Lcom/tmc/monitor/AppMonitor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tmc/monitor/AppMonitor;->c(Leg/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tmc/monitor/AppMonitor;

.field final synthetic val$statObject:Leg/c;


# direct methods
.method constructor <init>(Lcom/tmc/monitor/AppMonitor;Leg/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/monitor/AppMonitor$1;->this$0:Lcom/tmc/monitor/AppMonitor;

    iput-object p2, p0, Lcom/tmc/monitor/AppMonitor$1;->val$statObject:Leg/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tmc/monitor/AppMonitor$1;->this$0:Lcom/tmc/monitor/AppMonitor;

    iget-object v1, p0, Lcom/tmc/monitor/AppMonitor$1;->val$statObject:Leg/c;

    invoke-static {v0, v1}, Lcom/tmc/monitor/AppMonitor;->a(Lcom/tmc/monitor/AppMonitor;Leg/c;)V

    return-void
.end method
