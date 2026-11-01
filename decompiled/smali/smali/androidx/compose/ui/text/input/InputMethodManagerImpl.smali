.class public final Landroidx/compose/ui/text/input/InputMethodManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/input/r;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/core/view/SoftwareKeyboardControllerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->a:Landroid/view/View;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/compose/ui/text/input/InputMethodManagerImpl$imm$2;

    invoke-direct {v1, p0}, Landroidx/compose/ui/text/input/InputMethodManagerImpl$imm$2;-><init>(Landroidx/compose/ui/text/input/InputMethodManagerImpl;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->b:Lkotlin/Lazy;

    new-instance v0, Landroidx/core/view/SoftwareKeyboardControllerCompat;

    invoke-direct {v0, p1}, Landroidx/core/view/SoftwareKeyboardControllerCompat;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->c:Landroidx/core/view/SoftwareKeyboardControllerCompat;

    return-void
.end method

.method public static final synthetic b(Landroidx/compose/ui/text/input/InputMethodManagerImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->a:Landroid/view/View;

    return-object p0
.end method

.method private final c()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->c()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->a:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void
.end method

.method public isActive()Z
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->c()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
