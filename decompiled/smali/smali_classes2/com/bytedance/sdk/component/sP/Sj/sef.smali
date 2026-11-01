.class public Lcom/bytedance/sdk/component/sP/Sj/sef;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;
    }
.end annotation


# instance fields
.field public EjP:Ljava/lang/String;

.field public HiB:[B

.field public TKC:Lcom/bytedance/sdk/component/sP/Sj/uA;

.field public vS:Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/uA;Ljava/lang/String;Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/sef;->TKC:Lcom/bytedance/sdk/component/sP/Sj/uA;

    iput-object p2, p0, Lcom/bytedance/sdk/component/sP/Sj/sef;->EjP:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/component/sP/Sj/sef;->vS:Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/uA;[BLcom/bytedance/sdk/component/sP/Sj/sef$Sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/sef;->TKC:Lcom/bytedance/sdk/component/sP/Sj/uA;

    iput-object p2, p0, Lcom/bytedance/sdk/component/sP/Sj/sef;->HiB:[B

    iput-object p3, p0, Lcom/bytedance/sdk/component/sP/Sj/sef;->vS:Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/sP/Sj/uA;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/sef;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/sef;

    sget-object v1, Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/sef;-><init>(Lcom/bytedance/sdk/component/sP/Sj/uA;Ljava/lang/String;Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;)V

    return-object v0
.end method

.method public static Sj(Lcom/bytedance/sdk/component/sP/Sj/uA;[B)Lcom/bytedance/sdk/component/sP/Sj/sef;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/sef;

    sget-object v1, Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;->sP:Lcom/bytedance/sdk/component/sP/Sj/sef$Sj;

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/sef;-><init>(Lcom/bytedance/sdk/component/sP/Sj/uA;[BLcom/bytedance/sdk/component/sP/Sj/sef$Sj;)V

    return-object v0
.end method
