.class public final Lab/k;
.super Lab/g;


# instance fields
.field private final a:Lab/g;

.field private final b:F


# direct methods
.method public constructor <init>(Lab/g;F)V
    .locals 0

    invoke-direct {p0}, Lab/g;-><init>()V

    iput-object p1, p0, Lab/k;->a:Lab/g;

    iput p2, p0, Lab/k;->b:F

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object v0, p0, Lab/k;->a:Lab/g;

    invoke-virtual {v0}, Lab/g;->a()Z

    move-result v0

    return v0
.end method

.method public b(FFFLab/p;)V
    .locals 2

    iget-object v0, p0, Lab/k;->a:Lab/g;

    iget v1, p0, Lab/k;->b:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lab/g;->b(FFFLab/p;)V

    return-void
.end method
