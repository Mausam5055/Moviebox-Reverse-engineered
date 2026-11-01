.class public final Lcom/cloud/tmc/ad/bean/response/ViewJson;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;,
        Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u001c\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0004\u0018\u00010\n8FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/bean/response/ViewJson;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "()V",
        "dialogJson",
        "Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;",
        "getDialogJson",
        "()Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;",
        "setDialogJson",
        "(Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;)V",
        "dialogType",
        "",
        "getDialogType",
        "()Ljava/lang/Integer;",
        "setDialogType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "formPath",
        "",
        "getFormPath",
        "()Ljava/lang/String;",
        "setFormPath",
        "(Ljava/lang/String;)V",
        "offline",
        "Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;",
        "getOffline",
        "()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;",
        "setOffline",
        "(Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;)V",
        "DialogJson",
        "OfflineJson",
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


# instance fields
.field private dialogJson:Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;

.field private dialogType:Ljava/lang/Integer;

.field private formPath:Ljava/lang/String;

.field private offline:Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDialogJson()Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/ViewJson;->dialogJson:Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;

    return-object v0
.end method

.method public final getDialogType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getFormPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/ViewJson;->formPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getOffline()Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/ViewJson;->offline:Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    return-object v0
.end method

.method public final setDialogJson(Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/ViewJson;->dialogJson:Lcom/cloud/tmc/ad/bean/response/ViewJson$DialogJson;

    return-void
.end method

.method public final setDialogType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/ViewJson;->dialogType:Ljava/lang/Integer;

    return-void
.end method

.method public final setFormPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/ViewJson;->formPath:Ljava/lang/String;

    return-void
.end method

.method public final setOffline(Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/ViewJson;->offline:Lcom/cloud/tmc/ad/bean/response/ViewJson$OfflineJson;

    return-void
.end method
