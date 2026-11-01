.class public Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/TEQ;
.super Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;ILjava/util/Deque;Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Deque<",
            "Lcom/bytedance/adsdk/Sj/sP/sP/Sj;",
            ">;",
            "Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;->sP(ILjava/lang/String;)I

    move-result p2

    invoke-interface {p4, p1, p2, p3}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;->Sj(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    return p1
.end method
