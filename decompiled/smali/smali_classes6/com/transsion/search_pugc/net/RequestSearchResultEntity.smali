.class public final Lcom/transsion/search_pugc/net/RequestSearchResultEntity;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B)\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/search_pugc/net/RequestSearchResultEntity;",
        "",
        "page",
        "",
        "perPage",
        "keyword",
        "",
        "<init>",
        "(IILjava/lang/String;)V",
        "tabId",
        "(IILjava/lang/String;Ljava/lang/String;)V",
        "getPage",
        "()I",
        "setPage",
        "(I)V",
        "getPerPage",
        "setPerPage",
        "getTabId",
        "()Ljava/lang/String;",
        "setTabId",
        "(Ljava/lang/String;)V",
        "getKeyword",
        "setKeyword",
        "Search_psRelease"
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
.field private keyword:Ljava/lang/String;

.field private page:I

.field private perPage:I

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const-string v0, "keyword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->tabId:Ljava/lang/String;

    iput p1, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->page:I

    iput p2, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->perPage:I

    iput-object p3, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->keyword:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tabId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "keyword"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, ""

    iput-object p3, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->tabId:Ljava/lang/String;

    iput p1, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->page:I

    iput p2, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->perPage:I

    iput-object p4, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->keyword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public final getPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->page:I

    return v0
.end method

.method public final getPerPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->perPage:I

    return v0
.end method

.method public final getTabId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->keyword:Ljava/lang/String;

    return-void
.end method

.method public final setPage(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->page:I

    return-void
.end method

.method public final setPerPage(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->perPage:I

    return-void
.end method

.method public final setTabId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/search_pugc/net/RequestSearchResultEntity;->tabId:Ljava/lang/String;

    return-void
.end method
