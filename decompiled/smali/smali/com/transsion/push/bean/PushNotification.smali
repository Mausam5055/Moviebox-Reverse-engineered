.class public Lcom/transsion/push/bean/PushNotification;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/bean/PushNotification$Builder;
    }
.end annotation


# instance fields
.field private btnId:I

.field private channelId:Ljava/lang/String;

.field private contentBigId:I

.field private contentId:I

.field private iconColor:Ljava/lang/String;

.field private iconId:I

.field private imgBigId:I

.field private layoutId:I

.field private showDefaultLargeIcon:Z

.field private smallIcon:I

.field private styleId:I

.field private titleId:I

.field private type:I


# direct methods
.method private constructor <init>(Lcom/transsion/push/bean/PushNotification$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/transsion/push/bean/PushNotification;->checkParam(Lcom/transsion/push/bean/PushNotification$Builder;)V

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$000(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->styleId:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$100(Lcom/transsion/push/bean/PushNotification$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushNotification;->channelId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$200(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->type:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$300(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->smallIcon:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$400(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->layoutId:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$500(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->iconId:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$600(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->titleId:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$700(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->contentId:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$800(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->btnId:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$900(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->imgBigId:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$1000(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->contentBigId:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$1100(Lcom/transsion/push/bean/PushNotification$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/push/bean/PushNotification;->showDefaultLargeIcon:Z

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$1200(Lcom/transsion/push/bean/PushNotification$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/push/bean/PushNotification;->iconColor:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/push/bean/PushNotification$Builder;Lcom/transsion/push/bean/PushNotification$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/push/bean/PushNotification;-><init>(Lcom/transsion/push/bean/PushNotification$Builder;)V

    return-void
.end method

.method private checkParam(Lcom/transsion/push/bean/PushNotification$Builder;)V
    .locals 1

    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$300(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result p1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "smallIcon must set values"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBtnId()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->btnId:I

    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/bean/PushNotification;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentBigId()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->contentBigId:I

    return v0
.end method

.method public getContentId()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->contentId:I

    return v0
.end method

.method public getIconColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/bean/PushNotification;->iconColor:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->iconId:I

    return v0
.end method

.method public getImgBigId()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->imgBigId:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->layoutId:I

    return v0
.end method

.method public getShowDefaultLargeIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/push/bean/PushNotification;->showDefaultLargeIcon:Z

    return v0
.end method

.method public getSmallIcon()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->smallIcon:I

    return v0
.end method

.method public getStyleId()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->styleId:I

    return v0
.end method

.method public getTitleId()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->titleId:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->type:I

    return v0
.end method
