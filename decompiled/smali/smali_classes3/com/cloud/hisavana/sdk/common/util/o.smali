.class public final synthetic Lcom/cloud/hisavana/sdk/common/util/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/o;->a:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    return-void
.end method


# virtual methods
.method public final onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/o;->a:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->a(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;Landroid/widget/Chronometer;)V

    return-void
.end method
