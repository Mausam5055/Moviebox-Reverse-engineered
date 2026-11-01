.class final Lcom/bytedance/adsdk/Sj/sP/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/Sj/sP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;

.field final synthetic sP:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP/Sj$2;->Sj:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;

    iput-object p2, p0, Lcom/bytedance/adsdk/Sj/sP/Sj$2;->sP:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;ILjava/util/Deque;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Deque<",
            "Lcom/bytedance/adsdk/Sj/sP/sP/Sj;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP/Sj$2;->Sj:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;

    iget-object v1, p0, Lcom/bytedance/adsdk/Sj/sP/Sj$2;->sP:Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;->Sj(Ljava/lang/String;ILjava/util/Deque;Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;)I

    move-result p1

    return p1
.end method
