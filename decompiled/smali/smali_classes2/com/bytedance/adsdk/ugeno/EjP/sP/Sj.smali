.class public abstract Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj$Sj;
    }
.end annotation


# static fields
.field public static final Sj:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected EjP:Ljava/lang/String;

.field protected HiB:Ljava/lang/String;

.field protected Jcg:Ljava/lang/String;

.field protected TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field protected sP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

.field protected vS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Ljava/util/HashSet;

    const-string v12, "muteVideo"

    const-string v13, "preventEvent"

    const-string v1, "convert"

    const-string v2, "dislike"

    const-string v3, "openAppPermission"

    const-string v4, "openAppPolicy"

    const-string v5, "openPrivacy"

    const-string v6, "openAppFunction"

    const-string v7, "close"

    const-string v8, "skip"

    const-string v9, "videoControl"

    const-string v10, "pauseVideo"

    const-string v11, "resumeVideo"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->Sj:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->sP()V

    return-void
.end method

.method private sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->Sj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->EjP:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->sP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->HiB:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->TKC()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->vS:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract Sj()V
.end method
