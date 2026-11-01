.class public Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;,
        Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;,
        Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;,
        Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$SUCCESS;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;->name:Ljava/lang/String;

    return-object v0
.end method
