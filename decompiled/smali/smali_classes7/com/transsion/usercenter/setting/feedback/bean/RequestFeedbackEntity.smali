.class public final Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0007\"\u0004\u0008\u001b\u0010\tR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0007\"\u0004\u0008\u001e\u0010\tR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0007\"\u0004\u0008!\u0010\tR\u001c\u0010\"\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0007\"\u0004\u0008$\u0010\t\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "uid",
        "",
        "getUid",
        "()Ljava/lang/String;",
        "setUid",
        "(Ljava/lang/String;)V",
        "content",
        "getContent",
        "setContent",
        "imageUrl",
        "",
        "getImageUrl",
        "()Ljava/util/List;",
        "setImageUrl",
        "(Ljava/util/List;)V",
        "email",
        "getEmail",
        "setEmail",
        "whatsApp",
        "getWhatsApp",
        "setWhatsApp",
        "pageName",
        "getPageName",
        "setPageName",
        "subjectId",
        "getSubjectId",
        "setSubjectId",
        "logId",
        "getLogId",
        "setLogId",
        "tempBucket",
        "getTempBucket",
        "setTempBucket",
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
.field private content:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private imageUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logId:Ljava/lang/String;

.field private pageName:Ljava/lang/String;

.field private subjectId:Ljava/lang/String;

.field private tempBucket:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private whatsApp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->imageUrl:Ljava/util/List;

    return-object v0
.end method

.method public final getLogId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->logId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTempBucket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->tempBucket:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final getWhatsApp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->whatsApp:Ljava/lang/String;

    return-object v0
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->email:Ljava/lang/String;

    return-void
.end method

.method public final setImageUrl(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->imageUrl:Ljava/util/List;

    return-void
.end method

.method public final setLogId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->logId:Ljava/lang/String;

    return-void
.end method

.method public final setPageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->pageName:Ljava/lang/String;

    return-void
.end method

.method public final setSubjectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->subjectId:Ljava/lang/String;

    return-void
.end method

.method public final setTempBucket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->tempBucket:Ljava/lang/String;

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->uid:Ljava/lang/String;

    return-void
.end method

.method public final setWhatsApp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/bean/RequestFeedbackEntity;->whatsApp:Ljava/lang/String;

    return-void
.end method
