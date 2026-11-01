.class final Lcom/bytedance/adsdk/sP/Zq$Sj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/Zq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field EjP:Z

.field final synthetic HiB:Lcom/bytedance/adsdk/sP/Zq;

.field final Sj:I

.field TKC:I

.field sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/Zq;I)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->HiB:Lcom/bytedance/adsdk/sP/Zq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->EjP:Z

    iput p2, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->Sj:I

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Zq;->Sj()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->sP:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->TKC:I

    iget v1, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->sP:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Zq$Sj;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->HiB:Lcom/bytedance/adsdk/sP/Zq;

    iget v1, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->TKC:I

    iget v2, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->Sj:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/adsdk/sP/Zq;->Sj(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->TKC:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->TKC:I

    iput-boolean v2, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->EjP:Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->EjP:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->TKC:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->TKC:I

    iget v1, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->sP:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->sP:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->EjP:Z

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Zq$Sj;->HiB:Lcom/bytedance/adsdk/sP/Zq;

    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/sP/Zq;->Sj(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
