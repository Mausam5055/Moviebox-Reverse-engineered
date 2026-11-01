.class public final Lcom/transsion/share/bean/ShareBean;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001e\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001e\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR \u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/share/bean/ShareBean;",
        "",
        "<init>",
        "()V",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "desc",
        "getDesc",
        "setDesc",
        "downUrl",
        "getDownUrl",
        "setDownUrl",
        "coverUrl",
        "getCoverUrl",
        "setCoverUrl",
        "shortUrl",
        "getShortUrl",
        "setShortUrl",
        "shareType",
        "Lcom/transsion/share/bean/ShareType;",
        "getShareType",
        "()Lcom/transsion/share/bean/ShareType;",
        "setShareType",
        "(Lcom/transsion/share/bean/ShareType;)V",
        "ShareLib_psRelease"
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
.field private coverUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coverUrl"
    .end annotation
.end field

.field private desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "desc"
    .end annotation
.end field

.field private downUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downUrl"
    .end annotation
.end field

.field private shareType:Lcom/transsion/share/bean/ShareType;

.field private shortUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/share/bean/ShareBean;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/share/bean/ShareBean;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/share/bean/ShareBean;->downUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/share/bean/ShareBean;->coverUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCoverUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/share/bean/ShareBean;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/share/bean/ShareBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/share/bean/ShareBean;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareType()Lcom/transsion/share/bean/ShareType;
    .locals 1

    iget-object v0, p0, Lcom/transsion/share/bean/ShareBean;->shareType:Lcom/transsion/share/bean/ShareType;

    return-object v0
.end method

.method public final getShortUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/share/bean/ShareBean;->shortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/share/bean/ShareBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setCoverUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/share/bean/ShareBean;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/share/bean/ShareBean;->desc:Ljava/lang/String;

    return-void
.end method

.method public final setDownUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/share/bean/ShareBean;->downUrl:Ljava/lang/String;

    return-void
.end method

.method public final setShareType(Lcom/transsion/share/bean/ShareType;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/share/bean/ShareBean;->shareType:Lcom/transsion/share/bean/ShareType;

    return-void
.end method

.method public final setShortUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/share/bean/ShareBean;->shortUrl:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/share/bean/ShareBean;->title:Ljava/lang/String;

    return-void
.end method
