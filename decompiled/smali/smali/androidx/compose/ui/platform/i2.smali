.class public final Landroidx/compose/ui/platform/i2;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/platform/i2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/i2;

    invoke-direct {v0}, Landroidx/compose/ui/platform/i2;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/i2;->a:Landroidx/compose/ui/platform/i2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidateContentRect()V

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
