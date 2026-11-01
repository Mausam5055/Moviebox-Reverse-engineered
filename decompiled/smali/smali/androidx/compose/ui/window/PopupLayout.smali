.class public final Landroidx/compose/ui/window/PopupLayout;
.super Landroidx/compose/ui/platform/AbstractComposeView;

# interfaces
.implements Landroidx/compose/ui/platform/s2;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/window/PopupLayout$b;,
        Landroidx/compose/ui/window/PopupLayout$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u000b\n\u0002\u0010\u0015\n\u0002\u0008\u0014\u0008\u0001\u0018\u0000 \u00a8\u00012\u00020\u00012\u00020\u0002:\u0002\u00a9\u0001BQ\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\r\u0010\"\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\"\u0010\u0017J#\u0010&\u001a\u00020\u00042\u0006\u0010$\u001a\u00020#2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0004H\u0017\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008*\u0010\u0017J\u000f\u0010+\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008+\u0010\u0017J\u001f\u00101\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020,H\u0010\u00a2\u0006\u0004\u0008/\u00100J7\u0010:\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u00104\u001a\u00020,2\u0006\u00105\u001a\u00020,2\u0006\u00106\u001a\u00020,2\u0006\u00107\u001a\u00020,H\u0010\u00a2\u0006\u0004\u00088\u00109J\u0017\u0010=\u001a\u0002022\u0006\u0010<\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008=\u0010>J5\u0010?\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008?\u0010@J\u0015\u0010C\u001a\u00020\u00042\u0006\u0010B\u001a\u00020A\u00a2\u0006\u0004\u0008C\u0010DJ\r\u0010E\u001a\u00020\u0004\u00a2\u0006\u0004\u0008E\u0010\u0017J\u000f\u0010G\u001a\u00020\u0004H\u0001\u00a2\u0006\u0004\u0008F\u0010\u0017J\r\u0010H\u001a\u00020\u0004\u00a2\u0006\u0004\u0008H\u0010\u0017J\r\u0010I\u001a\u00020\u0004\u00a2\u0006\u0004\u0008I\u0010\u0017J\u0019\u0010K\u001a\u0002022\u0008\u0010<\u001a\u0004\u0018\u00010JH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u0017\u0010M\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008M\u0010NR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010OR\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0014\u0010\\\u001a\u00020Y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R \u0010a\u001a\u00020\u001f8\u0000X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008]\u0010^\u0012\u0004\u0008`\u0010\u0017\u001a\u0004\u0008_\u0010!R\"\u0010g\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010\u001eR5\u0010p\u001a\u0004\u0018\u00010h2\u0008\u0010i\u001a\u0004\u0018\u00010h8F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008j\u0010k\u001a\u0004\u0008l\u0010m\"\u0004\u0008n\u0010oR/\u0010B\u001a\u0004\u0018\u00010A2\u0008\u0010i\u001a\u0004\u0018\u00010A8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008q\u0010k\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010DR\u0018\u0010x\u001a\u0004\u0018\u00010u8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR\u001b\u0010}\u001a\u0002028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|R\u001c\u0010\u0081\u0001\u001a\u00020~8\u0002X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R\u0018\u0010\u0085\u0001\u001a\u00030\u0082\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0018\u0010\u0089\u0001\u001a\u00030\u0086\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R;\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038B@BX\u0082\u008e\u0002\u00a2\u0006\u0016\n\u0005\u0008\u008e\u0001\u0010k\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001\"\u0005\u0008&\u0010\u0091\u0001R(\u0010\u0095\u0001\u001a\u0002022\u0006\u0010i\u001a\u0002028\u0014@RX\u0094\u000e\u00a2\u0006\u000f\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u001a\u0005\u0008\u0094\u0001\u0010|R\u0018\u0010\u0099\u0001\u001a\u00030\u0096\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u0017\u0010\u009c\u0001\u001a\u00020,8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u0017\u0010\u009e\u0001\u001a\u00020,8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009d\u0001\u0010\u009b\u0001R)\u0010\u009f\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001\"\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u0017\u0010\u00a7\u0001\u001a\u00020\u00018VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u00aa\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/window/PopupLayout;",
        "Landroidx/compose/ui/platform/AbstractComposeView;",
        "Landroidx/compose/ui/platform/s2;",
        "Lkotlin/Function0;",
        "",
        "onDismissRequest",
        "Landroidx/compose/ui/window/j;",
        "properties",
        "",
        "testTag",
        "Landroid/view/View;",
        "composeView",
        "Lo0/e;",
        "density",
        "Landroidx/compose/ui/window/i;",
        "initialPositionProvider",
        "Ljava/util/UUID;",
        "popupId",
        "Landroidx/compose/ui/window/f;",
        "popupLayoutHelper",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroid/view/View;Lo0/e;Landroidx/compose/ui/window/i;Ljava/util/UUID;Landroidx/compose/ui/window/f;)V",
        "g",
        "()V",
        "h",
        "j",
        "(Landroidx/compose/ui/window/j;)V",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "layoutDirection",
        "i",
        "(Landroidx/compose/ui/unit/LayoutDirection;)V",
        "Landroid/view/WindowManager$LayoutParams;",
        "f",
        "()Landroid/view/WindowManager$LayoutParams;",
        "show",
        "Landroidx/compose/runtime/m;",
        "parent",
        "content",
        "setContent",
        "(Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)V",
        "Content",
        "(Landroidx/compose/runtime/i;I)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "internalOnMeasure$ui_release",
        "(II)V",
        "internalOnMeasure",
        "",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "internalOnLayout$ui_release",
        "(ZIIII)V",
        "internalOnLayout",
        "Landroid/view/KeyEvent;",
        "event",
        "dispatchKeyEvent",
        "(Landroid/view/KeyEvent;)Z",
        "updateParameters",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V",
        "Landroidx/compose/ui/layout/l;",
        "parentLayoutCoordinates",
        "updateParentLayoutCoordinates",
        "(Landroidx/compose/ui/layout/l;)V",
        "pollForLocationOnScreenChange",
        "updateParentBounds$ui_release",
        "updateParentBounds",
        "updatePosition",
        "dismiss",
        "Landroid/view/MotionEvent;",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "setLayoutDirection",
        "(I)V",
        "Lkotlin/jvm/functions/Function0;",
        "Ljava/lang/String;",
        "getTestTag",
        "()Ljava/lang/String;",
        "setTestTag",
        "(Ljava/lang/String;)V",
        "k",
        "Landroid/view/View;",
        "l",
        "Landroidx/compose/ui/window/f;",
        "Landroid/view/WindowManager;",
        "m",
        "Landroid/view/WindowManager;",
        "windowManager",
        "n",
        "Landroid/view/WindowManager$LayoutParams;",
        "getParams$ui_release",
        "getParams$ui_release$annotations",
        "params",
        "o",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getParentLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "setParentLayoutDirection",
        "parentLayoutDirection",
        "Lo0/t;",
        "<set-?>",
        "p",
        "Landroidx/compose/runtime/i1;",
        "getPopupContentSize-bOM6tXw",
        "()Lo0/t;",
        "setPopupContentSize-fhxjrPA",
        "(Lo0/t;)V",
        "popupContentSize",
        "q",
        "getParentLayoutCoordinates",
        "()Landroidx/compose/ui/layout/l;",
        "setParentLayoutCoordinates",
        "Lo0/r;",
        "r",
        "Lo0/r;",
        "parentBounds",
        "s",
        "Landroidx/compose/runtime/a3;",
        "getCanCalculatePosition",
        "()Z",
        "canCalculatePosition",
        "Lo0/i;",
        "t",
        "F",
        "maxSupportedElevation",
        "Landroid/graphics/Rect;",
        "u",
        "Landroid/graphics/Rect;",
        "previousWindowVisibleFrame",
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;",
        "v",
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;",
        "snapshotStateObserver",
        "",
        "w",
        "Ljava/lang/Object;",
        "backCallback",
        "x",
        "getContent",
        "()Lkotlin/jvm/functions/Function2;",
        "(Lkotlin/jvm/functions/Function2;)V",
        "y",
        "Z",
        "getShouldCreateCompositionOnAttachedToWindow",
        "shouldCreateCompositionOnAttachedToWindow",
        "",
        "z",
        "[I",
        "locationOnScreen",
        "getDisplayWidth",
        "()I",
        "displayWidth",
        "getDisplayHeight",
        "displayHeight",
        "positionProvider",
        "Landroidx/compose/ui/window/i;",
        "getPositionProvider",
        "()Landroidx/compose/ui/window/i;",
        "setPositionProvider",
        "(Landroidx/compose/ui/window/i;)V",
        "getSubCompositionView",
        "()Landroidx/compose/ui/platform/AbstractComposeView;",
        "subCompositionView",
        "A",
        "b",
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
.field public static final $stable:I

