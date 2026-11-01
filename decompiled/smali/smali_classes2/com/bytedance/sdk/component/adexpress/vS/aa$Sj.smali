.class public Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/vS/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private final Sj:I

.field private sP:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;->Sj:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;->sP:I

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;->sP:I

    return p0
.end method


# virtual methods
.method public Sj()V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;->sP:I

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;->Sj:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/aa$Sj;->sP:I

    return-void
.end method
