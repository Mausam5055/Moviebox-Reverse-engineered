.class public Lcom/transsion/push/bean/PushConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/bean/PushConfig$Builder;
    }
.end annotation


# instance fields
.field private checkInterval:I

.field private closeJobService:Z

.field private groupId:Ljava/lang/String;

.field private maxNotificationCount:I

.field private mobileUploadInterval:I

.field private uploadInterval:I


# direct methods
.method private constructor <init>(Lcom/transsion/push/bean/PushConfig$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/transsion/push/bean/PushConfig$Builder;->access$000(Lcom/transsion/push/bean/PushConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/push/bean/PushConfig;->closeJobService:Z

    invoke-static {p1}, Lcom/transsion/push/bean/PushConfig$Builder;->access$100(Lcom/transsion/push/bean/PushConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushConfig;->checkInterval:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushConfig$Builder;->access$200(Lcom/transsion/push/bean/PushConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushConfig;->uploadInterval:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushConfig$Builder;->access$300(Lcom/transsion/push/bean/PushConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushConfig;->mobileUploadInterval:I

    invoke-static {p1}, Lcom/transsion/push/bean/PushConfig$Builder;->access$400(Lcom/transsion/push/bean/PushConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushConfig;->groupId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/push/bean/PushConfig$Builder;->access$500(Lcom/transsion/push/bean/PushConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/transsion/push/bean/PushConfig;->maxNotificationCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/push/bean/PushConfig$Builder;Lcom/transsion/push/bean/PushConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/push/bean/PushConfig;-><init>(Lcom/transsion/push/bean/PushConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getCheckInterval()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushConfig;->checkInterval:I

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/bean/PushConfig;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxNotificationCount()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushConfig;->maxNotificationCount:I

    return v0
.end method

.method public getMobileUploadInterval()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushConfig;->mobileUploadInterval:I

    return v0
.end method

.method public getUploadInterval()I
    .locals 1

    iget v0, p0, Lcom/transsion/push/bean/PushConfig;->uploadInterval:I

    return v0
.end method

.method public isCloseJobService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/push/bean/PushConfig;->closeJobService:Z

    return v0
.end method
