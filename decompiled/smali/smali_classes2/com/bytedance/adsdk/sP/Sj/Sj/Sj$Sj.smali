.class final Lcom/bytedance/adsdk/sP/Sj/Sj/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/Sj/Sj/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sj"
.end annotation


# instance fields
.field private final Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Lcom/bytedance/adsdk/sP/Sj/Sj/dx;


# direct methods
.method private constructor <init>(Lcom/bytedance/adsdk/sP/Sj/Sj/dx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj$Sj;->Sj:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj$Sj;->sP:Lcom/bytedance/adsdk/sP/Sj/Sj/dx;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/adsdk/sP/Sj/Sj/dx;Lcom/bytedance/adsdk/sP/Sj/Sj/Sj$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj$Sj;-><init>(Lcom/bytedance/adsdk/sP/Sj/Sj/dx;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/sP/Sj/Sj/Sj$Sj;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj$Sj;->Sj:Ljava/util/List;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/adsdk/sP/Sj/Sj/Sj$Sj;)Lcom/bytedance/adsdk/sP/Sj/Sj/dx;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj$Sj;->sP:Lcom/bytedance/adsdk/sP/Sj/Sj/dx;

    return-object p0
.end method
