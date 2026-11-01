.class public final Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J&\u0010\u0010\u001a\u00020\u00002\u001e\u0010\u0005\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0006j\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0005\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0006j\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;",
        "",
        "()V",
        "description",
        "",
        "keywords",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "parentUrl",
        "query",
        "title",
        "url",
        "webPageName",
        "build",
        "Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;",
        "setDescription",
        "setKeywords",
        "setParentUrl",
        "setQuery",
        "setTitle",
        "setUrl",
        "setWebPageName",
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


# instance fields
.field private description:Ljava/lang/String;

.field private keywords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parentUrl:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webPageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;-><init>()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;->setUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->parentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;->setParentUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;->setDescription(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->keywords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;->setKeywords(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;->setQuery(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->webPageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;->setWebPageName(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setKeywords(Ljava/util/ArrayList;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->keywords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final setParentUrl(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->parentUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setQuery(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final setUrl(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final setWebPageName(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;->webPageName:Ljava/lang/String;

    return-object p0
.end method
