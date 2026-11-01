.class public Lcom/tencent/tinker/lib/service/TinkerPatchForeService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Lcom/tencent/tinker/lib/service/TinkerPatchForeService$a;

    invoke-direct {p1, p0}, Lcom/tencent/tinker/lib/service/TinkerPatchForeService$a;-><init>(Lcom/tencent/tinker/lib/service/TinkerPatchForeService;)V

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p1, 0x2

    return p1
.end method
