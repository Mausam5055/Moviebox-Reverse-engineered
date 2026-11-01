.class public abstract Lcom/hisavana/common/interfacz/TInnerAdListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdActivate(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 0
    .param p1    # Lcom/hisavana/common/bean/AdditionalInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onClicked(I)V
    .locals 0

    return-void
.end method

.method public onClosed(I)V
    .locals 0

    return-void
.end method

.method public onClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 0
    .param p1    # Lcom/hisavana/common/bean/TAdNativeInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0
    .param p1    # Lcom/hisavana/common/bean/TAdErrorCode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onLoad()V
    .locals 0

    return-void
.end method

.method public onNativeFeedClicked(ILcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 0
    .param p2    # Lcom/hisavana/common/bean/TAdNativeInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/hisavana/common/bean/AdditionalInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 0
    .param p2    # Lcom/hisavana/common/bean/TAdNativeInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/hisavana/common/bean/AdditionalInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onRewarded()V
    .locals 0

    return-void
.end method

.method public onShow(I)V
    .locals 0

    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0
    .param p1    # Lcom/hisavana/common/bean/TAdErrorCode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onShowed(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 0
    .param p1    # Lcom/hisavana/common/bean/AdditionalInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSkipClick()V
    .locals 0

    return-void
.end method

.method public onTimeReach()V
    .locals 0

    return-void
.end method
