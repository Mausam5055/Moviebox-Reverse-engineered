.class final Lya/a$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lya/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Lab/i;

.field b:Z


# direct methods
.method public constructor <init>(Lab/i;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lya/a$b;->a:Lab/i;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lya/a$b;->b:Z

    return-void
.end method

.method public constructor <init>(Lya/a$b;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iget-object v0, p1, Lya/a$b;->a:Lab/i;

    invoke-virtual {v0}, Lab/i;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lab/i;

    iput-object v0, p0, Lya/a$b;->a:Lab/i;

    iget-boolean p1, p1, Lya/a$b;->b:Z

    iput-boolean p1, p0, Lya/a$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lya/a;
    .locals 3

    new-instance v0, Lya/a;

    new-instance v1, Lya/a$b;

    invoke-direct {v1, p0}, Lya/a$b;-><init>(Lya/a$b;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lya/a;-><init>(Lya/a$b;Lya/a$a;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lya/a$b;->a()Lya/a;

    move-result-object v0

    return-object v0
.end method
