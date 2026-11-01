.class Lcom/transsion/athena/enatha/enatha$anehat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/enatha/enatha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/athena/enatha/enatha;


# direct methods
.method constructor <init>(Lcom/transsion/athena/enatha/enatha;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha$anehat;->a:Lcom/transsion/athena/enatha/enatha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Athena SDK isAthenaEnable = false"

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "AthenaKV"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->J(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/athena/enatha/enatha$anehat;->a:Lcom/transsion/athena/enatha/enatha;

    invoke-static {v1, v0}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/enatha/enatha;Lcom/tencent/mmkv/MMKV;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$anehat;->a:Lcom/transsion/athena/enatha/enatha;

    iget-object v0, v0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
