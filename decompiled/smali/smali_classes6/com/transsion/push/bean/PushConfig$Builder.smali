.class public Lcom/transsion/push/bean/PushConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/bean/PushConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private checkInterval:I

.field private closeJobService:Z

.field private groupId:Ljava/lang/String;

.field private maxNotificationCount:I

.field private mobileUploadInterval:I

.field private uploadInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/push/bean/PushConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/push/bean/PushConfig$Builder;->closeJobService:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/push/bean/PushConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/transsion/push/bean/PushConfig$Builder;->checkInterval:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/push/bean/PushConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/transsion/push/bean/PushConfig$Builder;->uploadInterval:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/push/bean/PushConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/transsion/push/bean/PushConfig$Builder;->mobileUploadInterval:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/push/bean/PushConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/push/bean/PushConfig$Builder;->groupId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/push/bean/PushConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/transsion/push/bean/PushConfig$Builder;->maxNotificationCount:I

    return p0
.end method


# virtual methods
.method public build()Lcom/transsion/push/bean/PushConfig;
    .locals 2

    new-instance v0, Lcom/transsion/push/bean/PushConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/push/bean/PushConfig;-><init>(Lcom/transsion/push/bean/PushConfig$Builder;Lcom/transsion/push/bean/PushConfig$1;)V

    return-object v0
.end method

.method public setCheckInterval(I)Lcom/transsion/push/bean/PushConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/push/bean/PushConfig$Builder;->checkInterval:I

    return-object p0
.end method

.method public setCloseJobService(Z)Lcom/transsion/push/bean/PushConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/push/bean/PushConfig$Builder;->closeJobService:Z

    return-object p0
.end method

.method public setGroupId(Ljava/lang/String;)Lcom/transsion/push/bean/PushConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/bean/PushConfig$Builder;->groupId:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxNotificationCount(I)Lcom/transsion/push/bean/PushConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/push/bean/PushConfig$Builder;->maxNotificationCount:I

    return-object p0
.end method

.method public setMobileUploadInterval(I)Lcom/transsion/push/bean/PushConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/push/bean/PushConfig$Builder;->mobileUploadInterval:I

    return-object p0
.end method

.method public setUploadInterval(I)Lcom/transsion/push/bean/PushConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/push/bean/PushConfig$Builder;->uploadInterval:I

    return-object p0
.end method
