.class public final Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/model/AppInfoScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;",
        "",
        "()V",
        "PARAM_SCENE",
        "",
        "PARAM_SCENE_VERSION",
        "PARAM_SOURCE",
        "extractScene",
        "Lcom/cloud/tmc/integration/model/AppInfoScene;",
        "startParams",
        "Landroid/os/Bundle;",
        "extractSceneVersion",
        "isDevSource",
        "",
        "parse",
        "str",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final extractScene(Landroid/os/Bundle;)Lcom/cloud/tmc/integration/model/AppInfoScene;
    .locals 2

    const-string v0, "nbsn"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/cloud/tmc/integration/model/AppInfoScene;->ONLINE:Lcom/cloud/tmc/integration/model/AppInfoScene;

    return-object p1

    :cond_0
    const-string v0, "DEBUG"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/cloud/tmc/integration/model/AppInfoScene;->DEBUG:Lcom/cloud/tmc/integration/model/AppInfoScene;

    return-object p1

    :cond_1
    const-string v0, "TRIAL"

    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/cloud/tmc/integration/model/AppInfoScene;->TRIAL:Lcom/cloud/tmc/integration/model/AppInfoScene;

    return-object p1

    :cond_2
    const-string v0, "REVIEW"

    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/cloud/tmc/integration/model/AppInfoScene;->REVIEW:Lcom/cloud/tmc/integration/model/AppInfoScene;

    return-object p1

    :cond_3
    const-string v0, "YUNTEST"

    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/cloud/tmc/integration/model/AppInfoScene;->YUNTEST:Lcom/cloud/tmc/integration/model/AppInfoScene;

    return-object p1

    :cond_4
    sget-object p1, Lcom/cloud/tmc/integration/model/AppInfoScene;->DEBUG:Lcom/cloud/tmc/integration/model/AppInfoScene;

    return-object p1
.end method

.method public final extractSceneVersion(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "nbsv"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "*"

    goto :goto_0

    :cond_0
    const-string v0, "{\n                sceneVersion\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final isDevSource(Landroid/os/Bundle;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "nbsource"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "DEBUG"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final parse(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoScene;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/cloud/tmc/integration/model/AppInfoScene;->ONLINE:Lcom/cloud/tmc/integration/model/AppInfoScene;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/cloud/tmc/integration/model/AppInfoScene;->valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoScene;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, Lcom/cloud/tmc/integration/model/AppInfoScene;->ONLINE:Lcom/cloud/tmc/integration/model/AppInfoScene;

    :goto_0
    return-object p1
.end method
