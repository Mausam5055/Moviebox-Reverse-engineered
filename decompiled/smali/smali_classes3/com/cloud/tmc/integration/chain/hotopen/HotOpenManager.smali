.class public final Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J \u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;",
        "",
        "()V",
        "openActivatePage",
        "",
        "appChainContext",
        "Lcom/cloud/tmc/integration/chain/app/AppChainContext;",
        "dataBundle",
        "Landroid/os/Bundle;",
        "openActivatePageShell",
        "hotOpenType",
        "",
        "openNewPage",
        "parsePageStage",
        "parsePageStageShell",
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
.field public static final INSTANCE:Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->INSTANCE:Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final parsePageStage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v1

    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v1

    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v1

    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/errorState/PageErrorState;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v0

    instance-of v0, v0, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessState;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessState;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessState;->reportNew(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessState;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessState;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessState;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessState;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillState;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillState;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessState;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessState;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessState;->reportNew(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private final parsePageStageShell(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentChainEndState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentChainEndState:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HotOpenState"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v1

    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;

    const-string v2, "shell_1"

    const-string v3, "shell_0"

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v1

    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v1

    instance-of v1, v1, Lcom/cloud/tmc/integration/chain/errorState/PageErrorState;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v0

    instance-of v0, v0, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    if-eqz v0, :cond_3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell0State;

    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell0State;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell0State;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell0State;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell1State;

    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell1State;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell1State;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell1State;->reportNew(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenEndSuccessShell1State;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessShellState;

    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessShellState;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessShellState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessShellState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenEndSuccessShellState;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    move-result p3

    if-nez p3, :cond_5

    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessShellState;

    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessShellState;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessShellState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessShellState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFailAndAppOpenMidSuccessShellState;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    move-result p3

    if-nez p3, :cond_8

    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillShellState;

    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillShellState;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillShellState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillShellState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenFaiAndAppOpenFaillShellState;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell0State;

    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell0State;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell0State;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell0State;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell0State;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_7
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;

    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;->reportNew(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/PageStageOpenMidSuccessShell1State;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public final openActivatePage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "appChainContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v0

    instance-of v0, v0, Lcom/cloud/tmc/integration/chain/endState/StartStepEndState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->parsePageStage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public final openActivatePageShell(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "appChainContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotOpenType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;

    move-result-object v0

    instance-of v0, v0, Lcom/cloud/tmc/integration/chain/endState/StartStepEndState;

    if-nez v0, :cond_0

    new-instance p3, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;

    invoke-direct {p3}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reportOld(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->reset(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    invoke-virtual {p3, p1, p2}, Lcom/cloud/tmc/integration/chain/hotopen/channel/activatePage/AppStageOpenFailState;->keepSituation(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->parsePageStageShell(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public final openNewPage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "appChainContext"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dataBundle"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->destroy(Landroid/os/Bundle;)V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dataBundle.getString(ChainPoint.CHAIN_SCENE, \"0\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setScene(Ljava/lang/String;)V

    const-string v2, "hot_open_type"

    const-string v3, "-2"

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dataBundle.getString(HOT_OPEN_TYPE, \"-2\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setHotOpenType(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "dataBundle.getString(Cha\u2026CHAIN_OPEN_CHANNEL, \"-1\")"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setOpenChannel(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageIndexOfApp()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenedPageCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setReportMid(Z)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setReportEnd(Z)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setOpenMiniAppMidResult(Z)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setOpenMiniAppEndResult(Z)V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateCostTime(Ljava/util/Map;)V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateRangeTime(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageMaxStage(I)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setSyncType(I)V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setSyncTypeMap(Ljava/util/Map;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setH5ProgressCollectList(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    move p2, v1

    :goto_0
    const/16 v2, 0xc

    if-ge p2, v2, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Long;

    aput-object v4, v6, v0

    aput-object v5, v6, v1

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p2, v1

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method
