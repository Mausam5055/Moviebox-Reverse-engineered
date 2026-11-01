.class public final Lno/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/transsion/player/ui/render/RenderScaleMode;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/transsion/player/ui/render/RenderScaleMode;->SCREEN_SCALE_DEFAULT:Lcom/transsion/player/ui/render/RenderScaleMode;

    iput-object v0, p0, Lno/a;->c:Lcom/transsion/player/ui/render/RenderScaleMode;

    return-void
.end method


# virtual methods
.method public final a(II)[I
    .locals 5

    iget v0, p0, Lno/a;->d:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    move v4, p2

    move p2, p1

    move p1, v4

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lno/a;->b:I

    if-eqz v2, :cond_8

    iget v2, p0, Lno/a;->a:I

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v2, p0, Lno/a;->c:Lcom/transsion/player/ui/render/RenderScaleMode;

    sget-object v3, Lno/a$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget p1, p0, Lno/a;->a:I

    mul-int p2, p1, v1

    iget v2, p0, Lno/a;->b:I

    mul-int v3, v0, v2

    if-le p2, v3, :cond_3

    mul-int/2addr p1, v1

    div-int/2addr p1, v2

    :goto_0
    move p2, v1

    goto :goto_3

    :cond_3
    mul-int/2addr v2, v0

    div-int p2, v2, p1

    :goto_1
    move p1, v0

    goto :goto_3

    :pswitch_1
    div-int/lit8 p1, v0, 0x4

    mul-int/lit8 p2, p1, 0x3

    if-le v1, p2, :cond_4

    :goto_2
    goto :goto_1

    :cond_4
    div-int/lit8 p1, v1, 0x3

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :pswitch_2
    div-int/lit8 p1, v0, 0x10

    mul-int/lit8 p2, p1, 0x9

    if-le v1, p2, :cond_5

    goto :goto_2

    :cond_5
    div-int/lit8 p1, v1, 0x9

    mul-int/lit8 p1, p1, 0x10

    goto :goto_0

    :pswitch_3
    iget p1, p0, Lno/a;->a:I

    iget p2, p0, Lno/a;->b:I

    goto :goto_3

    :pswitch_4
    iget p1, p0, Lno/a;->a:I

    mul-int p2, p1, v1

    iget v2, p0, Lno/a;->b:I

    mul-int v3, v0, v2

    if-ge p2, v3, :cond_6

    mul-int/2addr p1, v1

    div-int/2addr p1, v2

    goto :goto_0

    :cond_6
    mul-int p2, p1, v1

    mul-int v3, v0, v2

    if-le p2, v3, :cond_7

    mul-int/2addr v2, v0

    div-int p2, v2, p1

    goto :goto_1

    :cond_7
    move p1, v0

    goto :goto_0

    :goto_3
    :pswitch_5
    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1

    :cond_8
    :goto_4
    filled-new-array {v0, v1}, [I

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/transsion/player/ui/render/RenderScaleMode;)V
    .locals 1

    const-string v0, "screenScale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lno/a;->c:Lcom/transsion/player/ui/render/RenderScaleMode;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lno/a;->c:Lcom/transsion/player/ui/render/RenderScaleMode;

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lno/a;->d:I

    return-void
.end method

.method public final d(II)V
    .locals 0

    iput p1, p0, Lno/a;->a:I

    iput p2, p0, Lno/a;->b:I

    return-void
.end method
