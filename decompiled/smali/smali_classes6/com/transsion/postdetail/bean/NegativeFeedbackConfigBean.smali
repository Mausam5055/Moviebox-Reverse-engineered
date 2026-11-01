.class public final Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\'\u0010\u000f\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;",
        "",
        "actions",
        "",
        "Lcom/transsion/postdetail/bean/NegativeFeedbackAction;",
        "reportConfig",
        "Lcom/transsion/postdetail/bean/ReportConfig;",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/postdetail/bean/ReportConfig;)V",
        "getActions",
        "()Ljava/util/List;",
        "getReportConfig",
        "()Lcom/transsion/postdetail/bean/ReportConfig;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "PostDetail_psRelease"
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
.field private final actions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/postdetail/bean/NegativeFeedbackAction;",
            ">;"
        }
    .end annotation
.end field

.field private final reportConfig:Lcom/transsion/postdetail/bean/ReportConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reportConfig"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;-><init>(Ljava/util/List;Lcom/transsion/postdetail/bean/ReportConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/transsion/postdetail/bean/ReportConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/postdetail/bean/NegativeFeedbackAction;",
            ">;",
            "Lcom/transsion/postdetail/bean/ReportConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->actions:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->reportConfig:Lcom/transsion/postdetail/bean/ReportConfig;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/postdetail/bean/ReportConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;-><init>(Ljava/util/List;Lcom/transsion/postdetail/bean/ReportConfig;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;Ljava/util/List;Lcom/transsion/postdetail/bean/ReportConfig;ILjava/lang/Object;)Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->actions:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->reportConfig:Lcom/transsion/postdetail/bean/ReportConfig;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->copy(Ljava/util/List;Lcom/transsion/postdetail/bean/ReportConfig;)Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/postdetail/bean/NegativeFeedbackAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->actions:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/transsion/postdetail/bean/ReportConfig;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->reportConfig:Lcom/transsion/postdetail/bean/ReportConfig;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/transsion/postdetail/bean/ReportConfig;)Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/postdetail/bean/NegativeFeedbackAction;",
            ">;",
            "Lcom/transsion/postdetail/bean/ReportConfig;",
            ")",
            "Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;

    invoke-direct {v0, p1, p2}, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;-><init>(Ljava/util/List;Lcom/transsion/postdetail/bean/ReportConfig;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;

    iget-object v1, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->actions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->reportConfig:Lcom/transsion/postdetail/bean/ReportConfig;

    iget-object p1, p1, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->reportConfig:Lcom/transsion/postdetail/bean/ReportConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/postdetail/bean/NegativeFeedbackAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->actions:Ljava/util/List;

    return-object v0
.end method

.method public final getReportConfig()Lcom/transsion/postdetail/bean/ReportConfig;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->reportConfig:Lcom/transsion/postdetail/bean/ReportConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->actions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->reportConfig:Lcom/transsion/postdetail/bean/ReportConfig;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/postdetail/bean/ReportConfig;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->actions:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->reportConfig:Lcom/transsion/postdetail/bean/ReportConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NegativeFeedbackConfigBean(actions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", reportConfig="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