.field private static final A:Landroidx/compose/ui/window/PopupLayout$b;

.field private static final B:Lkotlin/jvm/functions/Function1;


# instance fields
.field private i:Lkotlin/jvm/functions/Function0;

.field private j:Ljava/lang/String;

.field private final k:Landroid/view/View;

.field private final l:Landroidx/compose/ui/window/f;

.field private final m:Landroid/view/WindowManager;

.field private final n:Landroid/view/WindowManager$LayoutParams;

.field private o:Landroidx/compose/ui/unit/LayoutDirection;

.field private final p:Landroidx/compose/runtime/i1;

.field private final q:Landroidx/compose/runtime/i1;

.field private r:Lo0/r;

.field private final s:Landroidx/compose/runtime/a3;

.field private final t:F

.field private final u:Landroid/graphics/Rect;

.field private final v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

.field private w:Ljava/lang/Object;

.field private final x:Landroidx/compose/runtime/i1;

.field private y:Z

.field private final z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/window/PopupLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/window/PopupLayout$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/window/PopupLayout;->A:Landroidx/compose/ui/window/PopupLayout$b;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/window/PopupLayout;->$stable:I

    sget-object v0, Landroidx/compose/ui/window/PopupLayout$Companion$onCommitAffectingPopupPosition$1;->INSTANCE:Landroidx/compose/ui/window/PopupLayout$Companion$onCommitAffectingPopupPosition$1;

    sput-object v0, Landroidx/compose/ui/window/PopupLayout;->B:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroid/view/View;Lo0/e;Landroidx/compose/ui/window/i;Ljava/util/UUID;Landroidx/compose/ui/window/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/j;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lo0/e;",
            "Landroidx/compose/ui/window/i;",
            "Ljava/util/UUID;",
            "Landroidx/compose/ui/window/f;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->i:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Landroidx/compose/ui/window/PopupLayout;->j:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    iput-object p8, p0, Landroidx/compose/ui/window/PopupLayout;->l:Landroidx/compose/ui/window/f;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->m:Landroid/view/WindowManager;

    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->f()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->n:Landroid/view/WindowManager$LayoutParams;

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->o:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/window/PopupLayout;->p:Landroidx/compose/runtime/i1;

    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/window/PopupLayout;->q:Landroidx/compose/runtime/i1;

    new-instance p3, Landroidx/compose/ui/window/PopupLayout$canCalculatePosition$2;

    invoke-direct {p3, p0}, Landroidx/compose/ui/window/PopupLayout$canCalculatePosition$2;-><init>(Landroidx/compose/ui/window/PopupLayout;)V

    invoke-static {p3}, Landroidx/compose/runtime/r2;->c(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/a3;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/window/PopupLayout;->s:Landroidx/compose/runtime/a3;

    const/16 p3, 0x8

    int-to-float p3, p3

    invoke-static {p3}, Lo0/i;->g(F)F

    move-result p3

    iput p3, p0, Landroidx/compose/ui/window/PopupLayout;->t:F

    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    iput-object p6, p0, Landroidx/compose/ui/window/PopupLayout;->u:Landroid/graphics/Rect;

    new-instance p6, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    new-instance p8, Landroidx/compose/ui/window/PopupLayout$snapshotStateObserver$1;

    invoke-direct {p8, p0}, Landroidx/compose/ui/window/PopupLayout$snapshotStateObserver$1;-><init>(Landroidx/compose/ui/window/PopupLayout;)V

    invoke-direct {p6, p8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p6, p0, Landroidx/compose/ui/window/PopupLayout;->v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    const p6, 0x1020002

    invoke-virtual {p0, p6}, Landroid/view/View;->setId(I)V

    invoke-static {p4}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Landroidx/lifecycle/u;

    move-result-object p6

    invoke-static {p0, p6}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->b(Landroid/view/View;Landroidx/lifecycle/u;)V

    invoke-static {p4}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->a(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object p6

    invoke-static {p0, p6}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->b(Landroid/view/View;Landroidx/lifecycle/y0;)V

    invoke-static {p4}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->a(Landroid/view/View;)Landroidx/savedstate/e;

    move-result-object p4

    invoke-static {p0, p4}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->b(Landroid/view/View;Landroidx/savedstate/e;)V

    sget p4, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "Popup:"

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p4, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p4, 0x0

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-interface {p5, p3}, Lo0/e;->E0(F)F

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setElevation(F)V

    new-instance p3, Landroidx/compose/ui/window/PopupLayout$a;

    invoke-direct {p3}, Landroidx/compose/ui/window/PopupLayout$a;-><init>()V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    sget-object p3, Landroidx/compose/ui/window/ComposableSingletons$AndroidPopup_androidKt;->a:Landroidx/compose/ui/window/ComposableSingletons$AndroidPopup_androidKt;

    invoke-virtual {p3}, Landroidx/compose/ui/window/ComposableSingletons$AndroidPopup_androidKt;->a()Lkotlin/jvm/functions/Function2;

    move-result-object p3

    invoke-static {p3, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->x:Landroidx/compose/runtime/i1;

    new-array p1, p2, [I

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->z:[I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroid/view/View;Lo0/e;Landroidx/compose/ui/window/i;Ljava/util/UUID;Landroidx/compose/ui/window/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/compose/ui/window/g;

    invoke-direct {v0}, Landroidx/compose/ui/window/g;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/window/h;

    invoke-direct {v0}, Landroidx/compose/ui/window/h;-><init>()V

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object/from16 v9, p8

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/window/PopupLayout;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroid/view/View;Lo0/e;Landroidx/compose/ui/window/i;Ljava/util/UUID;Landroidx/compose/ui/window/f;)V

    return-void
.end method

.method public static final synthetic access$getParentLayoutCoordinates(Landroidx/compose/ui/window/PopupLayout;)Landroidx/compose/ui/layout/l;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/l;

    move-result-object p0

    return-object p0
.end method

.method private final f()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    invoke-static {v1}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->d(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a(Landroidx/compose/ui/window/j;Z)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/compose/ui/R$string;->default_popup_window_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private final g()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method private final getContent()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/i;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->x:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method private final getDisplayHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private final getDisplayWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static synthetic getParams$ui_release$annotations()V
    .locals 0

    return-void
.end method

.method private final getParentLayoutCoordinates()Landroidx/compose/ui/layout/l;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->q:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/l;

    return-object v0
.end method

.method private final h()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->w:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroidx/compose/ui/window/b;->e(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->w:Ljava/lang/Object;

    return-void
.end method

.method private final i(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2

    sget-object v0, Landroidx/compose/ui/window/PopupLayout$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method private final j(Landroidx/compose/ui/window/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method private final setContent(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/i;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->x:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setParentLayoutCoordinates(Landroidx/compose/ui/layout/l;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->q:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/i;I)V
    .locals 4

    const v0, -0x331e2520

    invoke-interface {p1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object p1

    and-int/lit8 v1, p2, 0x6

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v3, v1, 0x3

    if-ne v3, v2, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/i;->h()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/i;->G()V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string v3, "androidx.compose.ui.window.PopupLayout.Content (AndroidPopup.android.kt:572)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_5
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Landroidx/compose/ui/window/PopupLayout$Content$4;

    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/window/PopupLayout$Content$4;-><init>(Landroidx/compose/ui/window/PopupLayout;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method

.method public final dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->b(Landroid/view/View;Landroidx/lifecycle/u;)V

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->m:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final getCanCalculatePosition()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->s:Landroidx/compose/runtime/a3;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getParams$ui_release()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->n:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->o:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public final getPopupContentSize-bOM6tXw()Lo0/t;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->p:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/t;

    return-object v0
.end method

.method public final getPositionProvider()Landroidx/compose/ui/window/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupLayout;->y:Z

    return v0
.end method

.method public getSubCompositionView()Landroidx/compose/ui/platform/AbstractComposeView;
    .locals 0

    return-object p0
.end method

.method public final getTestTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->j:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getViewRoot()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/platform/r2;->b(Landroidx/compose/ui/platform/s2;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public internalOnLayout$ui_release(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/compose/ui/platform/AbstractComposeView;->internalOnLayout$ui_release(ZIIII)V

    const/4 p1, 0x0

    throw p1
.end method

.method public internalOnMeasure$ui_release(II)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->s()V

    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->g()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->t()V

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->j()V

    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->h()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final pollForLocationOnScreenChange()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->z:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    iget-object v5, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->z:[I

    aget v1, v0, v1

    if-ne v2, v1, :cond_0

    aget v0, v0, v3

    if-eq v4, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->updateParentBounds$ui_release()V

    :cond_1
    return-void
.end method

.method public final setContent(Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/m;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/i;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/m;)V

    invoke-direct {p0, p2}, Landroidx/compose/ui/window/PopupLayout;->setContent(Lkotlin/jvm/functions/Function2;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/window/PopupLayout;->y:Z

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    return-void
.end method

.method public final setParentLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->o:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public final setPopupContentSize-fhxjrPA(Lo0/t;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->p:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPositionProvider(Landroidx/compose/ui/window/i;)V
    .locals 0

    return-void
.end method

.method public final setTestTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->j:Ljava/lang/String;

    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->m:Landroid/view/WindowManager;

    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/j;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->i:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Landroidx/compose/ui/window/PopupLayout;->j:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroidx/compose/ui/window/PopupLayout;->j(Landroidx/compose/ui/window/j;)V

    invoke-direct {p0, p4}, Landroidx/compose/ui/window/PopupLayout;->i(Landroidx/compose/ui/unit/LayoutDirection;)V

    return-void
.end method

.method public final updateParentBounds$ui_release()V
    .locals 5

    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/l;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->k()J

    move-result-wide v1

    invoke-static {v0}, Landroidx/compose/ui/layout/m;->f(Landroidx/compose/ui/layout/l;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ly/g;->m(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v3, v4}, Ly/g;->n(J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v3}, Lo0/q;->a(II)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Lo0/s;->a(JJ)Lo0/r;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->r:Lo0/r;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->r:Lo0/r;

    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->updatePosition()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateParentLayoutCoordinates(Landroidx/compose/ui/layout/l;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/window/PopupLayout;->setParentLayoutCoordinates(Landroidx/compose/ui/layout/l;)V

    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->updateParentBounds$ui_release()V

    return-void
.end method

.method public final updatePosition()V
    .locals 12

    iget-object v3, p0, Landroidx/compose/ui/window/PopupLayout;->r:Lo0/r;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->getPopupContentSize-bOM6tXw()Lo0/t;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lo0/t;->j()J

    move-result-wide v6

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->u:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->l:Landroidx/compose/ui/window/f;

    iget-object v2, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/window/f;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->b(Landroid/graphics/Rect;)Lo0/r;

    move-result-object v0

    invoke-virtual {v0}, Lo0/r;->j()I

    move-result v1

    invoke-virtual {v0}, Lo0/r;->e()I

    move-result v0

    invoke-static {v1, v0}, Lo0/u;->a(II)J

    move-result-wide v4

    new-instance v8, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    sget-object v0, Lo0/p;->b:Lo0/p$a;

    invoke-virtual {v0}, Lo0/p$a;->a()J

    move-result-wide v0

    iput-wide v0, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v9, p0, Landroidx/compose/ui/window/PopupLayout;->v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    sget-object v10, Landroidx/compose/ui/window/PopupLayout;->B:Lkotlin/jvm/functions/Function1;

    new-instance v11, Landroidx/compose/ui/window/PopupLayout$updatePosition$1;

    move-object v0, v11

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/window/PopupLayout$updatePosition$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/window/PopupLayout;Lo0/r;JJ)V

    invoke-virtual {v9, p0, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->o(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->n:Landroid/view/WindowManager$LayoutParams;

    iget-wide v1, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v1, v2}, Lo0/p;->h(J)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->n:Landroid/view/WindowManager$LayoutParams;

    iget-wide v1, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v1, v2}, Lo0/p;->i(J)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, 0x0

    throw v0
.end method
