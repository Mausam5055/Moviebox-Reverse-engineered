.class Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC$1;
.super Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected Sj(Ljava/lang/String;[B)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    array-length p1, p2

    return p1
.end method

.method protected synthetic sP(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC$1;->Sj(Ljava/lang/String;[B)I

    move-result p1

    return p1
.end method
