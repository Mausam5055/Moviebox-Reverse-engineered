.class final Landroidx/compose/ui/text/platform/h;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field private final a:Landroidx/compose/ui/text/f;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/f;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/h;->a:Landroidx/compose/ui/text/f;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/text/platform/h;->a:Landroidx/compose/ui/text/f;

    invoke-virtual {p1}, Landroidx/compose/ui/text/f;->a()Landroidx/compose/ui/text/g;

    return-void
.end method
