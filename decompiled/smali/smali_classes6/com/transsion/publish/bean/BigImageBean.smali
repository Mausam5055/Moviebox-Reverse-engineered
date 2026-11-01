.class public final Lcom/transsion/publish/bean/BigImageBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/publish/bean/BigImageBean;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "from",
        "",
        "getFrom",
        "()Ljava/lang/Integer;",
        "setFrom",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "operator",
        "getOperator",
        "setOperator",
        "select",
        "",
        "Lcom/transsion/publish/api/PhotoEntity;",
        "getSelect",
        "()Ljava/util/List;",
        "setSelect",
        "(Ljava/util/List;)V",
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
.field private from:Ljava/lang/Integer;

.field private operator:Ljava/lang/Integer;

.field private select:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/PhotoEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/publish/bean/BigImageBean;->from:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/transsion/publish/bean/BigImageBean;->operator:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getFrom()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/BigImageBean;->from:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOperator()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/BigImageBean;->operator:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSelect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/PhotoEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/publish/bean/BigImageBean;->select:Ljava/util/List;

    return-object v0
.end method

.method public final setFrom(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/BigImageBean;->from:Ljava/lang/Integer;

    return-void
.end method

.method public final setOperator(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/bean/BigImageBean;->operator:Ljava/lang/Integer;

    return-void
.end method

.method public final setSelect(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/publish/api/PhotoEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/publish/bean/BigImageBean;->select:Ljava/util/List;

    return-void
.end method
