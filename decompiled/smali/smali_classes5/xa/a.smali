.class public final Lxa/a;
.super Lxa/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxa/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Typeface;

.field private final b:Lxa/a$a;

.field private c:Z


# direct methods
.method public constructor <init>(Lxa/a$a;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Lxa/f;-><init>()V

    iput-object p2, p0, Lxa/a;->a:Landroid/graphics/Typeface;

    iput-object p1, p0, Lxa/a;->b:Lxa/a$a;

    return-void
.end method

.method private d(Landroid/graphics/Typeface;)V
    .locals 1

    iget-boolean v0, p0, Lxa/a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lxa/a;->b:Lxa/a$a;

    invoke-interface {v0, p1}, Lxa/a$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p1, p0, Lxa/a;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Lxa/a;->d(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lxa/a;->d(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxa/a;->c:Z

    return-void
.end method
