.class public final Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;",
        "Ljava/io/Serializable;",
        "type",
        "",
        "<init>",
        "(I)V",
        "getType",
        "()I",
        "setType",
        "from",
        "getFrom",
        "setFrom",
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
.field private from:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;->type:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getFrom()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;->from:I

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;->type:I

    return v0
.end method

.method public final setFrom(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;->from:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;->type:I

    return-void
.end method
