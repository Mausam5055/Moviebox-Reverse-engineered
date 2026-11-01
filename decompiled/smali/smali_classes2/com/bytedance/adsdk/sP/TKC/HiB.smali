.class public Lcom/bytedance/adsdk/sP/TKC/HiB;
.super Ljava/lang/Object;


# static fields
.field private static final Sj:Lcom/bytedance/adsdk/sP/TKC/HiB;


# instance fields
.field private final sP:Lcom/bytedance/adsdk/sP/sef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/sef<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/HiB;

    invoke-direct {v0}, Lcom/bytedance/adsdk/sP/TKC/HiB;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/sP/TKC/HiB;->Sj:Lcom/bytedance/adsdk/sP/TKC/HiB;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/adsdk/sP/sef;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/sef;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/HiB;->sP:Lcom/bytedance/adsdk/sP/sef;

    return-void
.end method

.method public static Sj()Lcom/bytedance/adsdk/sP/TKC/HiB;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/sP/TKC/HiB;->Sj:Lcom/bytedance/adsdk/sP/TKC/HiB;

    return-object v0
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Jcg;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/HiB;->sP:Lcom/bytedance/adsdk/sP/sef;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/sef;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/sP/Jcg;

    return-object p1
.end method

.method public Sj(Ljava/lang/String;Lcom/bytedance/adsdk/sP/Jcg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/HiB;->sP:Lcom/bytedance/adsdk/sP/sef;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/sP/sef;->Sj(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
