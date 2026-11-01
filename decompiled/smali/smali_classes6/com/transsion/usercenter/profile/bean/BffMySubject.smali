.class public final Lcom/transsion/usercenter/profile/bean/BffMySubject;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u00c6\u0003J8\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\r\u0010\u000bR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/usercenter/profile/bean/BffMySubject;",
        "",
        "wantToSeeCount",
        "",
        "haveSeenCount",
        "wantSubjects",
        "",
        "Lcom/transsion/usercenter/profile/bean/BffCoverItem;",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V",
        "getWantToSeeCount",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getHaveSeenCount",
        "getWantSubjects",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/transsion/usercenter/profile/bean/BffMySubject;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final haveSeenCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "haveSeenCount"
    .end annotation
.end field

.field private final wantSubjects:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wantSubjects"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/profile/bean/BffCoverItem;",
            ">;"
        }
    .end annotation
.end field

.field private final wantToSeeCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wantToSeeCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/profile/bean/BffCoverItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantToSeeCount:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->haveSeenCount:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantSubjects:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/usercenter/profile/bean/BffMySubject;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/usercenter/profile/bean/BffMySubject;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantToSeeCount:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->haveSeenCount:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantSubjects:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/profile/bean/BffMySubject;->copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/transsion/usercenter/profile/bean/BffMySubject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantToSeeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->haveSeenCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/profile/bean/BffCoverItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantSubjects:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/transsion/usercenter/profile/bean/BffMySubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/profile/bean/BffCoverItem;",
            ">;)",
            "Lcom/transsion/usercenter/profile/bean/BffMySubject;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/usercenter/profile/bean/BffMySubject;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/usercenter/profile/bean/BffMySubject;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/usercenter/profile/bean/BffMySubject;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/usercenter/profile/bean/BffMySubject;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantToSeeCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantToSeeCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->haveSeenCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/usercenter/profile/bean/BffMySubject;->haveSeenCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantSubjects:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantSubjects:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getHaveSeenCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->haveSeenCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWantSubjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/usercenter/profile/bean/BffCoverItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantSubjects:Ljava/util/List;

    return-object v0
.end method

.method public final getWantToSeeCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantToSeeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantToSeeCount:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->haveSeenCount:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantSubjects:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantToSeeCount:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->haveSeenCount:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/transsion/usercenter/profile/bean/BffMySubject;->wantSubjects:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BffMySubject(wantToSeeCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", haveSeenCount="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", wantSubjects="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
