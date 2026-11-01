.class public Lcom/cloud/tmc/integration/structure/Page$TaskContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/structure/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskContext"
.end annotation


# instance fields
.field public needToExitNum:I

.field public routeType:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;


# direct methods
.method public constructor <init>(ILcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "navigateBack"

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->routeType:Ljava/lang/String;

    iput p1, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->needToExitNum:I

    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->source:Ljava/lang/String;

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-object p4, p0, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->routeType:Ljava/lang/String;

    :cond_1
    return-void
.end method
