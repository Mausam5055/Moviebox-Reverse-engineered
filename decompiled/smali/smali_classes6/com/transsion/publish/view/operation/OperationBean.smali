.class public final Lcom/transsion/publish/view/operation/OperationBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/publish/view/operation/OperationBean;",
        "Ljava/io/Serializable;",
        "type",
        "",
        "enable",
        "disable",
        "<init>",
        "(III)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getEnable",
        "setEnable",
        "getDisable",
        "setDisable",
        "status",
        "",
        "getStatus",
        "()Z",
        "setStatus",
        "(Z)V",
        "Publish_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private disable:I

.field private enable:I

.field private status:Z

.field private type:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/publish/view/operation/OperationBean;->status:Z

    iput p1, p0, Lcom/transsion/publish/view/operation/OperationBean;->type:I

    iput p2, p0, Lcom/transsion/publish/view/operation/OperationBean;->enable:I

    iput p3, p0, Lcom/transsion/publish/view/operation/OperationBean;->disable:I

    return-void
.end method


# virtual methods
.method public final getDisable()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/view/operation/OperationBean;->disable:I

    return v0
.end method

.method public final getEnable()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/view/operation/OperationBean;->enable:I

    return v0
.end method

.method public final getStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/publish/view/operation/OperationBean;->status:Z

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/view/operation/OperationBean;->type:I

    return v0
.end method

.method public final setDisable(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/view/operation/OperationBean;->disable:I

    return-void
.end method

.method public final setEnable(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/view/operation/OperationBean;->enable:I

    return-void
.end method

.method public final setStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/publish/view/operation/OperationBean;->status:Z

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/view/operation/OperationBean;->type:I

    return-void
.end method
