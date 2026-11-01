.class public abstract Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj$Sj;
    }
.end annotation


# instance fields
.field protected Sj:Lorg/json/JSONObject;

.field private TKC:Ljava/lang/String;

.field protected sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->Sj:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->Sj()V

    return-void
.end method


# virtual methods
.method public EjP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->Sj:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->TKC:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP()V

    return-void
.end method

.method public abstract Sj(II)V
.end method

.method public abstract Sj(Landroid/graphics/Canvas;)V
.end method

.method public abstract TKC()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sP()V
.end method

.method public abstract sP(Landroid/graphics/Canvas;)V
.end method
