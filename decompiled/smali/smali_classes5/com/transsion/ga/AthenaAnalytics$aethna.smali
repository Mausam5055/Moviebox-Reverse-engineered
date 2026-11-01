.class Lcom/transsion/ga/AthenaAnalytics$aethna;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ga/AthenaAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "aethna"
.end annotation


# instance fields
.field private a:Lcom/transsion/athena/enatha/athena;


# direct methods
.method private constructor <init>(Lcom/transsion/athena/enatha/athena;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ga/AthenaAnalytics$aethna;->a:Lcom/transsion/athena/enatha/athena;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/athena/enatha/athena;Lcom/transsion/ga/AthenaAnalytics$athena;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ga/AthenaAnalytics$aethna;-><init>(Lcom/transsion/athena/enatha/athena;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->v()Z

    move-result v0

    const-wide/32 v1, 0xea60

    const-string v3, "]"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Athena is in Test mode\uff0cshould not release this APK\uff08\u6d4b\u8bd5\u6a21\u5f0f\uff09["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->g()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/anehat;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$aethna;->a:Lcom/transsion/athena/enatha/athena;

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/athena/enatha/athena;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - Athena is in Release mode with log enabled. Please set AthenaAnalytics.setDebug(false) to release this APK \uff08Debug\u6a21\u5f0f\uff09["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->g()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/anehat;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/ga/AthenaAnalytics$aethna;->a:Lcom/transsion/athena/enatha/athena;

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/athena/enatha/athena;->a(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
