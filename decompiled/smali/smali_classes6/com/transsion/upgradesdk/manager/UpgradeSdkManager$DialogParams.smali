.class public Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogParams"
.end annotation


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public callback:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

.field public cancelButtonTextColor:Ljava/lang/Integer;

.field public confirmButtonTextColor:Ljava/lang/Integer;

.field public dialogStyle:I

.field public isManualClick:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/transsion/upgradesdk/manager/UpgradeDialogCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->dialogStyle:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->activityRef:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->isManualClick:Z

    iput-object p3, p0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->callback:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->activityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
