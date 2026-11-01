.class public abstract Lcom/transsion/shorttv/base/activity/BaseMusicFloatActivity;
.super Lcom/transsion/shorttv/base/activity/BaseCommonActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lg4/a;",
        ">",
        "Lcom/transsion/shorttv/base/activity/BaseCommonActivity<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u000b8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u0002\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/shorttv/base/activity/BaseMusicFloatActivity;",
        "Lg4/a;",
        "T",
        "Lcom/transsion/shorttv/base/activity/BaseCommonActivity;",
        "<init>",
        "()V",
        "Landroid/view/MotionEvent;",
        "ev",
        "",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Lqs/j;",
        "c",
        "Lkotlin/Lazy;",
        "()Lqs/j;",
        "shortMusicAudioProvider",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;-><init>()V

    new-instance v0, Lcom/transsion/shorttv/base/activity/c;

    invoke-direct {v0}, Lcom/transsion/shorttv/base/activity/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/base/activity/BaseMusicFloatActivity;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic R()Lqs/j;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/base/activity/BaseMusicFloatActivity;->U()Lqs/j;

    move-result-object v0

    return-object v0
.end method

.method private static final U()Lqs/j;
    .locals 1

    sget-object v0, Llr/c;->a:Llr/c;

    invoke-virtual {v0}, Llr/c;->c()Lrs/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrs/a;->g()Lqs/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected final T()Lqs/j;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/activity/BaseMusicFloatActivity;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqs/j;

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/activity/BaseMusicFloatActivity;->T()Lqs/j;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lqs/j;->c(Landroid/app/Activity;Landroid/view/MotionEvent;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
