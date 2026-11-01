.class Lcom/transsion/ga/athena$athena;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ga/athena;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ga/athena;


# direct methods
.method constructor <init>(Lcom/transsion/ga/athena;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ga/athena$athena;->a:Lcom/transsion/ga/athena;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/ga/athena$athena;->a:Lcom/transsion/ga/athena;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/ga/athena;->a(Lcom/transsion/ga/athena;I)I

    iget-object v0, p0, Lcom/transsion/ga/athena$athena;->a:Lcom/transsion/ga/athena;

    invoke-static {v0}, Lcom/transsion/ga/athena;->c(Lcom/transsion/ga/athena;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/transsion/ga/athena$athena;->a:Lcom/transsion/ga/athena;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/ga/athena;->f(Lcom/transsion/ga/athena;Z)Z

    iget-object v0, p0, Lcom/transsion/ga/athena$athena;->a:Lcom/transsion/ga/athena;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/ga/athena;->b(Lcom/transsion/ga/athena;J)J

    const-string v0, ""

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/ehanat;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
