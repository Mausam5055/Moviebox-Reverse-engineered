.class public abstract Lcom/hisavana/common/interfacz/TAdListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onClicked(I)V
.end method

.method public abstract onClosed(I)V
.end method

.method public onClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 0
    .param p1    # Lcom/hisavana/common/bean/TAdNativeInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public abstract onError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .param p1    # Lcom/hisavana/common/bean/TAdErrorCode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public onLoad()V
    .locals 0

    return-void
.end method

.method public onNativeFeedClicked(ILcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 0
    .param p2    # Lcom/hisavana/common/bean/TAdNativeInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 0
    .param p2    # Lcom/hisavana/common/bean/TAdNativeInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onRewarded()V
    .locals 0

    return-void
.end method

.method public abstract onShow(I)V
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0
    .param p1    # Lcom/hisavana/common/bean/TAdErrorCode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
