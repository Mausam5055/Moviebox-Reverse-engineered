.class public final Lcom/transsion/mbwidget/data/WidgetRequestBody;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/mbwidget/data/WidgetRequestBody;",
        "Ljava/io/Serializable;",
        "hotListCnt",
        "",
        "userInterestsCnt",
        "<init>",
        "(II)V",
        "getHotListCnt",
        "()I",
        "getUserInterestsCnt",
        "DeskWidget_psRelease"
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
.field private final hotListCnt:I

.field private final userInterestsCnt:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/transsion/mbwidget/data/WidgetRequestBody;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/mbwidget/data/WidgetRequestBody;->hotListCnt:I

    iput p2, p0, Lcom/transsion/mbwidget/data/WidgetRequestBody;->userInterestsCnt:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/16 p2, 0x8

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/mbwidget/data/WidgetRequestBody;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getHotListCnt()I
    .locals 1

    iget v0, p0, Lcom/transsion/mbwidget/data/WidgetRequestBody;->hotListCnt:I

    return v0
.end method

.method public final getUserInterestsCnt()I
    .locals 1

    iget v0, p0, Lcom/transsion/mbwidget/data/WidgetRequestBody;->userInterestsCnt:I

    return v0
.end method
