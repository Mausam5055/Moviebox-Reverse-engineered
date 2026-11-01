.class public final Landroidx/compose/ui/focus/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/focus/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusPropertiesImpl;-><init>()V

    invoke-direct {p0, v0}, Landroidx/compose/ui/focus/h;-><init>(Landroidx/compose/ui/focus/k;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/focus/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/h;->a:Landroidx/compose/ui/focus/k;

    return-void
.end method
