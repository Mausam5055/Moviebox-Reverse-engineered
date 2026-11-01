.class public final Lcom/transsion/baselib/helper/g;
.super Landroid/view/OrientationEventListener;


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private final b:I

.field private c:J

.field private d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/baselib/helper/g;->a:Lkotlin/jvm/functions/Function1;

    const/16 p1, 0x1f4

    iput p1, p0, Lcom/transsion/baselib/helper/g;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/baselib/helper/g;->d:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/baselib/helper/g;->e:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/transsion/baselib/helper/g;->f:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/transsion/baselib/helper/g;->g:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/transsion/baselib/helper/g;->h:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/baselib/helper/g;->c:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/transsion/baselib/helper/g;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/baselib/helper/g;->c:J

    const/16 v0, 0x14f

    if-ge p1, v0, :cond_7

    const/16 v0, 0x19

    if-ge p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p1, :cond_3

    const/16 v0, 0x74

    if-ge p1, v0, :cond_3

    iget v0, p0, Lcom/transsion/baselib/helper/g;->d:I

    iget v1, p0, Lcom/transsion/baselib/helper/g;->f:I

    if-eq v0, v1, :cond_2

    iput v1, p0, Lcom/transsion/baselib/helper/g;->d:I

    iget-object v0, p0, Lcom/transsion/baselib/helper/g;->a:Lkotlin/jvm/functions/Function1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6a2a\u5c4f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v0, 0x9b

    if-gt v0, p1, :cond_5

    const/16 v0, 0xce

    if-ge p1, v0, :cond_5

    iget v0, p0, Lcom/transsion/baselib/helper/g;->d:I

    iget v1, p0, Lcom/transsion/baselib/helper/g;->g:I

    if-eq v0, v1, :cond_4

    iput v1, p0, Lcom/transsion/baselib/helper/g;->d:I

    iget-object v0, p0, Lcom/transsion/baselib/helper/g;->a:Lkotlin/jvm/functions/Function1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53cd\u5411-\u7ad6\u5c4f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v0, 0xf5

    if-gt v0, p1, :cond_9

    const/16 v0, 0x128

    if-ge p1, v0, :cond_9

    iget v0, p0, Lcom/transsion/baselib/helper/g;->d:I

    iget v1, p0, Lcom/transsion/baselib/helper/g;->h:I

    if-eq v0, v1, :cond_6

    iput v1, p0, Lcom/transsion/baselib/helper/g;->d:I

    iget-object v0, p0, Lcom/transsion/baselib/helper/g;->a:Lkotlin/jvm/functions/Function1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53cd\u5411-\u6a2a\u5c4f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    :goto_0
    iget v0, p0, Lcom/transsion/baselib/helper/g;->d:I

    iget v1, p0, Lcom/transsion/baselib/helper/g;->e:I

    if-eq v0, v1, :cond_8

    iput v1, p0, Lcom/transsion/baselib/helper/g;->d:I

    iget-object v0, p0, Lcom/transsion/baselib/helper/g;->a:Lkotlin/jvm/functions/Function1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ad6\u5c4f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    :goto_1
    return-void
.end method
