.class public Lcom/cloud/tmc/integration/structure/Page$AnimStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/structure/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimStore"
.end annotation


# instance fields
.field public disableEnter:Z

.field public disableExit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableEnter:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableEnter:Z

    iput-boolean p2, p0, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    return-void
.end method
