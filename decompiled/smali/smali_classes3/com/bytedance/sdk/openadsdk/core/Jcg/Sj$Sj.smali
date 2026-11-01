.class Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sj"
.end annotation


# instance fields
.field private final Sj:J

.field private final sP:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj$Sj;->Sj:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj$Sj;->sP:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj$Sj;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj$Sj;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj$Sj;->Sj:J

    return-wide v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg/Sj$Sj;->sP:Ljava/lang/String;

    return-object p0
.end method
