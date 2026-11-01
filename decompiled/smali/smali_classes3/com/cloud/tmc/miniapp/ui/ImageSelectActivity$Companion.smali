.class public final Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSelectMode()I
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getSelectMode$cp()I

    move-result v0

    return v0
.end method

.method public final launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    const-string p1, "\u6700\u5c11\u8981\u9009\u62e9\u4e00\u4e2a\u56fe\u7247"

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "maxSelect"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;->setSelectMode(I)V

    sget-object p2, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {p2, v1, p1}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->addCommonIntentParameter(Landroid/content/Intent;Landroid/content/Context;)V

    new-instance p2, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;

    invoke-direct {p2, p3}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;-><init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;)V

    return-void
.end method

.method public final launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;->launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    return-void
.end method

.method public final setSelectMode(I)V
    .locals 0

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$setSelectMode$cp(I)V

    return-void
.end method
