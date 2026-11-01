.class public final Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataDTO"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;",
        "Ljava/io/Serializable;",
        "()V",
        "gpLinkList",
        "",
        "",
        "getGpLinkList",
        "()Ljava/util/List;",
        "setGpLinkList",
        "(Ljava/util/List;)V",
        "psLinkList",
        "Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;",
        "getPsLinkList",
        "setPsLinkList",
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
.field private gpLinkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private psLinkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGpLinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;->gpLinkList:Ljava/util/List;

    return-object v0
.end method

.method public final getPsLinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;->psLinkList:Ljava/util/List;

    return-object v0
.end method

.method public final setGpLinkList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;->gpLinkList:Ljava/util/List;

    return-void
.end method

.method public final setPsLinkList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;->psLinkList:Ljava/util/List;

    return-void
.end method
