.class public abstract Landroidx/compose/ui/platform/AbstractComposeView;
.super Landroid/view/ViewGroup;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\'\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0013\u0010\u000e\u001a\u00020\r*\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u000cJ\u0017\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\nH\'\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001c\u0010\u000cJ\r\u0010\u001d\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001d\u0010\u000cJ\u000f\u0010\u001e\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u000cJ\u001f\u0010!\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010$\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0010\u00a2\u0006\u0004\u0008#\u0010\"J7\u0010+\u001a\u00020\n2\u0006\u0010&\u001a\u00020%2\u0006\u0010\'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u0008+\u0010,J7\u0010.\u001a\u00020\n2\u0006\u0010&\u001a\u00020%2\u0006\u0010\'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0010\u00a2\u0006\u0004\u0008-\u0010,J\u0017\u00100\u001a\u00020\n2\u0006\u0010/\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020%H\u0016\u00a2\u0006\u0004\u00082\u00103J\u0017\u00104\u001a\u00020\n2\u0006\u00102\u001a\u00020%H\u0016\u00a2\u0006\u0004\u00084\u00105J\u0019\u00108\u001a\u00020\n2\u0008\u00107\u001a\u0004\u0018\u000106H\u0016\u00a2\u0006\u0004\u00088\u00109J!\u00108\u001a\u00020\n2\u0008\u00107\u001a\u0004\u0018\u0001062\u0006\u0010:\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00088\u0010;J)\u00108\u001a\u00020\n2\u0008\u00107\u001a\u0004\u0018\u0001062\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00088\u0010>J#\u00108\u001a\u00020\n2\u0008\u00107\u001a\u0004\u0018\u0001062\u0008\u0010@\u001a\u0004\u0018\u00010?H\u0016\u00a2\u0006\u0004\u00088\u0010AJ+\u00108\u001a\u00020\n2\u0008\u00107\u001a\u0004\u0018\u0001062\u0006\u0010:\u001a\u00020\u00062\u0008\u0010@\u001a\u0004\u0018\u00010?H\u0016\u00a2\u0006\u0004\u00088\u0010BJ+\u0010C\u001a\u00020%2\u0008\u00107\u001a\u0004\u0018\u0001062\u0006\u0010:\u001a\u00020\u00062\u0008\u0010@\u001a\u0004\u0018\u00010?H\u0014\u00a2\u0006\u0004\u0008C\u0010DJ3\u0010C\u001a\u00020%2\u0008\u00107\u001a\u0004\u0018\u0001062\u0006\u0010:\u001a\u00020\u00062\u0008\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010E\u001a\u00020%H\u0014\u00a2\u0006\u0004\u0008C\u0010FJ\u000f\u0010G\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008G\u00103R\u001e\u0010J\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010IR(\u0010P\u001a\u0004\u0018\u00010K2\u0008\u0010L\u001a\u0004\u0018\u00010K8\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010M\"\u0004\u0008N\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010RR(\u0010W\u001a\u0004\u0018\u00010\r2\u0008\u0010L\u001a\u0004\u0018\u00010\r8\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\"\u0004\u0008V\u0010\u0015R$\u0010[\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010Y\u0012\u0004\u0008Z\u0010\u000cR0\u0010a\u001a\u00020%2\u0006\u0010L\u001a\u00020%8F@FX\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008\\\u0010]\u0012\u0004\u0008`\u0010\u000c\u001a\u0004\u0008^\u00103\"\u0004\u0008_\u00105R\u0016\u0010c\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010]R\u0016\u0010e\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010]R\u0018\u0010g\u001a\u00020%*\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010fR\u0014\u0010i\u001a\u00020%8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008h\u00103R\u0011\u0010k\u001a\u00020%8F\u00a2\u0006\u0006\u001a\u0004\u0008j\u00103\u00a8\u0006l"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AbstractComposeView;",
        "Landroid/view/ViewGroup;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "b",
        "()V",
        "Landroidx/compose/runtime/m;",
        "a",
        "(Landroidx/compose/runtime/m;)Landroidx/compose/runtime/m;",
        "e",
        "()Landroidx/compose/runtime/m;",
        "c",
        "parent",
        "setParentCompositionContext",
        "(Landroidx/compose/runtime/m;)V",
        "Landroidx/compose/ui/platform/ViewCompositionStrategy;",
        "strategy",
        "setViewCompositionStrategy",
        "(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V",
        "Content",
        "(Landroidx/compose/runtime/i;I)V",
        "createComposition",
        "disposeComposition",
        "onAttachedToWindow",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "internalOnMeasure$ui_release",
        "internalOnMeasure",
        "",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
        "internalOnLayout$ui_release",
        "internalOnLayout",
        "layoutDirection",
        "onRtlPropertiesChanged",
        "(I)V",
        "isTransitionGroup",
        "()Z",
        "setTransitionGroup",
        "(Z)V",
        "Landroid/view/View;",
        "child",
        "addView",
        "(Landroid/view/View;)V",
        "index",
        "(Landroid/view/View;I)V",
        "width",
        "height",
        "(Landroid/view/View;II)V",
        "Landroid/view/ViewGroup$LayoutParams;",
        "params",
        "(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V",
        "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V",
        "addViewInLayout",
        "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z",
        "preventRequestLayout",
        "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z",
        "shouldDelayChildPressedState",
        "Ljava/lang/ref/WeakReference;",
        "Ljava/lang/ref/WeakReference;",
        "cachedViewTreeCompositionContext",
        "Landroid/os/IBinder;",
        "value",
        "Landroid/os/IBinder;",
        "setPreviousAttachedWindowToken",
        "(Landroid/os/IBinder;)V",
        "previousAttachedWindowToken",
        "Landroidx/compose/runtime/l;",
        "Landroidx/compose/runtime/l;",
        "composition",
        "d",
        "Landroidx/compose/runtime/m;",
        "setParentContext",
        "parentContext",
        "Lkotlin/Function0;",
        "Lkotlin/jvm/functions/Function0;",
        "getDisposeViewCompositionStrategy$annotations",
        "disposeViewCompositionStrategy",
        "f",
        "Z",
        "getShowLayoutBounds",
        "setShowLayoutBounds",
        "getShowLayoutBounds$annotations",
        "showLayoutBounds",
        "g",
        "creatingComposition",
        "h",
        "isTransitionGroupSet",
        "(Landroidx/compose/runtime/m;)Z",
        "isAlive",
        "getShouldCreateCompositionOnAttachedToWindow",
        "shouldCreateCompositionOnAttachedToWindow",
        "getHasComposition",
        "hasComposition",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/os/IBinder;

