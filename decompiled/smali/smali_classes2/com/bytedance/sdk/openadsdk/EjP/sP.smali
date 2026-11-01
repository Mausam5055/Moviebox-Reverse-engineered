.class public Lcom/bytedance/sdk/openadsdk/EjP/sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/EjP/sP$sP;,
        Lcom/bytedance/sdk/openadsdk/EjP/sP$Sj;
    }
.end annotation


# static fields
.field public static final EjP:Ljava/lang/String;

.field public static final HiB:Ljava/lang/String;

.field public static final Jcg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Sj:Ljava/lang/String;

.field public static final TKC:Ljava/lang/String;

.field public static final sP:Ljava/lang/String;

.field public static final vS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->Sj:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->Sj:Ljava/lang/String;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->sP:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->sP:Ljava/lang/String;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->TKC:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->TKC:Ljava/lang/String;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->EjP:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->EjP:Ljava/lang/String;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->HiB:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->HiB:Ljava/lang/String;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->vS:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->vS:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "show"

    const-string v2, "insight_log"

    const-string v3, "click"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP;->Jcg:Ljava/util/Set;

    return-void
.end method

.method public static Sj(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "embeded_ad"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "banner_ad"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "interaction"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "slide_banner_ad"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
