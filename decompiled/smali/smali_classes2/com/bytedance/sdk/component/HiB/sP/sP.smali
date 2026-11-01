.class public Lcom/bytedance/sdk/component/HiB/sP/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/HiB;


# instance fields
.field private EjP:Lcom/bytedance/sdk/component/HiB/sef;

.field private Sj:Ljava/lang/String;

.field private TKC:Z

.field private sP:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLcom/bytedance/sdk/component/HiB/sef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/sP/sP;->Sj:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/HiB/sP/sP;->sP:Z

    iput-boolean p3, p0, Lcom/bytedance/sdk/component/HiB/sP/sP;->TKC:Z

    iput-object p4, p0, Lcom/bytedance/sdk/component/HiB/sP/sP;->EjP:Lcom/bytedance/sdk/component/HiB/sef;

    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/sP/sP;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/sP/sP;->TKC:Z

    return v0
.end method

.method public sP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/sP/sP;->sP:Z

    return v0
.end method
