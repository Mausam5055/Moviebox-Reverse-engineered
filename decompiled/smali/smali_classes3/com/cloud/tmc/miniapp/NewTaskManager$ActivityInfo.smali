.class public final Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/NewTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityInfo"
.end annotation


# instance fields
.field private activityClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniAppMiniProcessActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessName:Ljava/lang/String;

.field private serviceClazz:Ljava/lang/Void;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->activityClazz:Ljava/lang/Class;

    check-cast p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    iget-object v2, p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->activityClazz:Ljava/lang/Class;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->serviceClazz:Ljava/lang/Void;

    iget-object v2, p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->serviceClazz:Ljava/lang/Void;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->mProcessName:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->mProcessName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final getActivityClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniAppMiniProcessActivity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->activityClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public final getMProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceClazz()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->serviceClazz:Ljava/lang/Void;

    return-object v0
.end method

.method public final setActivityClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniAppMiniProcessActivity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->activityClazz:Ljava/lang/Class;

    return-void
.end method

.method public final setMProcessName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->mProcessName:Ljava/lang/String;

    return-void
.end method

.method public final setServiceClazz(Ljava/lang/Void;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->serviceClazz:Ljava/lang/Void;

    return-void
.end method
