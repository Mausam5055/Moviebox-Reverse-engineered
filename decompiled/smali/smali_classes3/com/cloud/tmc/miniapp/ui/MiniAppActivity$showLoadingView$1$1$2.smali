.class final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showLoadingView$1$1$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingView(Lcom/cloud/tmc/integration/model/EntryInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $it:Lcom/cloud/tmc/integration/model/EntryInfo;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/model/EntryInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showLoadingView$1$1$2;->$it:Lcom/cloud/tmc/integration/model/EntryInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showLoadingView$1$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showLoadingView$1$1$2;->$it:Lcom/cloud/tmc/integration/model/EntryInfo;

    iget-object v1, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->appId:Ljava/lang/String;

    iget-object v2, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->iconUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/cloud/tmc/integration/model/EntryInfo;->desc:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/EntryInfo;->getClassificationNames()Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showLoadingView$1$1$2;->$it:Lcom/cloud/tmc/integration/model/EntryInfo;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/EntryInfo;->getExclusiveLogoUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->addAppUse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)Z

    return-void
.end method
