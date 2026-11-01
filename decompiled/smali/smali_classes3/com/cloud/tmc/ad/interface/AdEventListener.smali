.class public interface abstract Lcom/cloud/tmc/ad/interface/AdEventListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/ad/interface/AdEventListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H&J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H&\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/interface/AdEventListener;",
        "",
        "click",
        "",
        "triggerId",
        "",
        "pointBean",
        "Lcom/cloud/tmc/ad/bean/DownUpPointBean;",
        "admUrl",
        "clickHomePage",
        "clickPersonalization",
        "closeAd",
        "adClickBean",
        "Lcom/cloud/tmc/ad/bean/AdClickBean;",
        "fillingResult",
        "success",
        "",
        "showResult",
        "adShowBean",
        "Lcom/cloud/tmc/ad/bean/AdShowBean;",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract click(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/DownUpPointBean;Ljava/lang/String;)V
.end method

.method public abstract clickHomePage(Ljava/lang/String;)V
.end method

.method public abstract clickPersonalization(Ljava/lang/String;)V
.end method

.method public abstract closeAd(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/AdClickBean;)V
.end method

.method public abstract fillingResult(Ljava/lang/String;Z)V
.end method

.method public abstract showResult(Ljava/lang/String;ZLcom/cloud/tmc/ad/bean/AdShowBean;)V
.end method
