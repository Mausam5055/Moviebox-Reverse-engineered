.class public final Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003JC\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020\u00032\u0008\u0010 \u001a\u0004\u0018\u00010!H\u00d6\u0003J\t\u0010\"\u001a\u00020#H\u00d6\u0001J\t\u0010$\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010\"\u0004\u0008\u0014\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010\"\u0004\u0008\u0016\u0010\u0012R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010\"\u0004\u0008\u0018\u0010\u0012\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;",
        "Ljava/io/Serializable;",
        "noticeEnable",
        "",
        "noticeContent",
        "",
        "bottomContent",
        "noticeDeepLink",
        "link",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getNoticeEnable",
        "()Z",
        "setNoticeEnable",
        "(Z)V",
        "getNoticeContent",
        "()Ljava/lang/String;",
        "setNoticeContent",
        "(Ljava/lang/String;)V",
        "getBottomContent",
        "setBottomContent",
        "getNoticeDeepLink",
        "setNoticeDeepLink",
        "getLink",
        "setLink",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "UserCenter_psRelease"
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
.field private bottomContent:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private noticeContent:Ljava/lang/String;

.field private noticeDeepLink:Ljava/lang/String;

.field private noticeEnable:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeEnable:Z

    iput-object p2, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->bottomContent:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeDeepLink:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->link:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeEnable:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeContent:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->bottomContent:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeDeepLink:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->link:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->copy(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeEnable:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeContent:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->bottomContent:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeDeepLink:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;
    .locals 7

    new-instance v6, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    iget-boolean v1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeEnable:Z

    iget-boolean v3, p1, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeEnable:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeContent:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeContent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->bottomContent:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->bottomContent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeDeepLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeDeepLink:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->link:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->link:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBottomContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->bottomContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getNoticeContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getNoticeDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeDeepLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getNoticeEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeEnable:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeEnable:Z

    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeContent:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->bottomContent:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeDeepLink:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->link:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final setBottomContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->bottomContent:Ljava/lang/String;

    return-void
.end method

.method public final setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->link:Ljava/lang/String;

    return-void
.end method

.method public final setNoticeContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeContent:Ljava/lang/String;

    return-void
.end method

.method public final setNoticeDeepLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeDeepLink:Ljava/lang/String;

    return-void
.end method

.method public final setNoticeEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeEnable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeEnable:Z

    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->bottomContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->noticeDeepLink:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->link:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MineNoticeConfig(noticeEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", noticeContent="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bottomContent="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", noticeDeepLink="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", link="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