.field private c:Landroidx/compose/runtime/l;

.field private d:Landroidx/compose/runtime/m;

.field private e:Lkotlin/jvm/functions/Function0;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    sget-object p1, Landroidx/compose/ui/platform/ViewCompositionStrategy;->a:Landroidx/compose/ui/platform/ViewCompositionStrategy$a;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/ViewCompositionStrategy$a;->a()Landroidx/compose/ui/platform/ViewCompositionStrategy;

    move-result-object p1

    invoke-interface {p1, p0}, Landroidx/compose/ui/platform/ViewCompositionStrategy;->a(Landroidx/compose/ui/platform/AbstractComposeView;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(Landroidx/compose/runtime/m;)Landroidx/compose/runtime/m;
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->d(Landroidx/compose/runtime/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->a:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object p1
.end method

.method private final b()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add views to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; only Compose content is supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final c()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->c:Landroidx/compose/runtime/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->g:Z

    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->e()Landroidx/compose/runtime/m;

    move-result-object v2

    new-instance v3, Landroidx/compose/ui/platform/AbstractComposeView$ensureCompositionCreated$1;

    invoke-direct {v3, p0}, Landroidx/compose/ui/platform/AbstractComposeView$ensureCompositionCreated$1;-><init>(Landroidx/compose/ui/platform/AbstractComposeView;)V

    const v4, -0x271bffc0

    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/internal/b;->b(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/a;

    move-result-object v1

    invoke-static {p0, v2, v1}, Landroidx/compose/ui/platform/b3;->c(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/l;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->c:Landroidx/compose/runtime/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->g:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->g:Z

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private final d(Landroidx/compose/runtime/m;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/Recomposer;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/runtime/Recomposer;

    invoke-virtual {p1}, Landroidx/compose/runtime/Recomposer;->d0()Lkotlinx/coroutines/flow/i1;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/Recomposer$State;

    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final e()Landroidx/compose/runtime/m;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->d:Landroidx/compose/runtime/m;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->d(Landroid/view/View;)Landroidx/compose/runtime/m;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->a(Landroidx/compose/runtime/m;)Landroidx/compose/runtime/m;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/m;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->d(Landroidx/compose/runtime/m;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    move-object v0, v1

    if-nez v0, :cond_2

    invoke-static {p0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->h(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->a(Landroidx/compose/runtime/m;)Landroidx/compose/runtime/m;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static synthetic getDisposeViewCompositionStrategy$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getShowLayoutBounds$annotations()V
    .locals 0

    return-void
.end method

.method private final setParentContext(Landroidx/compose/runtime/m;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->d:Landroidx/compose/runtime/m;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->d:Landroidx/compose/runtime/m;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->c:Landroidx/compose/runtime/l;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/l;->dispose()V

    iput-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->c:Landroidx/compose/runtime/l;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->c()V

    :cond_1
    return-void
.end method

.method private final setPreviousAttachedWindowToken(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->b:Landroid/os/IBinder;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->b:Landroid/os/IBinder;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract Content(Landroidx/compose/runtime/i;I)V
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->b()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->b()V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->b()V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->b()V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->b()V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->b()V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->b()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p1

    return p1
.end method

.method public final createComposition()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->d:Landroidx/compose/runtime/m;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "createComposition requires either a parent reference or the View to be attachedto a window. Attach the View or call setParentCompositionReference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->c()V

    return-void
.end method

.method public final disposeComposition()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->c:Landroidx/compose/runtime/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/l;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->c:Landroidx/compose/runtime/l;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final getHasComposition()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->c:Landroidx/compose/runtime/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getShowLayoutBounds()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->f:Z

    return v0
.end method

.method public internalOnLayout$ui_release(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public internalOnMeasure$ui_release(II)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public isTransitionGroup()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->h:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->setPreviousAttachedWindowToken(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->getShouldCreateCompositionOnAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->c()V

    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroidx/compose/ui/platform/AbstractComposeView;->internalOnLayout$ui_release(ZIIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->c()V

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/AbstractComposeView;->internalOnMeasure$ui_release(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    :goto_0
    return-void
.end method

.method public final setParentCompositionContext(Landroidx/compose/runtime/m;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentContext(Landroidx/compose/runtime/m;)V

    return-void
.end method

.method public final setShowLayoutBounds(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->f:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/compose/ui/node/y0;

    invoke-interface {v0, p1}, Landroidx/compose/ui/node/y0;->setShowLayoutBounds(Z)V

    :cond_0
    return-void
.end method

.method public setTransitionGroup(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->h:Z

    return-void
.end method

.method public final setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/AbstractComposeView;->e:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, p0}, Landroidx/compose/ui/platform/ViewCompositionStrategy;->a(Landroidx/compose/ui/platform/AbstractComposeView;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/AbstractComposeView;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
