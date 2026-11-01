.class public Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/TzV;


# instance fields
.field private Sj:I

.field private TKC:Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private sP:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;->sP:I

    iput p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;->Sj:I

    new-instance p2, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC$1;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;I)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;

    return-void
.end method


# virtual methods
.method public bridge synthetic Sj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;->Sj(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Sj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;->Sj(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public Sj(Ljava/lang/String;[B)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public Sj(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public bridge synthetic sP(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;->sP(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sP(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
