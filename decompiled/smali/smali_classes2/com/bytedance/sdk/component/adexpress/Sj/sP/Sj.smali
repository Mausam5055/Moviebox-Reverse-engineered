.class public Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;
.super Ljava/lang/Object;


# instance fields
.field private Sj:Landroid/webkit/WebResourceResponse;

.field private sP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->sP:I

    return-void
.end method


# virtual methods
.method public Sj()Landroid/webkit/WebResourceResponse;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj:Landroid/webkit/WebResourceResponse;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->sP:I

    return-void
.end method

.method public Sj(Landroid/webkit/WebResourceResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->Sj:Landroid/webkit/WebResourceResponse;

    return-void
.end method

.method public sP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Sj;->sP:I

    return v0
.end method
