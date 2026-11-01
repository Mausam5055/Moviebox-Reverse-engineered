.class abstract Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Sj"
.end annotation


# instance fields
.field private Sj:I

.field private sP:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;-><init>()V

    return-void
.end method


# virtual methods
.method abstract Sj(II)V
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;->Sj:I

    if-ne p4, p1, :cond_0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;->sP:I

    if-eq p5, p1, :cond_1

    :cond_0
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;->Sj:I

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;->sP:I

    invoke-virtual {p0, p4, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;->Sj(II)V

    :cond_1
    return-void
.end method
