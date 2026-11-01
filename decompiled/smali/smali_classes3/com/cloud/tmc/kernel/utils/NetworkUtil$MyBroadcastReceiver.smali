.class Lcom/cloud/tmc/kernel/utils/NetworkUtil$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/utils/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyBroadcastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/tmc/kernel/utils/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil$MyBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->c(Landroid/content/Context;)V

    return-void
.end method
