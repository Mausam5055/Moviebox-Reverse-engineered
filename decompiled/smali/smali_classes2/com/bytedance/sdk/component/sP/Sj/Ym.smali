.class public abstract Lcom/bytedance/sdk/component/sP/Sj/Ym;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;
    }
.end annotation


# instance fields
.field public EjP:J

.field public HiB:Ljava/util/concurrent/TimeUnit;

.field public Jcg:Ljava/util/concurrent/TimeUnit;

.field public Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/Dq;",
            ">;"
        }
    .end annotation
.end field

.field public TKC:Ljava/util/concurrent/TimeUnit;

.field public sP:J

.field public vS:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->sP:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->sP:J

    iget-wide v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->EjP:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->EjP:J

    iget-wide v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->vS:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->vS:J

    iget-object v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj:Ljava/util/List;

    iget-object v1, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->TKC:Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->TKC:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->HiB:Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->HiB:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Jcg:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Jcg:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract Sj()Lcom/bytedance/sdk/component/sP/Sj/EjP;
.end method

.method public abstract Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;
.end method

.method public sP()Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V

    return-object v0
.end method
