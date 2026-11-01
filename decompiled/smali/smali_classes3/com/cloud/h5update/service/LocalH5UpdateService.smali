.class public final Lcom/cloud/h5update/service/LocalH5UpdateService;
.super Landroid/app/IntentService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/h5update/service/LocalH5UpdateService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/h5update/service/LocalH5UpdateService;",
        "Landroid/app/IntentService;",
        "<init>",
        "()V",
        "",
        "a",
        "Landroid/content/Intent;",
        "intent",
        "onHandleIntent",
        "(Landroid/content/Intent;)V",
        "apph5update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/cloud/h5update/service/LocalH5UpdateService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/h5update/service/LocalH5UpdateService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/h5update/service/LocalH5UpdateService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/h5update/service/LocalH5UpdateService;->a:Lcom/cloud/h5update/service/LocalH5UpdateService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "LocalH5UpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final a()V
    .locals 2

    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    sget-object v1, Lcom/cloud/h5update/b;->g:Lcom/cloud/h5update/b$b;

    invoke-virtual {v1}, Lcom/cloud/h5update/b$b;->a()Lcom/cloud/h5update/bean/UpdateEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/h5update/utils/l;->e(Lcom/cloud/h5update/bean/UpdateEntity;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.cloud.h5update.service.action.LOCAL_UPDATE"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/h5update/service/LocalH5UpdateService;->a()V

    goto :goto_0

    :cond_0
    sget-object v0, Lgg/b;->a:Lgg/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error intent for action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgg/b;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
