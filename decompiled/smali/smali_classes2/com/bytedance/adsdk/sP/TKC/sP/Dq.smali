.class public Lcom/bytedance/adsdk/sP/TKC/sP/Dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;
    }
.end annotation


# instance fields
.field private final EjP:Z

.field private final Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

.field private final TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

.field private final sP:Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    iput-boolean p4, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->EjP:Z

    return-void
.end method


# virtual methods
.method public EjP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->EjP:Z

    return v0
.end method

.method public Sj()Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    return-object v0
.end method

.method public TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    return-object v0
.end method

.method public sP()Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;

    return-object v0
.end method
