.class public Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private Sj:Ljava/lang/String;

.field private TKC:I

.field private sP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->TKC:I

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj:Ljava/lang/String;

    return-void
.end method

.method public TKC()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->TKC:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->sP:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->sP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj$Sj;->sP:Ljava/lang/String;

    return-void
.end method
