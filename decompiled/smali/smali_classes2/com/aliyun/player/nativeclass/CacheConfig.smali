.class public Lcom/aliyun/player/nativeclass/CacheConfig;
.super Ljava/lang/Object;


# instance fields
.field public mDir:Ljava/lang/String;

.field public mEnable:Z

.field public mMaxDurationS:J

.field public mMaxSizeMB:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/CacheConfig;->mEnable:Z

    return-void
.end method
