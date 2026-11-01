.class public final Lcom/transsion/shorttv_pugc/base/widget/TnEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;

# interfaces
.implements Lft/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\tB#\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000cJ)\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u0019\u0010\u0010\u001a\u00020\r2\u0008\u0008\u0001\u0010\u000f\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\r2\u0008\u0008\u0001\u0010\u000f\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0019\u0010\u0015\u001a\u00020\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J!\u0010\u001a\u001a\u00020\r2\u0010\u0010\u0019\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001d\u0010\u001f\u001a\u00020\r2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0018H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001bR\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/base/widget/TnEditText;",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "Lft/a;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "a",
        "resId",
        "setTextById",
        "(I)V",
        "setHintById",
        "",
        "srt",
        "setHintWithString",
        "(Ljava/lang/CharSequence;)V",
        "setTextWithString",
        "Lkotlin/Function0;",
        "action",
        "setTextAction",
        "(Lkotlin/jvm/functions/Function0;)V",
        "changeLocal",
        "()V",
        "listener",
        "setLocalChangeListener",
        "Lft/c;",
        "Lft/c;",
        "delegate",
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
.field private final a:Lft/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    new-instance p1, Lft/c;

    invoke-direct {p1, p0}, Lft/c;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a:Lft/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lft/c;

    invoke-direct {v0, p0}, Lft/c;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a:Lft/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lft/c;

    invoke-direct {v0, p0}, Lft/c;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a:Lft/c;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-static {p1, p2, p0}, Lcom/noober/background/BackgroundFactory;->setViewBackground(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a:Lft/c;

    invoke-virtual {v0, p1, p2, p3}, Lft/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public changeLocal()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a:Lft/c;

    invoke-virtual {v0}, Lft/c;->changeLocal()V

    return-void
.end method

.method public setHintById(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a:Lft/c;

    invoke-virtual {v0, p1}, Lft/c;->b(I)V

    return-void
.end method

.method public setHintWithString(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a:Lft/c;

    invoke-virtual {v0, p1}, Lft/c;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLocalChangeListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a:Lft/c;

    invoke-virtual {v0, p1}, Lft/c;->d(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setTextAction(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a:Lft/c;

    invoke-virtual {v0, p1}, Lft/c;->e(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setTextById(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a:Lft/c;

    invoke-virtual {v0, p1}, Lft/c;->f(I)V

    return-void
.end method

.method public setTextWithString(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/TnEditText;->a:Lft/c;

    invoke-virtual {v0, p1}, Lft/c;->g(Ljava/lang/CharSequence;)V

    return-void
.end method
