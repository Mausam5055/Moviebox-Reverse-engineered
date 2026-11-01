.class public final Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR\u001a\u0010\u0019\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0007\"\u0004\u0008\u001b\u0010\tR\u001a\u0010\u001c\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\r\"\u0004\u0008\u001e\u0010\u000fR\u001a\u0010\u001f\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\r\"\u0004\u0008!\u0010\u000f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "page",
        "",
        "getPage",
        "()Ljava/lang/String;",
        "setPage",
        "(Ljava/lang/String;)V",
        "perPage",
        "",
        "getPerPage",
        "()I",
        "setPerPage",
        "(I)V",
        "userPrefer",
        "getUserPrefer",
        "setUserPrefer",
        "deepLink",
        "getDeepLink",
        "setDeepLink",
        "sessionId",
        "getSessionId",
        "setSessionId",
        "postId",
        "getPostId",
        "setPostId",
        "tabId",
        "getTabId",
        "setTabId",
        "immersiveRecType",
        "getImmersiveRecType",
        "setImmersiveRecType",
        "shortTvLib_release"
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
.field private deepLink:Ljava/lang/String;

.field private immersiveRecType:I

.field private page:Ljava/lang/String;

.field private perPage:I

.field private postId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private tabId:I

.field private userPrefer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->page:Ljava/lang/String;

    const/4 v0, 0x6

    iput v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->perPage:I

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->userPrefer:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->deepLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->postId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->deepLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getImmersiveRecType()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->immersiveRecType:I

    return v0
.end method

.method public final getPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->page:Ljava/lang/String;

    return-object v0
.end method

.method public final getPerPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->perPage:I

    return v0
.end method

.method public final getPostId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTabId()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->tabId:I

    return v0
.end method

.method public final getUserPrefer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->userPrefer:Ljava/lang/String;

    return-object v0
.end method

.method public final setDeepLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->deepLink:Ljava/lang/String;

    return-void
.end method

.method public final setImmersiveRecType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->immersiveRecType:I

    return-void
.end method

.method public final setPage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->page:Ljava/lang/String;

    return-void
.end method

.method public final setPerPage(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->perPage:I

    return-void
.end method

.method public final setPostId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->postId:Ljava/lang/String;

    return-void
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public final setTabId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->tabId:I

    return-void
.end method

.method public final setUserPrefer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/bean/ImmVideoRequestEntity;->userPrefer:Ljava/lang/String;

    return-void
.end method
