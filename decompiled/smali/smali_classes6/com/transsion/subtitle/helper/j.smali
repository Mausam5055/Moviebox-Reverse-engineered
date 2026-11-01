.class public final Lcom/transsion/subtitle/helper/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/helper/j$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/subtitle/helper/j$a;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private b:Leu/a;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/os/Handler;

.field private h:F

.field private i:Lkotlin/jvm/functions/Function2;

.field private j:Lkotlin/jvm/functions/Function0;

.field private k:J

.field private l:F

.field private final m:Ljava/lang/Runnable;

.field private final n:Lcom/transsion/subtitle/helper/j$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/subtitle/helper/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/subtitle/helper/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/subtitle/helper/j;->o:Lcom/transsion/subtitle/helper/j$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/helper/j;->a:Landroid/view/ViewGroup;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/subtitle/helper/j;->g:Landroid/os/Handler;

    new-instance p1, Lcom/transsion/subtitle/helper/i;

    invoke-direct {p1, p0}, Lcom/transsion/subtitle/helper/i;-><init>(Lcom/transsion/subtitle/helper/j;)V

    iput-object p1, p0, Lcom/transsion/subtitle/helper/j;->m:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/transsion/subtitle/helper/j$c;

    invoke-direct {v0, p0, p1}, Lcom/transsion/subtitle/helper/j$c;-><init>(Lcom/transsion/subtitle/helper/j;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/subtitle/helper/j;->n:Lcom/transsion/subtitle/helper/j$c;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/subtitle/helper/j;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/subtitle/helper/j;->s(Lcom/transsion/subtitle/helper/j;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/subtitle/helper/j;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/helper/j;->p(Lcom/transsion/subtitle/helper/j;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/subtitle/helper/j;)F
    .locals 0

    iget p0, p0, Lcom/transsion/subtitle/helper/j;->l:F

    return p0
.end method

.method public static final synthetic d(Lcom/transsion/subtitle/helper/j;)F
    .locals 0

    iget p0, p0, Lcom/transsion/subtitle/helper/j;->h:F

    return p0
.end method

.method public static final synthetic e(Lcom/transsion/subtitle/helper/j;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/helper/j;->f:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/subtitle/helper/j;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/helper/j;->g:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/subtitle/helper/j;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/subtitle/helper/j;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/subtitle/helper/j;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/subtitle/helper/j;->l:F

    return-void
.end method

.method public static final synthetic i(Lcom/transsion/subtitle/helper/j;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/subtitle/helper/j;->h:F

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/subtitle/helper/j;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/helper/j;->t(Z)V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/subtitle/helper/j;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/helper/j;->u(J)V

    return-void
.end method

.method private final l(Ljava/lang/CharSequence;F)F
    .locals 11

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v4, "substring(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "s"

    const-string v7, ""

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return p2
.end method

.method static synthetic m(Lcom/transsion/subtitle/helper/j;Ljava/lang/CharSequence;FILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x7fc00000    # Float.NaN

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/helper/j;->l(Ljava/lang/CharSequence;F)F

    move-result p0

    return p0
.end method

.method private static final p(Lcom/transsion/subtitle/helper/j;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->j:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/subtitle/helper/j;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/subtitle/helper/j;->n()V

    return-void
.end method

.method private static final s(Lcom/transsion/subtitle/helper/j;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/subtitle/helper/j;->n()V

    return-void
.end method

.method private final t(Z)V
    .locals 2

    const/16 v0, 0x64

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/subtitle/helper/j;->h:F

    mul-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    :goto_0
    div-float/2addr p1, v1

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/transsion/subtitle/helper/j;->h:F

    mul-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    goto :goto_0

    :goto_1
    iput p1, p0, Lcom/transsion/subtitle/helper/j;->h:F

    iget-object v0, p0, Lcom/transsion/subtitle/helper/j;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/subtitle/helper/j;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final u(J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/helper/j;->b:Leu/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setDelay(Ljava/lang/Long;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/helper/j;->i:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/subtitle/helper/j;->b:Leu/a;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/helper/j;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final o(Lkotlin/jvm/functions/Function2;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/subtitle/helper/j;->i:Lkotlin/jvm/functions/Function2;

    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->a:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/subtitle/R$id;->iv_close:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/transsion/subtitle/helper/j;->c:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    sget v1, Lcom/transsion/subtitle/R$id;->iv_sync_adjust_plus:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/transsion/subtitle/helper/j;->d:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    sget v1, Lcom/transsion/subtitle/R$id;->iv_sync_adjust_minus:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    iput-object p1, p0, Lcom/transsion/subtitle/helper/j;->e:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    sget v0, Lcom/transsion/subtitle/R$id;->et_sync_adjust:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    :cond_3
    iput-object v0, p0, Lcom/transsion/subtitle/helper/j;->f:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/transsion/subtitle/helper/h;

    invoke-direct {v0, p0}, Lcom/transsion/subtitle/helper/h;-><init>(Lcom/transsion/subtitle/helper/j;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->d:Landroid/widget/ImageView;

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_9
    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_a
    iget-object p1, p0, Lcom/transsion/subtitle/helper/j;->f:Landroid/widget/EditText;

    if-eqz p1, :cond_b

    new-instance v0, Lcom/transsion/subtitle/helper/j$b;

    invoke-direct {v0, p0}, Lcom/transsion/subtitle/helper/j$b;-><init>(Lcom/transsion/subtitle/helper/j;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_b
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/subtitle/helper/j;->k:J

    iget-object p2, p0, Lcom/transsion/subtitle/helper/j;->n:Lcom/transsion/subtitle/helper/j$c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x4b0

    invoke-virtual {p2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_5

    :cond_3
    :goto_2
    if-nez p2, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_8

    iget-object p2, p0, Lcom/transsion/subtitle/helper/j;->n:Lcom/transsion/subtitle/helper/j$c;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/subtitle/helper/j;->k:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x190

    cmp-long p2, v3, v5

    if-gtz p2, :cond_7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    goto :goto_3

    :cond_5
    move p2, v1

    :goto_3
    sget v0, Lcom/transsion/subtitle/R$id;->iv_sync_adjust_plus:I

    if-ne p2, v0, :cond_6

    move p2, v2

    goto :goto_4

    :cond_6
    move p2, v1

    :goto_4
    invoke-direct {p0, p2}, Lcom/transsion/subtitle/helper/j;->t(Z)V

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_8
    :goto_5
    return v2
.end method

.method public final q(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/subtitle/helper/j;->i:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final r(Leu/a;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/subtitle/helper/j;->b:Leu/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    long-to-float p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/subtitle/helper/j;->h:F

    iput p1, p0, Lcom/transsion/subtitle/helper/j;->l:F

    iget-object v0, p0, Lcom/transsion/subtitle/helper/j;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    const-class v0, Lcom/transsion/subtitle/helper/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/transsion/subtitle/helper/j;->h:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> setCurDefVideoSubtitleBean() --> cur duration = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    return-void
.end method
