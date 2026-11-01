.class public abstract Lcom/bytedance/sdk/component/sP/Sj/Fmk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    }
.end annotation


# instance fields
.field public Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

.field public sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    return-void
.end method


# virtual methods
.method public Dq()Lcom/bytedance/sdk/component/sP/Sj/sef;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract EjP()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract HiB()Lcom/bytedance/sdk/component/sP/Sj/Sj;
.end method

.method public abstract Jcg()I
.end method

.method public abstract Sj()Ljava/lang/Object;
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    return-void
.end method

.method public abstract TKC()Ljava/lang/String;
.end method

.method public abstract sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;
.end method

.method public uA()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)V

    return-object v0
.end method

.method public abstract vS()Ljava/lang/String;
.end method
