.class public final Lx/d;
.super Ljava/lang/Object;

# interfaces
.implements Lx/g;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lx/w;

.field private final c:Landroid/view/autofill/AutofillManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lx/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/d;->a:Landroid/view/View;

    iput-object p2, p0, Lx/d;->b:Lx/w;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lx/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lx/b;->a(Ljava/lang/Object;)Landroid/view/autofill/AutofillManager;

    move-result-object p2

    if-eqz p2, :cond_0

    iput-object p2, p0, Lx/d;->c:Landroid/view/autofill/AutofillManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lx/c;->a(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Autofill service could not be located."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Landroid/view/autofill/AutofillManager;
    .locals 1

    iget-object v0, p0, Lx/d;->c:Landroid/view/autofill/AutofillManager;

    return-object v0
.end method

.method public final b()Lx/w;
    .locals 1

    iget-object v0, p0, Lx/d;->b:Lx/w;

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lx/d;->a:Landroid/view/View;

    return-object v0
.end method
