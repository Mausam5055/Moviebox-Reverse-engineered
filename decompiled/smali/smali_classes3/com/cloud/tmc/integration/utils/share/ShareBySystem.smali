.class public final Lcom/cloud/tmc/integration/utils/share/ShareBySystem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/utils/share/config/IShare;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/share/ShareBySystem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/share/ShareBySystem;",
        "Lcom/cloud/tmc/integration/utils/share/config/IShare;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "share",
        "",
        "shareParams",
        "Lcom/cloud/tmc/integration/utils/share/ShareParams;",
        "listener",
        "Lcom/cloud/tmc/integration/utils/share/OnShareListener;",
        "startActivity",
        "",
        "intent",
        "Landroid/content/Intent;",
        "Companion",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/utils/share/ShareBySystem$Companion;

.field private static final TAG:Ljava/lang/String; = "ShareBySystem"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareBySystem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/utils/share/ShareBySystem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/utils/share/ShareBySystem;->Companion:Lcom/cloud/tmc/integration/utils/share/ShareBySystem$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/share/ShareBySystem;->context:Landroid/content/Context;

    return-void
.end method

.method private final startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "ShareBySystem"

    const-string v0, "startActivity: "

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public share(Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 1

    const-string v0, "shareParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareBySystem;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->createShareIntent(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/integration/utils/share/ShareBySystem;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    invoke-interface {p2, v0, v0}, Lcom/cloud/tmc/integration/utils/share/OnShareListener;->onShare(II)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x2

    invoke-interface {p2, v0, p1}, Lcom/cloud/tmc/integration/utils/share/OnShareListener;->onShare(II)V

    :cond_1
    :goto_0
    return-void
.end method
