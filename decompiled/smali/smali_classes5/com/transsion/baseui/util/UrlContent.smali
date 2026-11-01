.class public final Lcom/transsion/baseui/util/UrlContent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\nH\u00c6\u0003J=\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u00d6\u0003J\t\u0010)\u001a\u00020\nH\u00d6\u0001J\t\u0010*\u001a\u00020\u0007H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0008\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\"\u0004\u0008\u001a\u0010\u0018R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006+"
    }
    d2 = {
        "Lcom/transsion/baseui/util/UrlContent;",
        "Ljava/io/Serializable;",
        "clickableSpan",
        "Landroid/text/style/ClickableSpan;",
        "iconSpan",
        "Landroid/text/style/ImageSpan;",
        "originUrl",
        "",
        "url",
        "indexOfUrl",
        "",
        "<init>",
        "(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)V",
        "getClickableSpan",
        "()Landroid/text/style/ClickableSpan;",
        "setClickableSpan",
        "(Landroid/text/style/ClickableSpan;)V",
        "getIconSpan",
        "()Landroid/text/style/ImageSpan;",
        "setIconSpan",
        "(Landroid/text/style/ImageSpan;)V",
        "getOriginUrl",
        "()Ljava/lang/String;",
        "setOriginUrl",
        "(Ljava/lang/String;)V",
        "getUrl",
        "setUrl",
        "getIndexOfUrl",
        "()I",
        "setIndexOfUrl",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "BaseUI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private clickableSpan:Landroid/text/style/ClickableSpan;

.field private iconSpan:Landroid/text/style/ImageSpan;

.field private indexOfUrl:I

.field private originUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "clickableSpan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    iput-object p2, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    iput-object p3, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baseui/util/UrlContent;Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/transsion/baseui/util/UrlContent;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/baseui/util/UrlContent;->copy(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/baseui/util/UrlContent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/text/style/ClickableSpan;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    return-object v0
.end method

.method public final component2()Landroid/text/style/ImageSpan;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    return v0
.end method

.method public final copy(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/baseui/util/UrlContent;
    .locals 7

    const-string v0, "clickableSpan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/baseui/util/UrlContent;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/baseui/util/UrlContent;-><init>(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/baseui/util/UrlContent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/baseui/util/UrlContent;

    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    iget-object v3, p1, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    iget-object v3, p1, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    iget p1, p1, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getClickableSpan()Landroid/text/style/ClickableSpan;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    return-object v0
.end method

.method public final getIconSpan()Landroid/text/style/ImageSpan;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method public final getIndexOfUrl()I
    .locals 1

    iget v0, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    return v0
.end method

.method public final getOriginUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setClickableSpan(Landroid/text/style/ClickableSpan;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    return-void
.end method

.method public final setIconSpan(Landroid/text/style/ImageSpan;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    return-void
.end method

.method public final setIndexOfUrl(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    return-void
.end method

.method public final setOriginUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    iget-object v2, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    iget v4, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UrlContent(clickableSpan="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", iconSpan="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", originUrl="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", indexOfUrl="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
