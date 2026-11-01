.class public final Lx/v;
.super Landroid/view/autofill/AutofillManager$AutofillCallback;


# static fields
.field public static final a:Lx/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx/v;

    invoke-direct {v0}, Lx/v;-><init>()V

    sput-object v0, Lx/v;->a:Lx/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$AutofillCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lx/d;)V
    .locals 1

    invoke-virtual {p1}, Lx/d;->a()Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-static {p0}, Lx/s;->a(Ljava/lang/Object;)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object v0

    invoke-static {p1, v0}, Lx/u;->a(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$AutofillCallback;)V

    return-void
.end method

.method public final b(Lx/d;)V
    .locals 1

    invoke-virtual {p1}, Lx/d;->a()Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-static {p0}, Lx/s;->a(Ljava/lang/Object;)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object v0

    invoke-static {p1, v0}, Lx/t;->a(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$AutofillCallback;)V

    return-void
.end method

.method public onAutofillEvent(Landroid/view/View;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    return-void
.end method
