.class public Lcom/bytedance/sdk/component/Jcg/sP;
.super Ljava/lang/Object;


# instance fields
.field private Dq:Ljava/io/File;

.field final EjP:Ljava/lang/String;

.field final HiB:J

.field Jcg:Lcom/bytedance/sdk/component/sP/Sj/TEQ;

.field final Sj:I

.field private TEQ:[B

.field final TKC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final sP:Ljava/lang/String;

.field private final uA:Z

.field final vS:J


# direct methods
.method public constructor <init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Dq:Ljava/io/File;

    iput-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->TEQ:[B

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Jcg/sP;->uA:Z

    iput p2, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Sj:I

    iput-object p3, p0, Lcom/bytedance/sdk/component/Jcg/sP;->sP:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/Jcg/sP;->TKC:Ljava/util/Map;

    iput-object p5, p0, Lcom/bytedance/sdk/component/Jcg/sP;->EjP:Ljava/lang/String;

    iput-wide p6, p0, Lcom/bytedance/sdk/component/Jcg/sP;->HiB:J

    iput-wide p8, p0, Lcom/bytedance/sdk/component/Jcg/sP;->vS:J

    return-void
.end method


# virtual methods
.method public EjP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public HiB()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Dq:Ljava/io/File;

    return-object v0
.end method

.method public Jcg()Lcom/bytedance/sdk/component/sP/Sj/TEQ;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Jcg:Lcom/bytedance/sdk/component/sP/Sj/TEQ;

    return-object v0
.end method

.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Sj:I

    return v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/TEQ;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Jcg:Lcom/bytedance/sdk/component/sP/Sj/TEQ;

    return-void
.end method

.method public Sj(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP;->Dq:Ljava/io/File;

    return-void
.end method

.method public Sj([B)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP;->TEQ:[B

    return-void
.end method

.method public TKC()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->TKC:Ljava/util/Map;

    return-object v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public vS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Jcg/sP;->uA:Z

    return v0
.end method
