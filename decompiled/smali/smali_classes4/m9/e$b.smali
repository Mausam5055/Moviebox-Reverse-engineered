.class final Lm9/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lm9/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lm9/e;


# direct methods
.method private constructor <init>(Lm9/e;)V
    .locals 0

    iput-object p1, p0, Lm9/e$b;->a:Lm9/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lm9/e;Lm9/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lm9/e$b;-><init>(Lm9/e;)V

    return-void
.end method


# virtual methods
.method public a(IILg9/m;)V
    .locals 1

    iget-object v0, p0, Lm9/e$b;->a:Lm9/e;

    invoke-virtual {v0, p1, p2, p3}, Lm9/e;->k(IILg9/m;)V

    return-void
.end method

.method public endMasterElement(I)V
    .locals 1

    iget-object v0, p0, Lm9/e$b;->a:Lm9/e;

    invoke-virtual {v0, p1}, Lm9/e;->n(I)V

    return-void
.end method

.method public floatElement(ID)V
    .locals 1

    iget-object v0, p0, Lm9/e$b;->a:Lm9/e;

    invoke-virtual {v0, p1, p2, p3}, Lm9/e;->q(ID)V

    return-void
.end method

.method public getElementType(I)I
    .locals 1

    iget-object v0, p0, Lm9/e$b;->a:Lm9/e;

    invoke-virtual {v0, p1}, Lm9/e;->t(I)I

    move-result p1

    return p1
.end method

.method public integerElement(IJ)V
    .locals 1

    iget-object v0, p0, Lm9/e$b;->a:Lm9/e;

    invoke-virtual {v0, p1, p2, p3}, Lm9/e;->w(IJ)V

    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    iget-object v0, p0, Lm9/e$b;->a:Lm9/e;

    invoke-virtual {v0, p1}, Lm9/e;->y(I)Z

    move-result p1

    return p1
.end method

.method public startMasterElement(IJJ)V
    .locals 6

    iget-object v0, p0, Lm9/e$b;->a:Lm9/e;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lm9/e;->F(IJJ)V

    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lm9/e$b;->a:Lm9/e;

    invoke-virtual {v0, p1, p2}, Lm9/e;->G(ILjava/lang/String;)V

    return-void
.end method
