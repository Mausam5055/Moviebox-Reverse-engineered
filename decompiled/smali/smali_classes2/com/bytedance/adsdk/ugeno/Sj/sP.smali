.class public Lcom/bytedance/adsdk/ugeno/Sj/sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;
    }
.end annotation


# instance fields
.field private Dq:Lorg/json/JSONObject;

.field private EjP:Ljava/lang/String;

.field private HiB:J

.field private Jcg:Ljava/lang/String;

.field private Sj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private TKC:I

.field private sP:J

.field private vS:Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->Jcg:Ljava/lang/String;

    return-object v0
.end method

.method public EjP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->TKC:I

    return v0
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public Jcg()Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->vS:Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;

    return-object v0
.end method

.method public Sj()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->Dq:Lorg/json/JSONObject;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->TKC:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->sP:J

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->vS:Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->EjP:Ljava/lang/String;

    return-void
.end method

.method public Sj(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->Sj:Ljava/util/Map;

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->Dq:Lorg/json/JSONObject;

    return-void
.end method

.method public TKC()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->sP:J

    return-wide v0
.end method

.method public sP()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->Sj:Ljava/util/Map;

    return-object v0
.end method

.method public sP(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->HiB:J

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->Jcg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationModel{mKeyFramesMap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->Sj:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->sP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPlayCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->TKC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPlayDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->EjP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->HiB:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTransformOrigin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->vS:Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTimingFunction=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->Jcg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vS()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP;->HiB:J

    return-wide v0
.end method
