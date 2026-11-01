.class public interface abstract Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreloadCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u001a\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;",
        "",
        "onPageFailed",
        "",
        "errorCode",
        "",
        "onPageStart",
        "onProgressChanged",
        "newProcess",
        "onReceivedTitle",
        "title",
        "",
        "shouldOverrideUrlLoading",
        "url",
        "hasGesture",
        "",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onPageFailed(I)V
.end method

.method public abstract onPageStart()V
.end method

.method public abstract onProgressChanged(I)V
.end method

.method public abstract onReceivedTitle(Ljava/lang/String;)V
.end method

.method public abstract shouldOverrideUrlLoading(Ljava/lang/String;Z)V
.end method
