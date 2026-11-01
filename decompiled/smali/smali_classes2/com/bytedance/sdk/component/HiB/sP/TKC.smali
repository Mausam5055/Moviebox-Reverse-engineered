.class public Lcom/bytedance/sdk/component/HiB/sP/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/vS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/HiB/vS;"
    }
.end annotation


# instance fields
.field private EjP:Ljava/lang/String;

.field private HiB:Lcom/bytedance/sdk/component/HiB/Jcg;

.field Sj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TKC:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private sP:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->sP:I

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->TKC:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->EjP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/sP/TKC;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->Sj:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public EjP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public HiB()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->Sj:Ljava/util/Map;

    return-object v0
.end method

.method public Sj()Lcom/bytedance/sdk/component/HiB/Jcg;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/Jcg;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/Jcg;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/Jcg;

    return-void
.end method

.method public TKC()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->TKC:Ljava/lang/Object;

    return-object v0
.end method

.method public sP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->sP:I

    return v0
.end method
