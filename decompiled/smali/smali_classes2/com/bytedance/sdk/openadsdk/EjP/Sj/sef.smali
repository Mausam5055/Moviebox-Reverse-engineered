.class public Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;
    }
.end annotation


# static fields
.field public static Sj:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;


# instance fields
.field private volatile EjP:Z

.field private final TKC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->TKC:Ljava/util/Map;

    return-void
.end method

.method private TKC()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;->sP()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method private sP()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;->Sj()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->Sj()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->TKC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->sP()I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;->Sj()I

    move-result p1

    return p1
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;

    return-void
.end method

.method public Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->TKC:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->EjP:Z

    return-void
.end method

.method public Sj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->EjP:Z

    return v0
.end method

.method public sP(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->TKC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->TKC()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef$Sj;->sP()I

    move-result p1

    return p1
.end method
