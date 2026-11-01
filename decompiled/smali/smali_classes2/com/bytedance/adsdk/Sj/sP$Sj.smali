.class Lcom/bytedance/adsdk/Sj/sP$Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/TKC/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/Sj/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sj"
.end annotation


# instance fields
.field private Sj:Lcom/bytedance/adsdk/Sj/sP/Sj;

.field private sP:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP$Sj;->sP:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/adsdk/Sj/sP/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP$Sj;->Sj:Lcom/bytedance/adsdk/Sj/sP/Sj;

    return-void
.end method

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/Sj/sP$Sj;
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/Sj/sP$Sj;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/Sj/sP$Sj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public Sj(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP$Sj;->Sj:Lcom/bytedance/adsdk/Sj/sP/Sj;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/Sj/sP$Sj;->sP:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/Sj/sP/Sj;->Sj(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    instance-of v0, p1, Lcom/bytedance/adsdk/Sj/sP/Sj/Sj;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/bytedance/adsdk/Sj/sP/Sj/Sj;

    invoke-static {p1}, Lcom/bytedance/adsdk/Sj/Dq;->Sj(Lcom/bytedance/adsdk/Sj/sP/Sj/Sj;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
