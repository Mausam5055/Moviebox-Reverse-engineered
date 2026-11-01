.class public final synthetic Lcom/cloud/tmc/ad/athena/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/ad/athena/SensorUtil;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/ad/athena/SensorUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/ad/athena/a;->a:Lcom/cloud/tmc/ad/athena/SensorUtil;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/a;->a:Lcom/cloud/tmc/ad/athena/SensorUtil;

    invoke-static {v0}, Lcom/cloud/tmc/ad/athena/SensorUtil;->a(Lcom/cloud/tmc/ad/athena/SensorUtil;)V

    return-void
.end method
