.class public Lcom/bykv/vk/openvk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/model/CheckRequestBodyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetChannel"
.end annotation


# instance fields
.field public channelName:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "c"
    .end annotation
.end field

.field public targetVersion:Ljava/lang/Long;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "t_v"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;->channelName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;->channelName:Ljava/lang/String;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;->targetVersion:Ljava/lang/Long;

    return-void
.end method
